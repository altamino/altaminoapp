package com.narvii.util.ws;

import a0.a;
import a0.b;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import c.f.b.e.q5;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiService;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* JADX INFO: loaded from: classes4.dex */
public class WsService {
    private static final int PING_INTERVAL = 60000;
    public static final int PING_SERVER_INTERVAL = 60000;
    public static final int REQUEST_TIMEOUT = 15000;
    public static final String TAG = "websocket";
    private static final String WEBSOCKET_URL = "wss://ws.altamino.top/";
    AccountService account;
    AuidService auidService;
    boolean connect;
    ConnectivityManager connectivityManager;
    final ContentLanguageService contentLanguageService;
    NVContext context;
    String cuid;
    int failCount;
    boolean keepAlive;
    final String lang;
    LocalBroadcastManager lbm;
    private ConnectivityManager.NetworkCallback networkCallback;
    OkHttpClient okhttp;
    long prevToastTime;
    boolean receiverRegistered;
    long reconnectAfter;
    String userAgent;
    public WebSocket ws;
    public boolean wsOpened;
    static final int[] RECONNECT_AFTER = {0, 1000, 2000, 5000, 10000};
    private static final Handler handler = new Handler(Looper.getMainLooper());
    public final EventDispatcher<WsListener> listeners = new EventDispatcher<>();
    final LinkedList<WsRequest> pendingRequests = new LinkedList<>();
    final LinkedList<WsRequest> runningRequests = new LinkedList<>();
    private BroadcastReceiver receiverAccount = new BroadcastReceiver() { // from class: com.narvii.util.ws.WsService.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                WsService.this.updateWs(false);
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.util.ws.WsService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_SID_CHANGED.equals(intent.getAction())) {
                WsService.this.updateWs(false);
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                WsService wsService = WsService.this;
                if (wsService.ws == null && wsService.hasConnectivity()) {
                    Log.i(WsService.TAG, "network connected..");
                    WsService wsService2 = WsService.this;
                    wsService2.failCount = 0;
                    wsService2.reconnectAfter = 200L;
                    wsService2.updateWs(false);
                }
            }
        }
    };
    private Runnable stopDelayed = new Runnable() { // from class: com.narvii.util.ws.WsService.4
        @Override // java.lang.Runnable
        public void run() {
            WsService.this.stop();
        }
    };
    final Runnable updateWs = new Runnable() { // from class: com.narvii.util.ws.WsService.5
        @Override // java.lang.Runnable
        public void run() {
            WsService.this.updateWs(false);
        }
    };
    final Runnable requestTimeout = new Runnable() { // from class: com.narvii.util.ws.WsService.7
        @Override // java.lang.Runnable
        public void run() {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<WsRequest> it = WsService.this.pendingRequests.iterator();
            ArrayList arrayList = null;
            while (it.hasNext()) {
                WsRequest next = it.next();
                if (jElapsedRealtime >= next.startTime + 15000) {
                    if (next.callback != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(next);
                    }
                    it.remove();
                }
            }
            Iterator<WsRequest> it2 = WsService.this.runningRequests.iterator();
            while (it2.hasNext()) {
                WsRequest next2 = it2.next();
                if (jElapsedRealtime >= next2.startTime + 15000) {
                    if (next2.callback != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(next2);
                    }
                    it2.remove();
                }
            }
            if (arrayList != null) {
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    ((WsRequest) it3.next()).callback.call(WsError.TIMEOUT);
                }
            }
        }
    };
    WebSocketListener wsListener = new AnonymousClass8();
    private boolean pingStarted = false;
    private final Runnable pingServerRunnable = new Runnable() { // from class: com.narvii.util.ws.WsService.12
        @Override // java.lang.Runnable
        public void run() {
            WsService.this.pingServer();
            Utils.handler.postDelayed(this, 60000L);
        }
    };

    /* JADX INFO: renamed from: com.narvii.util.ws.WsService$8, reason: invalid class name */
    class AnonymousClass8 extends WebSocketListener {
        private void postReconnect(final WebSocket webSocket, final boolean z6, final Throwable th, Response response) throws IOException {
            final String strString;
            ApiResponse apiResponse = null;
            if (response != null) {
                try {
                    strString = response.body().string();
                } catch (Exception unused) {
                    strString = null;
                }
            } else {
                strString = null;
            }
            if (strString != null && strString.startsWith("{")) {
                apiResponse = (ApiResponse) JacksonUtils.readAs(strString, ApiResponse.class);
            }
            final ApiResponse apiResponse2 = apiResponse;
            WsService.handler.post(new Runnable() { // from class: com.narvii.util.ws.WsService.8.3
                @Override // java.lang.Runnable
                public void run() {
                    String str;
                    if (AnonymousClass8.this.valid(webSocket)) {
                        if (z6) {
                            str = "fail: " + th;
                        } else {
                            str = "closed";
                        }
                        Log.i(WsService.TAG, str);
                        boolean z10 = false;
                        if (z6 && apiResponse2 != null) {
                            Log.w(WsService.TAG, "response: " + strString);
                            if (apiResponse2.statusCode == 105) {
                                z10 = true;
                            }
                        }
                        if (z6) {
                            WsService wsService = WsService.this;
                            wsService.fail(wsService.wsOpened ? WsError.CONNECTION_LOST : WsError.CONNECT_FAIL, z10);
                        }
                        WsService wsService2 = WsService.this;
                        if (wsService2.wsOpened) {
                            wsService2.dispatchOnDisconnect(th);
                        }
                        WsService.this.reconnect(z6, z10);
                        if (z10) {
                            Log.i(WsService.TAG, "105 re-login..");
                            WsService.this.account.relogin(new Callback<User>() { // from class: com.narvii.util.ws.WsService.8.3.1
                                @Override // com.narvii.util.Callback
                                public void call(User user) {
                                    if (user == null) {
                                        WsService.this.fail(WsError.CONNECT_FAIL, false);
                                        WsService.this.reconnectAfter = 0L;
                                    } else {
                                        WsService wsService3 = WsService.this;
                                        wsService3.reconnectAfter = 0L;
                                        wsService3.updateWs(wsService3.pendingRequests.size() > 0);
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }

        @Override // okhttp3.WebSocketListener
        public void onClosed(WebSocket webSocket, int i10, String str) throws IOException {
            postReconnect(webSocket, false, null, null);
        }

        @Override // okhttp3.WebSocketListener
        public void onFailure(WebSocket webSocket, Throwable th, Response response) throws IOException {
            postReconnect(webSocket, true, th, response);
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(final WebSocket webSocket, final String str) {
            WsService.handler.post(new Runnable() { // from class: com.narvii.util.ws.WsService.8.2
                @Override // java.lang.Runnable
                public void run() {
                    String strValueOf;
                    if (AnonymousClass8.this.valid(webSocket)) {
                        Log.i(WsService.TAG, "recv: " + str);
                        final WsMessage wsMessage = (WsMessage) JacksonUtils.readAs(str, WsMessage.class);
                        if (wsMessage == null) {
                            Log.w(WsService.TAG, "malformed message: " + str);
                            return;
                        }
                        ArrayList arrayList = null;
                        if (!TextUtils.isEmpty(wsMessage.id())) {
                            Iterator<WsRequest> it = WsService.this.runningRequests.iterator();
                            while (it.hasNext()) {
                                WsRequest next = it.next();
                                if (Utils.isEqualsNotNull(next.id(), wsMessage.id())) {
                                    if (next.callback != null) {
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(next);
                                    }
                                    it.remove();
                                }
                            }
                        }
                        if (wsMessage.type != 1) {
                            if (arrayList != null) {
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    ((WsRequest) it2.next()).callback.call(wsMessage);
                                }
                            }
                            WsService.this.listeners.dispatch(new Callback<WsListener>() { // from class: com.narvii.util.ws.WsService.8.2.1
                                @Override // com.narvii.util.Callback
                                public void call(WsListener wsListener) {
                                    wsListener.onWsMessage(WsService.this, wsMessage);
                                }
                            });
                            return;
                        }
                        WsError wsError = new WsError(JacksonUtils.nodeInt(wsMessage.object, "code"), JacksonUtils.nodeString(wsMessage.object, AccountNotice.LEVEL_MESSAGE));
                        if (arrayList != null) {
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                ((WsRequest) it3.next()).callback.call(wsError);
                            }
                        }
                        WsService.this.dispatchWsError(wsError);
                        if (TextUtils.isEmpty(JacksonUtils.nodeString(wsMessage.object, "id"))) {
                            if (NVApplication.DEBUG) {
                                strValueOf = wsError.code() + ": " + wsError.message();
                            } else {
                                strValueOf = String.valueOf(wsError);
                            }
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            WsService wsService = WsService.this;
                            if (jUptimeMillis > wsService.prevToastTime + 5000) {
                                NVToast.makeText(wsService.context.getContext(), strValueOf, 0).show();
                                WsService.this.prevToastTime = jUptimeMillis;
                            }
                        }
                    }
                }
            });
        }

        AnonymousClass8() {
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(WebSocket webSocket, ByteString byteString) {
            if (valid(webSocket)) {
                Log.i(WsService.TAG, "recv: <" + byteString.size() + " bytes>");
            }
        }

        boolean valid(WebSocket webSocket) {
            return webSocket == WsService.this.ws;
        }

        @Override // okhttp3.WebSocketListener
        public void onClosing(WebSocket webSocket, int i10, String str) {
            if (valid(webSocket)) {
                Log.i(WsService.TAG, "closing");
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onOpen(final WebSocket webSocket, final Response response) {
            WsService.handler.post(new Runnable() { // from class: com.narvii.util.ws.WsService.8.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass8.this.valid(webSocket)) {
                        Log.i(WsService.TAG, "opened");
                        WsService wsService = WsService.this;
                        wsService.failCount = 0;
                        wsService.reconnectAfter = 0L;
                        wsService.wsOpened = true;
                        while (!WsService.this.pendingRequests.isEmpty() && AnonymousClass8.this.valid(webSocket)) {
                            WsService wsService2 = WsService.this;
                            if (!wsService2.wsOpened) {
                                break;
                            }
                            WsService.this.sendRequest(wsService2.pendingRequests.removeFirst());
                        }
                        WsService.this.onWsOpen(response);
                        WsService.this.dispatchOnConnect();
                    }
                }
            });
        }
    }

    public interface WsListener {
        void onConnect(WsService wsService);

        void onDisconnect(WsService wsService, Throwable th);

        void onWsError(WsService wsService, WsError wsError);

        void onWsMessage(WsService wsService, WsMessage wsMessage);
    }

    private void stopPingServer() {
        this.pingStarted = false;
        Utils.handler.removeCallbacks(this.pingServerRunnable);
    }

    void fail(WsError wsError, boolean z6) {
        ArrayList arrayList = null;
        int i10 = 0;
        while (!z6 && !this.pendingRequests.isEmpty()) {
            WsRequest wsRequestRemoveFirst = this.pendingRequests.removeFirst();
            if (wsRequestRemoveFirst.callback != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(wsRequestRemoveFirst);
            }
            if (isCriticalRequest(wsRequestRemoveFirst)) {
                i10++;
            }
        }
        int i11 = 0;
        while (!this.runningRequests.isEmpty()) {
            WsRequest wsRequestRemoveFirst2 = this.runningRequests.removeFirst();
            if (wsRequestRemoveFirst2.callback != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(wsRequestRemoveFirst2);
            }
            if (isCriticalRequest(wsRequestRemoveFirst2)) {
                i11++;
            }
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((WsRequest) it.next()).callback.call(wsError);
            }
        }
        dispatchWsError(wsError);
        if (i10 > 0 || i11 > 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (jUptimeMillis > this.prevToastTime + ((long) (i11 > 0 ? 8000 : 15000))) {
                NVToast.makeText(this.context.getContext(), wsError.message(), 0).show();
                this.prevToastTime = jUptimeMillis;
            }
        }
    }

    protected String getWsUrl() {
        return WEBSOCKET_URL;
    }

    public boolean isConnected() {
        return this.ws != null && this.wsOpened;
    }

    public boolean isKeepAlive() {
        return this.keepAlive;
    }

    protected void onWsOpen(Response response) {
    }

    void reconnect(boolean z6, boolean z10) {
        this.ws = null;
        this.wsOpened = false;
        if (z6) {
            this.failCount++;
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (z10) {
                int[] iArr = RECONNECT_AFTER;
                this.reconnectAfter = jUptimeMillis + ((long) iArr[iArr.length - 1]);
            } else {
                int[] iArr2 = RECONNECT_AFTER;
                this.reconnectAfter = jUptimeMillis + ((long) iArr2[Math.min(iArr2.length - 1, this.failCount)]);
            }
        }
        updateWs(false);
    }

    public void stop() {
        this.connect = false;
        this.lbm.f(this.receiverAccount);
        setBroadcastRegister(false);
        updateWs(false);
    }

    private void beginPingServer() {
        if (this.pingStarted) {
            return;
        }
        this.pingStarted = true;
        pingServer();
        Utils.handler.removeCallbacks(this.pingServerRunnable);
        Utils.postDelayed(this.pingServerRunnable, 60000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchWsError(final WsError wsError) {
        if (wsError == WsError.CONNECTION_LOST) {
            stopPingServer();
        }
        this.listeners.dispatch(new Callback<WsListener>() { // from class: com.narvii.util.ws.WsService.11
            @Override // com.narvii.util.Callback
            public void call(WsListener wsListener) {
                wsListener.onWsError(WsService.this, wsError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasConnectivity() {
        try {
            return this.connectivityManager.getActiveNetworkInfo().isConnected();
        } catch (Exception unused) {
            return true;
        }
    }

    private void setBroadcastRegister(boolean z6) {
        if (z6 != this.receiverRegistered) {
            if (z6) {
                this.lbm.c(this.receiver, new IntentFilter(AccountService.ACTION_SID_CHANGED));
                if (this.networkCallback == null) {
                    this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.narvii.util.ws.WsService.3
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onAvailable(Network network) {
                            Utils.post(new Runnable() { // from class: com.narvii.util.ws.WsService.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (WsService.this.ws == null) {
                                        Log.i(WsService.TAG, "network connected..");
                                        WsService wsService = WsService.this;
                                        wsService.failCount = 0;
                                        wsService.reconnectAfter = 200L;
                                        wsService.updateWs(false);
                                    }
                                }
                            });
                        }
                    };
                }
                this.connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build(), this.networkCallback);
            } else {
                this.lbm.f(this.receiver);
                ConnectivityManager.NetworkCallback networkCallback = this.networkCallback;
                if (networkCallback != null) {
                    this.connectivityManager.unregisterNetworkCallback(networkCallback);
                }
            }
            this.receiverRegistered = z6;
        }
    }

    public int getConnectStatus() {
        if (this.ws == null) {
            return (int) Math.min(SystemClock.uptimeMillis() - this.reconnectAfter, 0L);
        }
        return this.wsOpened ? 2 : 1;
    }

    boolean isCriticalRequest(WsRequest wsRequest) {
        int i10 = wsRequest.type;
        return i10 == 100 || i10 == 103 || i10 == 105 || i10 == 108 || i10 == 112 || i10 == 126 || i10 == 200;
    }

    protected void pingServer() {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 116;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("threadChannelUserInfoList", JacksonUtils.createArrayNode());
        wsRequest.object = objectNodeCreateObjectNode;
        sendRequest(wsRequest);
    }

    public void sendRequestDirectly(WsRequest wsRequest) {
        WebSocket webSocket = this.ws;
        if (webSocket == null || !this.wsOpened) {
            return;
        }
        webSocket.send(JacksonUtils.writeAsString(wsRequest));
    }

    public void setKeepAlive(boolean z6) {
        this.keepAlive = z6;
        updateWs(false);
    }

    public void start() {
        handler.removeCallbacks(this.stopDelayed);
        this.connect = true;
        this.failCount = 0;
        this.reconnectAfter = 0L;
        updateWs(false);
        this.lbm.c(this.receiverAccount, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stopAfter(int i10) {
        Handler handler2 = handler;
        handler2.removeCallbacks(this.stopDelayed);
        handler2.postDelayed(this.stopDelayed, i10);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:37:0x0114  */
    /* JADX WARN: Code duplicated, block: B:38:0x012d  */
    /* JADX WARN: Code duplicated, block: B:40:0x016c  */
    /* JADX WARN: Code duplicated, block: B:43:0x017d  */
    /* JADX WARN: Code duplicated, block: B:46:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:50:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:52:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:55:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:58:0x01df  */
    /* JADX WARN: Code duplicated, block: B:60:0x01f3  */
    /* JADX WARN: Instruction removed from duplicated block: B:33:0x00c5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x00f2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x0114, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x012d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x01b8, please report this as an issue */
    boolean updateWs(boolean z6) {
        String wsUrl;
        String strK;
        String strF;
        String string;
        Request.Builder builderHeader;
        AuidService auidService;
        ContentLanguageService contentLanguageService;
        String str;
        String auid;
        String str2;
        String userId = this.account.getUserId();
        boolean z10 = z6 || this.connect || this.keepAlive;
        WebSocket webSocket = this.ws;
        if (webSocket != null) {
            boolean z11 = this.wsOpened;
            if (!z10) {
                webSocket.close(1000, null);
                this.ws = null;
                this.wsOpened = false;
                Log.i(TAG, "disconnect " + this.cuid);
            } else if (!Utils.isEquals(this.cuid, userId)) {
                this.ws.close(1000, null);
                this.ws = null;
                this.wsOpened = false;
                this.failCount = 0;
                this.reconnectAfter = 0L;
                Log.i(TAG, "reconnect " + this.cuid + "->" + userId);
            }
            if (this.ws == null && z11) {
                dispatchOnDisconnect(null);
            }
        }
        this.cuid = userId;
        if (this.ws == null && z10) {
            Handler handler2 = handler;
            handler2.removeCallbacks(this.updateWs);
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (!z6) {
                long j6 = this.reconnectAfter;
                if (jUptimeMillis < j6) {
                    handler2.postDelayed(this.updateWs, j6 - jUptimeMillis);
                    Log.i(TAG, "reconnect in " + (this.reconnectAfter - jUptimeMillis) + "ms");
                } else if (b.q()) {
                    wsUrl = getWsUrl();
                    Log.i(TAG, "connecting " + userId + " [" + wsUrl + "]");
                    strK = b.k();
                    if (NVApplication.FPR == null) {
                        str2 = strK + "|" + System.currentTimeMillis();
                        if (wsUrl.indexOf(63) == -1) {
                            wsUrl = wsUrl + "?signbody=" + URLEncoder.encode(str2);
                        } else {
                            wsUrl = wsUrl + "&signbody=" + URLEncoder.encode(str2);
                        }
                        strF = q5.f(str2.getBytes(Utils.UTF_8), this.context.getContext().getString(R.string.rsc), Integer.parseInt(this.context.getContext().getString(R.string.rsv)));
                    } else {
                        strF = null;
                    }
                    string = this.account.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
                    if (this.userAgent == null) {
                        this.userAgent = ApiService.userAgent(this.context);
                    }
                    builderHeader = new Request.Builder().url(wsUrl).header("User-Agent", this.userAgent).header(a.l, strK);
                    auidService = this.auidService;
                    if (auidService != null) {
                        auid = auidService.getAuid();
                        if (!TextUtils.isEmpty(auid)) {
                            builderHeader.header("AUID", auid);
                        }
                    }
                    if (strF != null) {
                        builderHeader.header(a.f29j, strF);
                    }
                    if (string != null) {
                        builderHeader.header("NDCAUTH", "sid=" + string);
                    }
                    contentLanguageService = this.contentLanguageService;
                    if (contentLanguageService != null) {
                        builderHeader.header("NDCLANG", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
                    }
                    str = this.lang;
                    if (str != null) {
                        builderHeader.header("Accept-Language", str);
                    }
                    this.ws = this.okhttp.newWebSocket(builderHeader.build(), this.wsListener);
                } else {
                    Log.i(TAG, "dci not ready, reconnect later");
                    handler2.postDelayed(this.updateWs, 200L);
                }
            } else if (b.q()) {
                wsUrl = getWsUrl();
                Log.i(TAG, "connecting " + userId + " [" + wsUrl + "]");
                strK = b.k();
                if (NVApplication.FPR == null) {
                    str2 = strK + "|" + System.currentTimeMillis();
                    if (wsUrl.indexOf(63) == -1) {
                        wsUrl = wsUrl + "?signbody=" + URLEncoder.encode(str2);
                    } else {
                        wsUrl = wsUrl + "&signbody=" + URLEncoder.encode(str2);
                    }
                    strF = q5.f(str2.getBytes(Utils.UTF_8), this.context.getContext().getString(R.string.rsc), Integer.parseInt(this.context.getContext().getString(R.string.rsv)));
                } else {
                    strF = null;
                }
                string = this.account.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
                if (this.userAgent == null) {
                    this.userAgent = ApiService.userAgent(this.context);
                }
                builderHeader = new Request.Builder().url(wsUrl).header("User-Agent", this.userAgent).header(a.l, strK);
                auidService = this.auidService;
                if (auidService != null) {
                    auid = auidService.getAuid();
                    if (!TextUtils.isEmpty(auid)) {
                        builderHeader.header("AUID", auid);
                    }
                }
                if (strF != null) {
                    builderHeader.header(a.f29j, strF);
                }
                if (string != null) {
                    builderHeader.header("NDCAUTH", "sid=" + string);
                }
                contentLanguageService = this.contentLanguageService;
                if (contentLanguageService != null) {
                    builderHeader.header("NDCLANG", contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
                }
                str = this.lang;
                if (str != null) {
                    builderHeader.header("Accept-Language", str);
                }
                this.ws = this.okhttp.newWebSocket(builderHeader.build(), this.wsListener);
            } else {
                Log.i(TAG, "dci not ready, reconnect later");
                handler2.postDelayed(this.updateWs, 200L);
            }
        }
        setBroadcastRegister(z10);
        return this.ws != null;
    }

    public WsService(NVContext nVContext) {
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.auidService = (AuidService) nVContext.getService("auid");
        this.contentLanguageService = (ContentLanguageService) nVContext.getService("content_language");
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
        this.connectivityManager = (ConnectivityManager) nVContext.getContext().getSystemService("connectivity");
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (!TextUtils.isEmpty(language)) {
            String country = locale.getCountry();
            if (!TextUtils.isEmpty(country)) {
                language = language + "-" + country;
            }
            this.lang = language;
        } else {
            this.lang = null;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.okhttp = builder.connectTimeout(15L, timeUnit).readTimeout(8L, timeUnit).writeTimeout(8L, timeUnit).pingInterval(60000L, TimeUnit.MILLISECONDS).retryOnConnectionFailure(false).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnConnect() {
        beginPingServer();
        this.listeners.dispatch(new Callback<WsListener>() { // from class: com.narvii.util.ws.WsService.9
            @Override // com.narvii.util.Callback
            public void call(WsListener wsListener) {
                wsListener.onConnect(WsService.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchOnDisconnect(final Throwable th) {
        stopPingServer();
        this.listeners.dispatch(new Callback<WsListener>() { // from class: com.narvii.util.ws.WsService.10
            @Override // com.narvii.util.Callback
            public void call(WsListener wsListener) {
                wsListener.onDisconnect(WsService.this, th);
            }
        });
    }

    public void sendRequest(final WsRequest wsRequest) {
        Looper looperMyLooper = Looper.myLooper();
        Handler handler2 = handler;
        if (looperMyLooper != handler2.getLooper()) {
            Log.e("WsService.sendRequest() should call on main thread");
            handler2.post(new Runnable() { // from class: com.narvii.util.ws.WsService.6
                @Override // java.lang.Runnable
                public void run() {
                    WsService.this.sendRequest(wsRequest);
                }
            });
            return;
        }
        if (wsRequest.startTime == 0) {
            wsRequest.startTime = SystemClock.elapsedRealtime();
            handler2.postDelayed(this.requestTimeout, 15000L);
        }
        if (this.ws != null && this.wsOpened) {
            wsRequest.genId();
            Log.i(TAG, "send: " + wsRequest);
            this.ws.send(JacksonUtils.writeAsString(wsRequest));
            this.runningRequests.addLast(wsRequest);
            return;
        }
        this.pendingRequests.addLast(wsRequest);
        if (!updateWs(true)) {
            Callback callback = wsRequest.callback;
            if (callback != null) {
                callback.call(WsError.NO_CONNECTION);
            }
            this.pendingRequests.remove(wsRequest);
        }
    }
}

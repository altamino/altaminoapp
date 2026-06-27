package com.narvii.util.ws;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.deviceid.DeviceIDService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* loaded from: classes.dex */
public class WsService {
    private static final int PING_INTERVAL = 60000;
    public static final int PING_SERVER_INTERVAL = 60000;
    static final int[] RECONNECT_AFTER;
    public static final int REQUEST_TIMEOUT = 15000;
    private static int SERVER_INDEX = 0;
    private static final int[] SERVER_SHUFFLE_LIST;
    public static final String TAG = "websocket";
    private static final Handler handler;
    AccountService account;
    AuidService auidService;
    boolean connect;
    ConnectivityManager connectivityManager;
    final ContentLanguageService contentLanguageService;
    NVContext context;
    String cuid;
    DeviceIDService deviceId;
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
                if (jElapsedRealtime >= next.startTime + ScenePollPlayView.POLL_COUNT_DOWN_MS) {
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
                if (jElapsedRealtime >= next2.startTime + ScenePollPlayView.POLL_COUNT_DOWN_MS) {
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
            Utils.handler.postDelayed(this, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
    };

    public interface WsListener {
        void onConnect(WsService wsService);

        void onDisconnect(WsService wsService, Throwable th);

        void onWsError(WsService wsService, WsError wsError);

        void onWsMessage(WsService wsService, WsMessage wsMessage);
    }

    protected String getWsHostPrefix() {
        return "ws";
    }

    protected void onWsOpen(Response response) {
    }

    static {
        ArrayList arrayList = new ArrayList(4);
        int i = 0;
        while (i < 4) {
            i++;
            arrayList.add(Integer.valueOf(i));
        }
        Collections.shuffle(arrayList);
        SERVER_SHUFFLE_LIST = new int[4];
        for (int i2 = 0; i2 < 4; i2++) {
            SERVER_SHUFFLE_LIST[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        RECONNECT_AFTER = new int[]{0, 1000, 2000, 5000, 10000};
        handler = new Handler(Looper.getMainLooper());
    }

    public WsService(NVContext nVContext) {
        this.context = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.auidService = (AuidService) nVContext.getService("auid");
        this.deviceId = (DeviceIDService) nVContext.getService("deviceid");
        this.contentLanguageService = (ContentLanguageService) nVContext.getService("content_language");
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
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
        this.okhttp = new OkHttpClient.Builder().connectTimeout(15L, TimeUnit.SECONDS).readTimeout(8L, TimeUnit.SECONDS).writeTimeout(8L, TimeUnit.SECONDS).pingInterval(DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS, TimeUnit.MILLISECONDS).retryOnConnectionFailure(false).build();
    }

    protected String getWsUrl() {
        String host = ((ConfigService) this.context.getService("config")).getHost();
        String str = "wss://" + getWsHostPrefix() + SERVER_SHUFFLE_LIST[SERVER_INDEX] + host + "/";
        SERVER_INDEX = (SERVER_INDEX + 1) % SERVER_SHUFFLE_LIST.length;
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasConnectivity() {
        try {
            return this.connectivityManager.getActiveNetworkInfo().isConnected();
        } catch (Exception unused) {
            return true;
        }
    }

    private void setBroadcastRegister(boolean z) {
        ConnectivityManager.NetworkCallback networkCallback;
        if (z != this.receiverRegistered) {
            if (z) {
                this.lbm.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_SID_CHANGED));
                if (Build.VERSION.SDK_INT < 21) {
                    this.context.getContext().getApplicationContext().registerReceiver(this.receiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                } else {
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
                }
            } else {
                this.lbm.unregisterReceiver(this.receiver);
                if (Build.VERSION.SDK_INT >= 21 && (networkCallback = this.networkCallback) != null) {
                    this.connectivityManager.unregisterNetworkCallback(networkCallback);
                }
            }
            this.receiverRegistered = z;
        }
    }

    public void start() {
        handler.removeCallbacks(this.stopDelayed);
        this.connect = true;
        this.failCount = 0;
        this.reconnectAfter = 0L;
        updateWs(false);
        this.lbm.registerReceiver(this.receiverAccount, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        this.connect = false;
        this.lbm.unregisterReceiver(this.receiverAccount);
        setBroadcastRegister(false);
        updateWs(false);
    }

    public void stopAfter(int i) {
        handler.removeCallbacks(this.stopDelayed);
        handler.postDelayed(this.stopDelayed, i);
    }

    public boolean isKeepAlive() {
        return this.keepAlive;
    }

    public void setKeepAlive(boolean z) {
        this.keepAlive = z;
        updateWs(false);
    }

    public boolean isConnected() {
        return this.ws != null && this.wsOpened;
    }

    public int getConnectStatus() {
        if (this.ws == null) {
            return (int) Math.min(SystemClock.uptimeMillis() - this.reconnectAfter, 0L);
        }
        return this.wsOpened ? 2 : 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean updateWs(boolean r12) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.ws.WsService.updateWs(boolean):boolean");
    }

    public void sendRequest(final WsRequest wsRequest) {
        if (Looper.myLooper() != handler.getLooper()) {
            Log.e("WsService.sendRequest() should call on main thread");
            handler.post(new Runnable() { // from class: com.narvii.util.ws.WsService.6
                @Override // java.lang.Runnable
                public void run() {
                    WsService.this.sendRequest(wsRequest);
                }
            });
            return;
        }
        if (wsRequest.startTime == 0) {
            wsRequest.startTime = SystemClock.elapsedRealtime();
            handler.postDelayed(this.requestTimeout, ScenePollPlayView.POLL_COUNT_DOWN_MS);
        }
        if (this.ws != null && this.wsOpened) {
            wsRequest.genId();
            Log.i(TAG, "send: " + wsRequest);
            this.ws.send(JacksonUtils.writeAsString(wsRequest));
            this.runningRequests.addLast(wsRequest);
            return;
        }
        this.pendingRequests.addLast(wsRequest);
        if (updateWs(true)) {
            return;
        }
        Callback callback = wsRequest.callback;
        if (callback != null) {
            callback.call(WsError.NO_CONNECTION);
        }
        this.pendingRequests.remove(wsRequest);
    }

    public void sendRequestDirectly(WsRequest wsRequest) {
        WebSocket webSocket = this.ws;
        if (webSocket == null || !this.wsOpened) {
            return;
        }
        webSocket.send(JacksonUtils.writeAsString(wsRequest));
    }

    /* renamed from: com.narvii.util.ws.WsService$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 extends WebSocketListener {
        AnonymousClass8() {
        }

        boolean valid(WebSocket webSocket) {
            return webSocket == WsService.this.ws;
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
                        if (wsMessage.type == 1) {
                            WsError wsError = new WsError(JacksonUtils.nodeInt(wsMessage.object, "code"), JacksonUtils.nodeString(wsMessage.object, AccountNotice.LEVEL_MESSAGE));
                            if (arrayList != null) {
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    ((WsRequest) it2.next()).callback.call(wsError);
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
                                if (jUptimeMillis > wsService.prevToastTime + DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                                    NVToast.makeText(wsService.context.getContext(), strValueOf, 0).show();
                                    WsService.this.prevToastTime = jUptimeMillis;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        if (arrayList != null) {
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                ((WsRequest) it3.next()).callback.call(wsMessage);
                            }
                        }
                        WsService.this.listeners.dispatch(new Callback<WsListener>() { // from class: com.narvii.util.ws.WsService.8.2.1
                            @Override // com.narvii.util.Callback
                            public void call(WsListener wsListener) {
                                wsListener.onWsMessage(WsService.this, wsMessage);
                            }
                        });
                    }
                }
            });
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(WebSocket webSocket, ByteString byteString) {
            if (valid(webSocket)) {
                Log.i(WsService.TAG, "recv: <" + byteString.size() + " bytes>");
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosing(WebSocket webSocket, int i, String str) {
            if (valid(webSocket)) {
                Log.i(WsService.TAG, "closing");
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosed(WebSocket webSocket, int i, String str) throws IOException {
            postReconnect(webSocket, false, null, null);
        }

        @Override // okhttp3.WebSocketListener
        public void onFailure(WebSocket webSocket, Throwable th, Response response) throws IOException {
            postReconnect(webSocket, true, th, response);
        }

        private void postReconnect(final WebSocket webSocket, final boolean z, final Throwable th, Response response) throws IOException {
            final String strString;
            ApiResponse apiResponse = null;
            if (response != null) {
                try {
                    strString = response.body().string();
                } catch (Exception unused) {
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
                        if (z) {
                            str = "fail: " + th;
                        } else {
                            str = "closed";
                        }
                        Log.i(WsService.TAG, str);
                        boolean z2 = false;
                        if (z && apiResponse2 != null) {
                            Log.w(WsService.TAG, "response: " + strString);
                            if (apiResponse2.statusCode == 105) {
                                z2 = true;
                            }
                        }
                        if (z) {
                            WsService wsService = WsService.this;
                            wsService.fail(wsService.wsOpened ? WsError.CONNECTION_LOST : WsError.CONNECT_FAIL, z2);
                        }
                        WsService wsService2 = WsService.this;
                        if (wsService2.wsOpened) {
                            wsService2.dispatchOnDisconnect(th);
                        }
                        WsService.this.reconnect(z, z2);
                        if (z2) {
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
    }

    boolean isCriticalRequest(WsRequest wsRequest) {
        int i = wsRequest.type;
        return i == 100 || i == 103 || i == 105 || i == 108 || i == 112 || i == 126 || i == 200;
    }

    void fail(WsError wsError, boolean z) {
        ArrayList arrayList = null;
        int i = 0;
        while (!z && !this.pendingRequests.isEmpty()) {
            WsRequest wsRequestRemoveFirst = this.pendingRequests.removeFirst();
            if (wsRequestRemoveFirst.callback != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(wsRequestRemoveFirst);
            }
            if (isCriticalRequest(wsRequestRemoveFirst)) {
                i++;
            }
        }
        int i2 = 0;
        while (!this.runningRequests.isEmpty()) {
            WsRequest wsRequestRemoveFirst2 = this.runningRequests.removeFirst();
            if (wsRequestRemoveFirst2.callback != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(wsRequestRemoveFirst2);
            }
            if (isCriticalRequest(wsRequestRemoveFirst2)) {
                i2++;
            }
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((WsRequest) it.next()).callback.call(wsError);
            }
        }
        dispatchWsError(wsError);
        if (i > 0 || i2 > 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (jUptimeMillis > this.prevToastTime + (i2 > 0 ? 8000 : 15000)) {
                NVToast.makeText(this.context.getContext(), wsError.message(), 0).show();
                this.prevToastTime = jUptimeMillis;
            }
        }
    }

    void reconnect(boolean z, boolean z2) {
        this.ws = null;
        this.wsOpened = false;
        if (z) {
            this.failCount++;
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (z2) {
                int[] iArr = RECONNECT_AFTER;
                this.reconnectAfter = jUptimeMillis + iArr[iArr.length - 1];
            } else {
                int[] iArr2 = RECONNECT_AFTER;
                this.reconnectAfter = jUptimeMillis + iArr2[Math.min(iArr2.length - 1, this.failCount)];
            }
        }
        updateWs(false);
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

    private void beginPingServer() {
        if (this.pingStarted) {
            return;
        }
        this.pingStarted = true;
        pingServer();
        Utils.handler.removeCallbacks(this.pingServerRunnable);
        Utils.postDelayed(this.pingServerRunnable, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    private void stopPingServer() {
        this.pingStarted = false;
        Utils.handler.removeCallbacks(this.pingServerRunnable);
    }

    protected void pingServer() {
        WsRequest wsRequest = new WsRequest();
        wsRequest.type = 116;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("threadChannelUserInfoList", JacksonUtils.createArrayNode());
        wsRequest.object = objectNodeCreateObjectNode;
        sendRequest(wsRequest);
    }
}

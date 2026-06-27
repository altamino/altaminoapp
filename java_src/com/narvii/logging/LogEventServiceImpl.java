package com.narvii.logging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.support.v4.content.LocalBroadcastManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.CodeVerifyFragment;
import com.narvii.app.NVContext;
import com.narvii.logging.service.LogEventService;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.ws.LogWsService;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.HashMap;
import java.util.LinkedList;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LogEventServiceImpl implements LogEventService, WsService.WsListener {
    private static final int LOGGING_BUFFER = 50;
    private static final String TAG_LOG_WARNING = "logWarning";
    private static int logCounter;
    String globalStrategyInfo;
    long lastGetOperatorTime;
    NetworkInfo networkInfo;
    NVContext nvContext;
    String operatorName;
    SharedPreferences prefs;
    String pushTackId;
    LogWsService ws;
    private static final StringBuilder logBuf = new StringBuilder(4096);
    private static final String[] logArgs = new String[9];
    private static final int[] logColWidth = {2, 32, 32, 20, 28, 12, 46, 46, 46};
    private static final String[] logColNames = {"★", "page", "area", "actType", "actSemantic", ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, "extraInfo", "strategyInfo", "pageRefererInfo"};
    private final LinkedList<ObjectNode> loggingList = new LinkedList<>();
    HashMap<String, Integer> amplitudePerSessions = new HashMap<>();
    BroadcastReceiver accountReceiver = new BroadcastReceiver() { // from class: com.narvii.logging.LogEventServiceImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (LogEventServiceImpl.this.loggingList) {
                LogEventServiceImpl.this.loggingList.clear();
            }
        }
    };

    protected JSONObject getAbTestConfigJsonObject() {
        return null;
    }

    @Override // com.narvii.logging.service.LogEventService
    /* renamed from: logEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$logEvent$0$LogEventServiceImpl(LogEvent logEvent) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
    }

    protected void sendThirdPartyLog(NVContext nVContext, LogEvent logEvent, JSONObject jSONObject) {
    }

    public void setPushTackId(String str) {
        this.pushTackId = str;
    }

    public void setGlobalStrategyInfo(String str) {
        this.globalStrategyInfo = str;
    }

    public LogEventServiceImpl(NVContext nVContext) {
        this.ws = (LogWsService) nVContext.getService("logWs");
        this.prefs = (SharedPreferences) nVContext.getService("prefs");
        this.nvContext = nVContext;
        this.ws.listeners.addListener(this);
        getNetworkOperatorName();
        getActiveNetworkInfo();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        nVContext.getContext().registerReceiver(new BroadcastReceiver() { // from class: com.narvii.logging.LogEventServiceImpl.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                LogEventServiceImpl.this.getActiveNetworkInfo();
            }
        }, intentFilter);
        LocalBroadcastManager.getInstance(nVContext.getContext()).registerReceiver(this.accountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    private void putStringIfNotNull(ObjectNode objectNode, String str, String str2) {
        if (str2 != null) {
            objectNode.put(str, str2);
        }
    }

    private void addRootObjectNodeIfNotEmpty(ObjectNode objectNode, String str, ObjectNode objectNode2) {
        if (objectNode2 == null || objectNode2.size() <= 0) {
            return;
        }
        objectNode.put(str, objectNode2);
    }

    private void addRootObject(ObjectNode objectNode, String str, Object obj) {
        if (obj != null) {
            objectNode.put(str, JacksonUtils.DEFAULT_MAPPER.valueToTree(obj));
        }
    }

    private ObjectNode newObjectNode() {
        return JacksonUtils.createObjectNode();
    }

    private String uniqueKey(LogEvent logEvent) {
        if (logEvent == null) {
            return null;
        }
        return TextUtils.join("|", new String[]{logEvent.eventPage, logEvent.eventArea, logEvent.actType, logEvent.actSemantic});
    }

    private static void formatTable(StringBuilder sb, String[] strArr, int[] iArr, char c) {
        int length = strArr.length;
        int length2 = 0;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            int i3 = iArr[i2];
            if (str != null) {
                sb.append(str);
                sb.append(c);
                length2 += str.length() + 1;
            }
            i += i3;
            while (length2 < i) {
                sb.append(c);
                length2++;
            }
        }
    }

    private void getNetworkOperatorName() {
        this.lastGetOperatorTime = SystemClock.elapsedRealtime();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.nvContext.getContext().getSystemService(CodeVerifyFragment.KEY_PHONE);
            this.operatorName = telephonyManager.getNetworkOperatorName();
            if (this.operatorName == null) {
                this.operatorName = telephonyManager.getSimOperatorName();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void getActiveNetworkInfo() {
        try {
            this.networkInfo = ((ConnectivityManager) this.nvContext.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
        }
    }

    int flushLoggingEvents() {
        int i;
        JsonNode jsonNode;
        LogWsService logWsService = this.ws;
        if (logWsService == null || !logWsService.isConnected()) {
            return 0;
        }
        synchronized (this.loggingList) {
            int i2 = 0;
            i = 0;
            while (!this.loggingList.isEmpty()) {
                try {
                    ObjectNode objectNodeRemoveFirst = this.loggingList.removeFirst();
                    if (objectNodeRemoveFirst != null) {
                        i2++;
                        JsonNode jsonNode2 = objectNodeRemoveFirst.get("EventBasicInfo");
                        if (jsonNode2 != null && (jsonNode = jsonNode2.get("eventTime")) != null && jsonNode.isIntegralNumber() && jsonNode.longValue() < 0) {
                            long syncTimeDiff = (-jsonNode.longValue()) + this.ws.getSyncTimeDiff();
                            if (syncTimeDiff < 0) {
                                syncTimeDiff = System.currentTimeMillis();
                            }
                            if (jsonNode2 instanceof ObjectNode) {
                                ((ObjectNode) jsonNode2).put("eventTime", syncTimeDiff);
                            }
                        }
                        if (!this.prefs.getBoolean("viInfoSent", false)) {
                            String strNodeString = JacksonUtils.nodeString(objectNodeRemoveFirst, "EventInfo", "actType");
                            String strNodeString2 = JacksonUtils.nodeString(objectNodeRemoveFirst, "EventInfo", "actSemantic");
                            if (ActType.auto.toString().equals(strNodeString) && ActSemantic.at.toString().equals(strNodeString2)) {
                                this.prefs.edit().putBoolean("viInfoSent", true).apply();
                            }
                        }
                        WsRequest wsRequest = new WsRequest();
                        wsRequest.type = 20;
                        wsRequest.object = objectNodeRemoveFirst;
                        this.ws.sendRequestDirectly(wsRequest);
                        i++;
                    }
                } catch (Exception e) {
                    Log.w("logEvent", "logging fail " + i2 + "/" + (i2 + this.loggingList.size()), e);
                }
            }
        }
        return i;
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        flushLoggingEvents();
    }
}

package com.narvii.logging;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Looper;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.sessions.settings.c;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.CommunityObjectInGlobal;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ws.LogWsService;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes10.dex */
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
    BroadcastReceiver accountReceiver = new BroadcastReceiver() { // from class: com.narvii.logging.LogEventServiceImpl.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (LogEventServiceImpl.this.loggingList) {
                LogEventServiceImpl.this.loggingList.clear();
            }
        }
    };

    private static void formatTable(StringBuilder sb, String[] strArr, int[] iArr, char c7) {
        int length = strArr.length;
        int length2 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            String str = strArr[i11];
            int i12 = iArr[i11];
            if (str != null) {
                sb.append(str);
                sb.append(c7);
                length2 += str.length() + 1;
            }
            i10 += i12;
            while (length2 < i10) {
                sb.append(c7);
                length2++;
            }
        }
    }

    protected JSONObject getAbTestConfigJsonObject() {
        return null;
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

    public void setGlobalStrategyInfo(String str) {
        this.globalStrategyInfo = str;
    }

    public void setPushTackId(String str) {
        this.pushTackId = str;
    }

    private void addRootObject(ObjectNode objectNode, String str, Object obj) {
        if (obj != null) {
            objectNode.put(str, JacksonUtils.DEFAULT_MAPPER.valueToTree(obj));
        }
    }

    private void addRootObjectNodeIfNotEmpty(ObjectNode objectNode, String str, ObjectNode objectNode2) {
        if (objectNode2 == null || objectNode2.size() <= 0) {
            return;
        }
        objectNode.put(str, objectNode2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void getActiveNetworkInfo() {
        try {
            this.networkInfo = ((ConnectivityManager) this.nvContext.getContext().getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception unused) {
        }
    }

    private void putStringIfNotNull(ObjectNode objectNode, String str, String str2) {
        if (str2 != null) {
            objectNode.put(str, str2);
        }
    }

    private String uniqueKey(LogEvent logEvent) {
        if (logEvent == null) {
            return null;
        }
        return TextUtils.join("|", new String[]{logEvent.eventPage, logEvent.eventArea, logEvent.actType, logEvent.actSemantic});
    }

    int flushLoggingEvents() {
        int i10;
        JsonNode jsonNode;
        LogWsService logWsService = this.ws;
        if (logWsService == null || !logWsService.isConnected()) {
            return 0;
        }
        synchronized (this.loggingList) {
            int i11 = 0;
            i10 = 0;
            while (!this.loggingList.isEmpty()) {
                try {
                    try {
                        ObjectNode objectNodeRemoveFirst = this.loggingList.removeFirst();
                        if (objectNodeRemoveFirst != null) {
                            i11++;
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
                            i10++;
                        }
                    } catch (Exception e) {
                        Log.w("logEvent", "logging fail " + i11 + c.FORWARD_SLASH_STRING + (i11 + this.loggingList.size()), e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i10;
    }

    @Override // com.narvii.logging.service.LogEventService
    /* JADX INFO: renamed from: logEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$logEvent$0(final LogEvent logEvent) {
        int i10;
        JSONObject flatJSONObject;
        JsonNode jsonNode;
        String str;
        if (logEvent == null) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.logging.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2298a.lambda$logEvent$0(logEvent);
                }
            });
            return;
        }
        ActType actType = ActType.click;
        if (actType.name().equals(logEvent.actType)) {
            LogUtils.nextPageRefererInfo = new PageRefererInfo(logEvent.eventId, logEvent.eventPage, logEvent.eventArea);
        }
        if (actType.name().equals(logEvent.actType) && (str = logEvent.strategyInfo) != null) {
            LogUtils.nextPageStrategyInfo = str;
        }
        String string = null;
        if (!logEvent.allowNoPage && com.narvii.util.text.TextUtils.isEmpty(logEvent.eventPage)) {
            if (actType.name().equals(logEvent.actType)) {
                LogUtils.nextPageRefererInfo = new PageRefererInfo(null, logEvent.eventPage, logEvent.eventArea);
            }
            Log.w(TAG_LOG_WARNING, "event page is missing: " + logEvent.toString());
            return;
        }
        if (ActType.APIRequest.name().equals(logEvent.actType)) {
            LoggingWhiteList loggingWhiteList = LoggingWhiteList.INSTANCE;
            String apiRequestSemantic = loggingWhiteList.getApiRequestSemantic(JacksonUtils.nodeString(logEvent.extraInfo, ImagesContract.URL), JacksonUtils.nodeString(logEvent.extraInfo, "method"));
            if (com.narvii.util.text.TextUtils.isEmpty(apiRequestSemantic)) {
                return;
            }
            logEvent.actSemantic = apiRequestSemantic;
            if (loggingWhiteList.isMonitorRequest(apiRequestSemantic)) {
                if (logEvent.extraInfo == null) {
                    logEvent.extraInfo = JacksonUtils.createObjectNode();
                }
                logEvent.extraInfo.put("tag", "SERVER_MONITOR");
            }
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        int i11 = logEvent.ndcId;
        if (i11 > 0) {
            objectNodeCreateObjectNode.put(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, i11);
        }
        ObjectNode objectNodeNewObjectNode = newObjectNode();
        putStringIfNotNull(objectNodeNewObjectNode, "eventPage", logEvent.eventPage);
        putStringIfNotNull(objectNodeNewObjectNode, "eventArea", logEvent.eventArea);
        putStringIfNotNull(objectNodeNewObjectNode, "pvId", logEvent.pvId);
        putStringIfNotNull(objectNodeNewObjectNode, "reqId", logEvent.reqId);
        JSONObject abTestConfigJsonObject = getAbTestConfigJsonObject();
        if (abTestConfigJsonObject != null && abTestConfigJsonObject.length() > 0) {
            StringBuilder sb = new StringBuilder(",");
            Iterator<String> itKeys = abTestConfigJsonObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                sb.append(next);
                sb.append('=');
                sb.append(abTestConfigJsonObject.opt(next));
                sb.append(kotlinx.serialization.json.internal.b.COMMA);
            }
            putStringIfNotNull(objectNodeNewObjectNode, "uiExpIds", sb.toString());
        }
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "ScenarioInfo", objectNodeNewObjectNode);
        if (ActSemantic.pageViewLaunch.equals(logEvent.actSemantic) && logEvent.pageRefererInfo == null) {
            Log.w(TAG_LOG_WARNING, "page view event has no referer info");
        }
        addRootObject(objectNodeCreateObjectNode, "PageRefererInfo", logEvent.pageRefererInfo);
        ObjectNode objectNodeNewObjectNode2 = newObjectNode();
        putStringIfNotNull(objectNodeNewObjectNode2, "actType", logEvent.actType);
        putStringIfNotNull(objectNodeNewObjectNode2, "actSemantic", logEvent.actSemantic);
        if (logEvent.ndcId == 0 && (logEvent.nvObject instanceof CommunityObjectInGlobal)) {
            if (logEvent.extraInfo == null) {
                logEvent.extraInfo = JacksonUtils.createObjectNode();
            }
            if (!logEvent.extraInfo.hasNonNull(LogEvent.OBJECT_NDCID)) {
                logEvent.extraInfo.put(LogEvent.OBJECT_NDCID, ((CommunityObjectInGlobal) logEvent.nvObject).getNdcId());
            }
        }
        if (this.pushTackId != null) {
            if (logEvent.extraInfo == null) {
                logEvent.extraInfo = JacksonUtils.createObjectNode();
            }
            logEvent.extraInfo.put("pushTrackingId", this.pushTackId);
        }
        JsonNode jsonNode2 = logEvent.extraInfo;
        if (jsonNode2 != null) {
            objectNodeNewObjectNode2.put("extraInfo", jsonNode2);
        }
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "EventInfo", objectNodeNewObjectNode2);
        ObjectNode objectNodeNewObjectNode3 = newObjectNode();
        putStringIfNotNull(objectNodeNewObjectNode3, ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, logEvent.objectId);
        putStringIfNotNull(objectNodeNewObjectNode3, ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, logEvent.objectType);
        putStringIfNotNull(objectNodeNewObjectNode3, "objectSubType", logEvent.objectSubType);
        putStringIfNotNull(objectNodeNewObjectNode3, "parentId", logEvent.parentId);
        int i12 = logEvent.screenPos;
        if (i12 >= 0) {
            objectNodeNewObjectNode3.put("screenPos", i12);
        }
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "ObjectInfo", objectNodeNewObjectNode3);
        String str2 = this.globalStrategyInfo;
        if (str2 != null) {
            objectNodeCreateObjectNode.put("GlobalStrategyInfo", str2);
        }
        if (logEvent.strategyInfo != null && !ActType.APIRequest.name().equals(logEvent.actType)) {
            objectNodeCreateObjectNode.put("StrategyInfo", logEvent.strategyInfo);
        }
        ObjectNode objectNodeNewObjectNode4 = newObjectNode();
        objectNodeNewObjectNode4.put("eventId", logEvent.eventId);
        LogWsService logWsService = this.ws;
        if (logWsService == null || !logWsService.isConnected()) {
            objectNodeNewObjectNode4.put("eventTime", -SystemClock.elapsedRealtime());
        } else {
            objectNodeNewObjectNode4.put("eventTime", SystemClock.elapsedRealtime() + this.ws.getSyncTimeDiff());
        }
        objectNodeNewObjectNode4.put("eventType", logEvent.eventType);
        objectNodeNewObjectNode4.put("eventVersion", "V3");
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "EventBasicInfo", objectNodeNewObjectNode4);
        ObjectNode objectNodeNewObjectNode5 = newObjectNode();
        objectNodeNewObjectNode5.put("deviceRegion", Locale.getDefault().toString());
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "DeviceBasicInfo", objectNodeNewObjectNode5);
        ObjectNode objectNodeNewObjectNode6 = newObjectNode();
        if (this.networkInfo != null) {
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put("type", this.networkInfo.getTypeName());
            objectNodeCreateObjectNode2.put("subType", this.networkInfo.getSubtypeName());
            objectNodeNewObjectNode6.put("netType", objectNodeCreateObjectNode2);
        }
        if (SystemClock.elapsedRealtime() - this.lastGetOperatorTime > 60000) {
            getNetworkOperatorName();
        }
        String str3 = this.operatorName;
        if (str3 != null) {
            objectNodeNewObjectNode6.put("provider", str3);
        }
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "NetworkInfo", objectNodeNewObjectNode6);
        ObjectNode objectNodeNewObjectNode7 = newObjectNode();
        ObjectNode objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
        objectNodeNewObjectNode7.put("regionInfo", objectNodeCreateObjectNode3);
        ContentLanguageService contentLanguageService = (ContentLanguageService) this.nvContext.getService("content_language");
        objectNodeCreateObjectNode3.put("contentLanguage", contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null);
        addRootObjectNodeIfNotEmpty(objectNodeCreateObjectNode, "AppInfo", objectNodeNewObjectNode7);
        if (logEvent.actSemantic != null && !logEvent.onlyInternalLogging && (flatJSONObject = LogUtils.getFlatJSONObject(objectNodeCreateObjectNode)) != null) {
            try {
                if (Long.valueOf(flatJSONObject.getLong("eventTime")).longValue() <= 0) {
                    flatJSONObject.put("eventTime", System.currentTimeMillis());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String str4 = logEvent.strategyInfo;
            if (str4 != null) {
                try {
                    JsonNode tree = JacksonUtils.DEFAULT_MAPPER.readTree(str4);
                    if (tree != null && (jsonNode = tree.get("scenarioType")) != null && jsonNode.isTextual()) {
                        flatJSONObject.put("scenarioType", LogUtils.teaValue(jsonNode.textValue()));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            Log.d("logFlat", flatJSONObject.toString());
            sendThirdPartyLog(this.nvContext, logEvent, flatJSONObject);
        }
        synchronized (this.loggingList) {
            try {
                this.loggingList.addLast(objectNodeCreateObjectNode);
                while (this.loggingList.size() > 50) {
                    this.loggingList.removeFirst();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        String str5 = logEvent.eventArea;
        if (str5 != null && ((i10 = logEvent.screenPos) != -1 || logEvent.eventSubArea != null)) {
            if (i10 == -1) {
                str5 = str5 + " (" + logEvent.eventSubArea + ")";
            } else if (logEvent.eventSubArea == null) {
                str5 = str5 + " (pos=" + logEvent.screenPos + ")";
            } else {
                str5 = str5 + " (" + logEvent.eventSubArea + ",pos=" + logEvent.screenPos + ")";
            }
        }
        String str6 = logEvent.objectType;
        if (str6 != null && logEvent.objectSubType != null) {
            str6 = str6 + " (" + logEvent.objectSubType + ")";
        }
        StringBuilder sb2 = logBuf;
        synchronized (sb2) {
            try {
                int i13 = logCounter;
                logCounter = i13 + 1;
                if (i13 % 20 == 0) {
                    sb2.setLength(0);
                    formatTable(sb2, logColNames, logColWidth, '-');
                    Log.i("logEvent", sb2.toString());
                }
                String[] strArr = logArgs;
                strArr[0] = " ";
                strArr[1] = logEvent.eventPage;
                strArr[2] = str5;
                strArr[3] = logEvent.actType;
                strArr[4] = logEvent.actSemantic;
                strArr[5] = str6;
                ObjectNode objectNode = logEvent.extraInfo;
                if (objectNode != null) {
                    string = objectNode.toString();
                }
                strArr[6] = string;
                strArr[7] = logEvent.strategyInfo;
                strArr[8] = JacksonUtils.writeAsString(logEvent.pageRefererInfo);
                sb2.setLength(0);
                formatTable(sb2, strArr, logColWidth, ' ');
                Log.i("logEvent", sb2.toString());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        flushLoggingEvents();
    }

    public LogEventServiceImpl(NVContext nVContext) {
        this.ws = (LogWsService) nVContext.getService("logWs");
        this.prefs = (SharedPreferences) nVContext.getService(IncubatorApplication.PREFS_SERVICE_KEY);
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
        LocalBroadcastManager.b(nVContext.getContext()).c(this.accountReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    private void getNetworkOperatorName() {
        this.lastGetOperatorTime = SystemClock.elapsedRealtime();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.nvContext.getContext().getSystemService("phone");
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            this.operatorName = networkOperatorName;
            if (networkOperatorName == null) {
                this.operatorName = telephonyManager.getSimOperatorName();
            }
        } catch (Exception unused) {
        }
    }

    private ObjectNode newObjectNode() {
        return JacksonUtils.createObjectNode();
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        flushLoggingEvents();
    }
}

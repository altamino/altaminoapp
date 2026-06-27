package com.narvii.logging;

import android.content.SharedPreferences;
import android.os.Looper;
import android.os.SystemClock;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.util.ABTest;
import com.narvii.util.ABTest2;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.ws.LogWsService;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class LoggingServiceImpl implements LoggingService, WsService.WsListener {
    private static final int LOGGING_BUFFER = 50;
    DeviceIDService deviceId;
    private ObjectNode headlineExtraEventParams;
    private final LinkedList<ObjectNode> loggingList = new LinkedList<>();
    NVContext nvContext;
    private SharedPreferences prefs;
    LogWsService ws;

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onDisconnect(WsService wsService, Throwable th) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsError(WsService wsService, WsError wsError) {
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onWsMessage(WsService wsService, WsMessage wsMessage) {
    }

    public LoggingServiceImpl(NVContext nVContext) {
        this.ws = (LogWsService) nVContext.getService("logWs");
        this.deviceId = (DeviceIDService) nVContext.getService("deviceid");
        this.nvContext = nVContext;
        this.ws.listeners.addListener(this);
    }

    public void setHeadlineExtraEventParams(ObjectNode objectNode) {
        this.headlineExtraEventParams = objectNode;
        if (this.prefs == null) {
            this.prefs = this.nvContext.getContext().getSharedPreferences("logging", 0);
        }
        this.prefs.edit().putString("headlineExtraEventParams", String.valueOf(objectNode)).apply();
    }

    int flushLoggingEvents() {
        int i;
        LogWsService logWsService = this.ws;
        int i2 = 0;
        if (logWsService == null || !logWsService.isConnected()) {
            return 0;
        }
        synchronized (this.loggingList) {
            i = 0;
            while (!this.loggingList.isEmpty()) {
                try {
                    ObjectNode objectNodeRemoveFirst = this.loggingList.removeFirst();
                    i2++;
                    JsonNode jsonNode = objectNodeRemoveFirst.get("time");
                    if (jsonNode != null && jsonNode.isIntegralNumber() && jsonNode.longValue() < 0) {
                        long syncTimeDiff = (-jsonNode.longValue()) + this.ws.getSyncTimeDiff();
                        if (syncTimeDiff < 0) {
                            syncTimeDiff = System.currentTimeMillis();
                        }
                        objectNodeRemoveFirst.put("time", syncTimeDiff);
                    }
                    WsRequest wsRequest = new WsRequest();
                    wsRequest.type = 20;
                    wsRequest.object = objectNodeRemoveFirst;
                    this.ws.sendRequestDirectly(wsRequest);
                    i++;
                } catch (Exception e) {
                    Log.w("logging", "logging fail " + i2 + "/" + (i2 + this.loggingList.size()), e);
                }
            }
        }
        return i;
    }

    @Override // com.narvii.util.logging.LoggingService
    /* renamed from: logEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$logEvent$0$LoggingServiceImpl(final String str, final Object... objArr) {
        if (StringUtils.isTrimEmpty(str)) {
            throw new IllegalArgumentException("name must not be empty");
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Utils.post(new Runnable() { // from class: com.narvii.logging.-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$logEvent$0$LoggingServiceImpl(str, objArr);
                }
            });
            return;
        }
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("eventName", str);
        for (int i = 0; i < objArr.length; i += 2) {
            Object obj = objArr[i];
            Object obj2 = objArr[i + 1];
            if (!(obj instanceof String)) {
                throw new IllegalArgumentException("unsupported key " + obj);
            }
            String str2 = (String) obj;
            if (obj2 instanceof Number) {
                if (obj2 instanceof Integer) {
                    objectNodeCreateObjectNode.put(str2, ((Integer) obj2).intValue());
                } else if (obj2 instanceof Long) {
                    objectNodeCreateObjectNode.put(str2, ((Long) obj2).longValue());
                } else {
                    objectNodeCreateObjectNode.put(str2, ((Number) obj2).floatValue());
                }
            } else if (obj2 instanceof String) {
                objectNodeCreateObjectNode.put(str2, (String) obj2);
            } else if (obj2 instanceof Boolean) {
                objectNodeCreateObjectNode.put(str2, ((Boolean) obj2).booleanValue());
            } else if (obj2 == null) {
                objectNodeCreateObjectNode.put(str2, (String) null);
            } else {
                throw new IllegalArgumentException("unsupported value " + obj2);
            }
        }
        String string = objectNodeCreateObjectNode.toString();
        if (!objectNodeCreateObjectNode.has("time")) {
            objectNodeCreateObjectNode.put("time", -SystemClock.elapsedRealtime());
        }
        if (this.deviceId.isReady()) {
            for (ABTest aBTest : ABTest.LOGGING_USER_PROPS) {
                String str3 = "ab_" + aBTest;
                if (!objectNodeCreateObjectNode.has(str3)) {
                    objectNodeCreateObjectNode.put(str3, ABTest.ab(aBTest) ? "A" : "B");
                }
            }
            ABTest2.logLogging(this.nvContext, objectNodeCreateObjectNode);
        }
        if (this.headlineExtraEventParams == null) {
            if (this.prefs == null) {
                this.prefs = this.nvContext.getContext().getSharedPreferences("logging", 0);
            }
            this.headlineExtraEventParams = JacksonUtils.createObjectNode(this.prefs.getString("headlineExtraEventParams", null));
        }
        ObjectNode objectNode = this.headlineExtraEventParams;
        if (objectNode != null) {
            objectNodeCreateObjectNode.setAll(objectNode);
        }
        synchronized (this.loggingList) {
            this.loggingList.addLast(objectNodeCreateObjectNode);
            while (this.loggingList.size() > 50) {
                this.loggingList.removeFirst();
            }
        }
        int iFlushLoggingEvents = flushLoggingEvents();
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(iFlushLoggingEvents > 0 ? "" : " ...");
        Log.i("logging", sb.toString());
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        flushLoggingEvents();
    }
}

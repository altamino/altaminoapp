package com.narvii.logging;

import android.content.SharedPreferences;
import android.os.Looper;
import android.os.SystemClock;
import androidx.exifinterface.media.ExifInterface;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.app.NVContext;
import com.narvii.util.ABTest;
import com.narvii.util.ABTest2;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.ws.LogWsService;
import com.narvii.util.ws.WsError;
import com.narvii.util.ws.WsMessage;
import com.narvii.util.ws.WsRequest;
import com.narvii.util.ws.WsService;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes6.dex */
public class LoggingServiceImpl implements LoggingService, WsService.WsListener {
    private static final int LOGGING_BUFFER = 50;
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

    int flushLoggingEvents() {
        int i10;
        LogWsService logWsService = this.ws;
        int i11 = 0;
        if (logWsService == null || !logWsService.isConnected()) {
            return 0;
        }
        synchronized (this.loggingList) {
            i10 = 0;
            while (!this.loggingList.isEmpty()) {
                try {
                    try {
                        ObjectNode objectNodeRemoveFirst = this.loggingList.removeFirst();
                        i11++;
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
                        i10++;
                    } catch (Exception e) {
                        Log.w("logging", "logging fail " + i11 + c.FORWARD_SLASH_STRING + (i11 + this.loggingList.size()), e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return i10;
    }

    public void setHeadlineExtraEventParams(ObjectNode objectNode) {
        this.headlineExtraEventParams = objectNode;
        if (this.prefs == null) {
            this.prefs = this.nvContext.getContext().getSharedPreferences("logging", 0);
        }
        this.prefs.edit().putString("headlineExtraEventParams", String.valueOf(objectNode)).apply();
    }

    public LoggingServiceImpl(NVContext nVContext) {
        LogWsService logWsService = (LogWsService) nVContext.getService("logWs");
        this.ws = logWsService;
        this.nvContext = nVContext;
        logWsService.listeners.addListener(this);
    }

    @Override // com.narvii.util.logging.LoggingService
    /* JADX INFO: renamed from: logEvent, reason: merged with bridge method [inline-methods] */
    public void lambda$logEvent$0(final String str, final Object... objArr) {
        String str2;
        String str3;
        if (!StringUtils.isTrimEmpty(str)) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                Utils.post(new Runnable() { // from class: com.narvii.logging.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2300a.lambda$logEvent$0(str, objArr);
                    }
                });
                return;
            }
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("eventName", str);
            for (int i10 = 0; i10 < objArr.length; i10 += 2) {
                Object obj = objArr[i10];
                Object obj2 = objArr[i10 + 1];
                if (obj instanceof String) {
                    String str4 = (String) obj;
                    if (obj2 instanceof Number) {
                        if (obj2 instanceof Integer) {
                            objectNodeCreateObjectNode.put(str4, ((Integer) obj2).intValue());
                        } else if (obj2 instanceof Long) {
                            objectNodeCreateObjectNode.put(str4, ((Long) obj2).longValue());
                        } else {
                            objectNodeCreateObjectNode.put(str4, ((Number) obj2).floatValue());
                        }
                    } else if (obj2 instanceof String) {
                        objectNodeCreateObjectNode.put(str4, (String) obj2);
                    } else if (obj2 instanceof Boolean) {
                        objectNodeCreateObjectNode.put(str4, ((Boolean) obj2).booleanValue());
                    } else if (obj2 == null) {
                        objectNodeCreateObjectNode.put(str4, (String) null);
                    } else {
                        throw new IllegalArgumentException("unsupported value " + obj2);
                    }
                } else {
                    throw new IllegalArgumentException("unsupported key " + obj);
                }
            }
            String string = objectNodeCreateObjectNode.toString();
            if (!objectNodeCreateObjectNode.has("time")) {
                objectNodeCreateObjectNode.put("time", -SystemClock.elapsedRealtime());
            }
            if (a0.b.q()) {
                for (ABTest aBTest : ABTest.LOGGING_USER_PROPS) {
                    String str5 = "ab_" + aBTest;
                    if (!objectNodeCreateObjectNode.has(str5)) {
                        if (ABTest.ab(this.nvContext.getContext(), aBTest)) {
                            str3 = ExifInterface.GPS_MEASUREMENT_IN_PROGRESS;
                        } else {
                            str3 = "B";
                        }
                        objectNodeCreateObjectNode.put(str5, str3);
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
                try {
                    this.loggingList.addLast(objectNodeCreateObjectNode);
                    while (this.loggingList.size() > 50) {
                        this.loggingList.removeFirst();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            int iFlushLoggingEvents = flushLoggingEvents();
            StringBuilder sb = new StringBuilder();
            sb.append(string);
            if (iFlushLoggingEvents > 0) {
                str2 = "";
            } else {
                str2 = " ...";
            }
            sb.append(str2);
            Log.i("logging", sb.toString());
            return;
        }
        throw new IllegalArgumentException("name must not be empty");
    }

    @Override // com.narvii.util.ws.WsService.WsListener
    public void onConnect(WsService wsService) {
        flushLoggingEvents();
    }
}

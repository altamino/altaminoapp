package com.google.firebase.abt;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    @VisibleForTesting
    static final String TRIGGER_EVENT_KEY = "triggerEvent";

    @VisibleForTesting
    static final String VARIANT_ID_KEY = "variantId";
    private final String experimentId;
    private final Date experimentStartTime;
    private final long timeToLiveInMillis;
    private final String triggerEventName;
    private final long triggerTimeoutInMillis;
    private final String variantId;

    @VisibleForTesting
    static final String EXPERIMENT_ID_KEY = "experimentId";

    @VisibleForTesting
    static final String EXPERIMENT_START_TIME_KEY = "experimentStartTime";

    @VisibleForTesting
    static final String TIME_TO_LIVE_KEY = "timeToLiveMillis";

    @VisibleForTesting
    static final String TRIGGER_TIMEOUT_KEY = "triggerTimeoutMillis";
    private static final String[] ALL_REQUIRED_KEYS = {EXPERIMENT_ID_KEY, EXPERIMENT_START_TIME_KEY, TIME_TO_LIVE_KEY, TRIGGER_TIMEOUT_KEY, "variantId"};

    @VisibleForTesting
    static final DateFormat protoTimestampStringParser = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);

    String c() {
        return this.experimentId;
    }

    String e() {
        return this.variantId;
    }

    static b a(com.google.firebase.analytics.connector.a.c cVar) {
        String str = cVar.triggerEventName;
        if (str == null) {
            str = "";
        }
        return new b(cVar.name, String.valueOf(cVar.value), str, new Date(cVar.creationTimestamp), cVar.triggerTimeout, cVar.timeToLive);
    }

    static b b(Map<String, String> map) throws a {
        g(map);
        try {
            return new b(map.get(EXPERIMENT_ID_KEY), map.get("variantId"), map.containsKey(TRIGGER_EVENT_KEY) ? map.get(TRIGGER_EVENT_KEY) : "", protoTimestampStringParser.parse(map.get(EXPERIMENT_START_TIME_KEY)), Long.parseLong(map.get(TRIGGER_TIMEOUT_KEY)), Long.parseLong(map.get(TIME_TO_LIVE_KEY)));
        } catch (NumberFormatException e) {
            throw new a("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e2) {
            throw new a("Could not process experiment: parsing experiment start time failed.", e2);
        }
    }

    private static void g(Map<String, String> map) throws a {
        ArrayList arrayList = new ArrayList();
        for (String str : ALL_REQUIRED_KEYS) {
            if (!map.containsKey(str)) {
                arrayList.add(str);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new a(String.format("The following keys are missing from the experiment info map: %s", arrayList));
        }
    }

    long d() {
        return this.experimentStartTime.getTime();
    }

    com.google.firebase.analytics.connector.a.c f(String str) {
        com.google.firebase.analytics.connector.a.c cVar = new com.google.firebase.analytics.connector.a.c();
        cVar.origin = str;
        cVar.creationTimestamp = d();
        cVar.name = this.experimentId;
        cVar.value = this.variantId;
        cVar.triggerEventName = TextUtils.isEmpty(this.triggerEventName) ? null : this.triggerEventName;
        cVar.triggerTimeout = this.triggerTimeoutInMillis;
        cVar.timeToLive = this.timeToLiveInMillis;
        return cVar;
    }

    public b(String str, String str2, String str3, Date date, long j6, long j10) {
        this.experimentId = str;
        this.variantId = str2;
        this.triggerEventName = str3;
        this.experimentStartTime = date;
        this.triggerTimeoutInMillis = j6;
        this.timeToLiveInMillis = j10;
    }
}

package com.google.firebase.perf.config;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class f extends v<String> {
    private static final Map<Long, String> LOG_SOURCE_MAP = Collections.unmodifiableMap(new a());
    private static f instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_log_source";
    }

    class a extends HashMap<Long, String> {
        a() {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    }

    public static synchronized f e() {
        try {
            if (instance == null) {
                instance = new f();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected static String f(long j6) {
        return LOG_SOURCE_MAP.get(Long.valueOf(j6));
    }

    protected static boolean g(long j6) {
        return LOG_SOURCE_MAP.containsKey(Long.valueOf(j6));
    }

    protected String d() {
        return v4.a.TRANSPORT_LOG_SRC;
    }

    private f() {
    }
}

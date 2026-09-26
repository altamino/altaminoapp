package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class t extends v<Long> {
    private static t instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountForeground";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_rl_trace_event_count_fg";
    }

    public static synchronized t e() {
        try {
            if (instance == null) {
                instance = new t();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 300L;
    }

    private t() {
    }
}

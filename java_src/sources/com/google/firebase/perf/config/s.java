package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class s extends v<Long> {
    private static s instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.TraceEventCountBackground";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_rl_trace_event_count_bg";
    }

    public static synchronized s e() {
        try {
            if (instance == null) {
                instance = new s();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 30L;
    }

    private s() {
    }
}

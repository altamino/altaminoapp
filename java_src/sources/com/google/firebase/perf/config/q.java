package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends v<Long> {
    private static q instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_memory_capture_frequency_fg_ms";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_fg_ms";
    }

    public static synchronized q f() {
        try {
            if (instance == null) {
                instance = new q();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 100L;
    }

    private q() {
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}

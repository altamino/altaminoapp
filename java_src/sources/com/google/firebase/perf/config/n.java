package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class n extends v<Long> {
    private static n instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_cpu_capture_frequency_fg_ms";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
    }

    public static synchronized n f() {
        try {
            if (instance == null) {
                instance = new n();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 100L;
    }

    private n() {
    }

    protected Long e() {
        return Long.valueOf(d().longValue() * 3);
    }
}

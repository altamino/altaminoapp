package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class m extends v<Long> {
    private static m instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_cpu_capture_frequency_bg_ms";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
    }

    public static synchronized m e() {
        try {
            if (instance == null) {
                instance = new m();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 0L;
    }

    private m() {
    }
}

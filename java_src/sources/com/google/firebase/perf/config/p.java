package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class p extends v<Long> {
    private static p instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_memory_capture_frequency_bg_ms";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_session_gauge_memory_capture_frequency_bg_ms";
    }

    public static synchronized p e() {
        try {
            if (instance == null) {
                instance = new p();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 0L;
    }

    private p() {
    }
}

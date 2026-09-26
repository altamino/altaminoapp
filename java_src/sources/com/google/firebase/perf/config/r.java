package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class r extends v<Double> {
    private static r instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionSamplingRate";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_sampling_percentage";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_vc_session_sampling_rate";
    }

    public static synchronized r f() {
        try {
            if (instance == null) {
                instance = new r();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private r() {
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }

    protected Double d() {
        return Double.valueOf(0.01d);
    }
}

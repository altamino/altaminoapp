package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class u extends v<Double> {
    private static u instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.TraceSamplingRate";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_vc_trace_sampling_rate";
    }

    protected static synchronized u f() {
        try {
            if (instance == null) {
                instance = new u();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    private u() {
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}

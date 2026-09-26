package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class i extends v<Double> {
    private static i instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.NetworkRequestSamplingRate";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_vc_network_request_sampling_rate";
    }

    protected static synchronized i f() {
        try {
            if (instance == null) {
                instance = new i();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Double d() {
        return Double.valueOf(1.0d);
    }

    private i() {
    }

    protected Double e() {
        return Double.valueOf(d().doubleValue() / 1000.0d);
    }
}

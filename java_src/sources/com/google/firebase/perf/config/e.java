package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends v<Double> {
    private static e instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.FragmentSamplingRate";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "fragment_sampling_percentage";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_vc_fragment_sampling_rate";
    }

    protected static synchronized e e() {
        try {
            if (instance == null) {
                instance = new e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Double d() {
        return Double.valueOf(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
    }

    private e() {
    }
}

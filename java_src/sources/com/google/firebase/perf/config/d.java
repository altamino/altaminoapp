package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends v<Boolean> {
    private static d instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.ExperimentTTID";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "experiment_app_start_ttid";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_experiment_app_start_ttid";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }

    protected static synchronized d e() {
        try {
            if (instance == null) {
                instance = new d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private d() {
    }
}

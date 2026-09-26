package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends v<Boolean> {
    private static l instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SdkEnabled";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_enabled";
    }

    protected Boolean d() {
        return Boolean.TRUE;
    }

    protected static synchronized l e() {
        try {
            if (instance == null) {
                instance = new l();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected l() {
    }
}

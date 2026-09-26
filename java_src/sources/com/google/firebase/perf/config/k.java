package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends v<String> {
    private static k instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SdkDisabledVersions";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_disabled_android_versions";
    }

    protected String d() {
        return "";
    }

    protected static synchronized k e() {
        try {
            if (instance == null) {
                instance = new k();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected k() {
    }
}

package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class b extends v<Boolean> {
    private static b instance;

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "firebase_performance_collection_deactivated";
    }

    protected Boolean d() {
        return Boolean.FALSE;
    }

    protected static synchronized b e() {
        try {
            if (instance == null) {
                instance = new b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private b() {
    }
}

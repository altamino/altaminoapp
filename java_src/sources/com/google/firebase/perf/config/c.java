package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class c extends v<Boolean> {
    private static c instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "isEnabled";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "firebase_performance_collection_enabled";
    }

    protected static synchronized c d() {
        try {
            if (instance == null) {
                instance = new c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private c() {
    }
}

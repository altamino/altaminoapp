package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class g extends v<Long> {
    private static g instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountBackground";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_rl_network_event_count_bg";
    }

    public static synchronized g e() {
        try {
            if (instance == null) {
                instance = new g();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 70L;
    }

    private g() {
    }
}

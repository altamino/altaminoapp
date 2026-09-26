package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class h extends v<Long> {
    private static h instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.NetworkEventCountForeground";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_rl_network_event_count_fg";
    }

    public static synchronized h e() {
        try {
            if (instance == null) {
                instance = new h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 700L;
    }

    private h() {
    }
}

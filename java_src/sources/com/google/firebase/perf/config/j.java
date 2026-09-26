package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class j extends v<Long> {
    private static j instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.TimeLimitSec";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_rl_time_limit_sec";
    }

    public static synchronized j e() {
        try {
            if (instance == null) {
                instance = new j();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 600L;
    }

    private j() {
    }
}

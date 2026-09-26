package com.google.firebase.perf.config;

/* JADX INFO: loaded from: classes5.dex */
public final class o extends v<Long> {
    private static o instance;

    @Override // com.google.firebase.perf.config.v
    protected String a() {
        return "com.google.firebase.perf.SessionsMaxDurationMinutes";
    }

    @Override // com.google.firebase.perf.config.v
    protected String b() {
        return "sessions_max_length_minutes";
    }

    @Override // com.google.firebase.perf.config.v
    protected String c() {
        return "fpr_session_max_duration_min";
    }

    public static synchronized o e() {
        try {
            if (instance == null) {
                instance = new o();
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    protected Long d() {
        return 240L;
    }

    private o() {
    }
}

package com.google.firebase.remoteconfig.internal;

/* JADX INFO: loaded from: classes9.dex */
public class v implements c5.k {
    private final c5.m configSettings;
    private final int lastFetchStatus;
    private final long lastSuccessfulFetchTimeInMillis;

    public static class b {
        private c5.m builderConfigSettings;
        private int builderLastFetchStatus;
        private long builderLastSuccessfulFetchTimeInMillis;

        b b(c5.m mVar) {
            this.builderConfigSettings = mVar;
            return this;
        }

        b c(int i10) {
            this.builderLastFetchStatus = i10;
            return this;
        }

        public b d(long j6) {
            this.builderLastSuccessfulFetchTimeInMillis = j6;
            return this;
        }

        private b() {
        }

        public v a() {
            return new v(this.builderLastSuccessfulFetchTimeInMillis, this.builderLastFetchStatus, this.builderConfigSettings);
        }
    }

    @Override // c5.k
    public int a() {
        return this.lastFetchStatus;
    }

    private v(long j6, int i10, c5.m mVar) {
        this.lastSuccessfulFetchTimeInMillis = j6;
        this.lastFetchStatus = i10;
        this.configSettings = mVar;
    }

    static b b() {
        return new b();
    }
}

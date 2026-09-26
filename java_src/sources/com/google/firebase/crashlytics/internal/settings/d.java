package com.google.firebase.crashlytics.internal.settings;

/* JADX INFO: loaded from: classes9.dex */
public class d {
    public final int cacheDuration;
    public final long expiresAtMillis;
    public final a featureFlagData;
    public final double onDemandBackoffBase;
    public final int onDemandBackoffStepDurationSeconds;
    public final double onDemandUploadRatePerMinute;
    public final b sessionData;
    public final int settingsVersion;

    public boolean a(long j6) {
        return this.expiresAtMillis < j6;
    }

    public static class a {
        public final boolean collectAnrs;
        public final boolean collectBuildIds;
        public final boolean collectReports;

        public a(boolean z6, boolean z10, boolean z11) {
            this.collectReports = z6;
            this.collectAnrs = z10;
            this.collectBuildIds = z11;
        }
    }

    public static class b {
        public final int maxCompleteSessionsCount;
        public final int maxCustomExceptionEvents;

        public b(int i10, int i11) {
            this.maxCustomExceptionEvents = i10;
            this.maxCompleteSessionsCount = i11;
        }
    }

    public d(long j6, b bVar, a aVar, int i10, int i11, double d, double d2, int i12) {
        this.expiresAtMillis = j6;
        this.sessionData = bVar;
        this.featureFlagData = aVar;
        this.settingsVersion = i10;
        this.cacheDuration = i11;
        this.onDemandUploadRatePerMinute = d;
        this.onDemandBackoffBase = d2;
        this.onDemandBackoffStepDurationSeconds = i12;
    }
}

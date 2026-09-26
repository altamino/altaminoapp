package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    @NotNull
    private final d crashlytics;

    @NotNull
    private final d performance;
    private final double sessionSamplingRate;

    public e() {
        this(null, null, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, 7, null);
    }

    @NotNull
    public final d a() {
        return this.crashlytics;
    }

    @NotNull
    public final d b() {
        return this.performance;
    }

    public final double c() {
        return this.sessionSamplingRate;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.performance == eVar.performance && this.crashlytics == eVar.crashlytics && kotlin.jvm.internal.t.e(Double.valueOf(this.sessionSamplingRate), Double.valueOf(eVar.sessionSamplingRate));
    }

    public int hashCode() {
        return (((this.performance.hashCode() * 31) + this.crashlytics.hashCode()) * 31) + androidx.compose.animation.core.b.a(this.sessionSamplingRate);
    }

    @NotNull
    public String toString() {
        return "DataCollectionStatus(performance=" + this.performance + ", crashlytics=" + this.crashlytics + ", sessionSamplingRate=" + this.sessionSamplingRate + ')';
    }

    public e(@NotNull d performance, @NotNull d crashlytics, double d) {
        kotlin.jvm.internal.t.j(performance, "performance");
        kotlin.jvm.internal.t.j(crashlytics, "crashlytics");
        this.performance = performance;
        this.crashlytics = crashlytics;
        this.sessionSamplingRate = d;
    }

    public /* synthetic */ e(d dVar, d dVar2, double d, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? d.COLLECTION_SDK_NOT_INSTALLED : dVar, (i10 & 2) != 0 ? d.COLLECTION_SDK_NOT_INSTALLED : dVar2, (i10 & 4) != 0 ? 1.0d : d);
    }
}

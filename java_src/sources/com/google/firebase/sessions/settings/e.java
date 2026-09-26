package com.google.firebase.sessions.settings;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    @Nullable
    private final Integer cacheDuration;

    @Nullable
    private final Long cacheUpdatedTime;

    @Nullable
    private final Boolean sessionEnabled;

    @Nullable
    private final Integer sessionRestartTimeout;

    @Nullable
    private final Double sessionSamplingRate;

    @Nullable
    public final Integer a() {
        return this.cacheDuration;
    }

    @Nullable
    public final Long b() {
        return this.cacheUpdatedTime;
    }

    @Nullable
    public final Boolean c() {
        return this.sessionEnabled;
    }

    @Nullable
    public final Integer d() {
        return this.sessionRestartTimeout;
    }

    @Nullable
    public final Double e() {
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
        return t.e(this.sessionEnabled, eVar.sessionEnabled) && t.e(this.sessionSamplingRate, eVar.sessionSamplingRate) && t.e(this.sessionRestartTimeout, eVar.sessionRestartTimeout) && t.e(this.cacheDuration, eVar.cacheDuration) && t.e(this.cacheUpdatedTime, eVar.cacheUpdatedTime);
    }

    public int hashCode() {
        Boolean bool = this.sessionEnabled;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d = this.sessionSamplingRate;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.sessionRestartTimeout;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.cacheDuration;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.cacheUpdatedTime;
        return iHashCode4 + (l != null ? l.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SessionConfigs(sessionEnabled=" + this.sessionEnabled + ", sessionSamplingRate=" + this.sessionSamplingRate + ", sessionRestartTimeout=" + this.sessionRestartTimeout + ", cacheDuration=" + this.cacheDuration + ", cacheUpdatedTime=" + this.cacheUpdatedTime + ')';
    }

    public e(@Nullable Boolean bool, @Nullable Double d, @Nullable Integer num, @Nullable Integer num2, @Nullable Long l) {
        this.sessionEnabled = bool;
        this.sessionSamplingRate = d;
        this.sessionRestartTimeout = num;
        this.cacheDuration = num2;
        this.cacheUpdatedTime = l;
    }
}

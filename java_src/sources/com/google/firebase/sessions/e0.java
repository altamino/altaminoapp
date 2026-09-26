package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class e0 {

    @NotNull
    private final e dataCollectionStatus;
    private final long eventTimestampUs;

    @NotNull
    private final String firebaseInstallationId;

    @NotNull
    private final String firstSessionId;

    @NotNull
    private final String sessionId;
    private final int sessionIndex;

    public e0(@NotNull String sessionId, @NotNull String firstSessionId, int i10, long j6, @NotNull e dataCollectionStatus, @NotNull String firebaseInstallationId) {
        kotlin.jvm.internal.t.j(sessionId, "sessionId");
        kotlin.jvm.internal.t.j(firstSessionId, "firstSessionId");
        kotlin.jvm.internal.t.j(dataCollectionStatus, "dataCollectionStatus");
        kotlin.jvm.internal.t.j(firebaseInstallationId, "firebaseInstallationId");
        this.sessionId = sessionId;
        this.firstSessionId = firstSessionId;
        this.sessionIndex = i10;
        this.eventTimestampUs = j6;
        this.dataCollectionStatus = dataCollectionStatus;
        this.firebaseInstallationId = firebaseInstallationId;
    }

    @NotNull
    public final e a() {
        return this.dataCollectionStatus;
    }

    public final long b() {
        return this.eventTimestampUs;
    }

    @NotNull
    public final String c() {
        return this.firebaseInstallationId;
    }

    @NotNull
    public final String d() {
        return this.firstSessionId;
    }

    @NotNull
    public final String e() {
        return this.sessionId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return kotlin.jvm.internal.t.e(this.sessionId, e0Var.sessionId) && kotlin.jvm.internal.t.e(this.firstSessionId, e0Var.firstSessionId) && this.sessionIndex == e0Var.sessionIndex && this.eventTimestampUs == e0Var.eventTimestampUs && kotlin.jvm.internal.t.e(this.dataCollectionStatus, e0Var.dataCollectionStatus) && kotlin.jvm.internal.t.e(this.firebaseInstallationId, e0Var.firebaseInstallationId);
    }

    public final int f() {
        return this.sessionIndex;
    }

    public int hashCode() {
        return (((((((((this.sessionId.hashCode() * 31) + this.firstSessionId.hashCode()) * 31) + this.sessionIndex) * 31) + i.a.a(this.eventTimestampUs)) * 31) + this.dataCollectionStatus.hashCode()) * 31) + this.firebaseInstallationId.hashCode();
    }

    @NotNull
    public String toString() {
        return "SessionInfo(sessionId=" + this.sessionId + ", firstSessionId=" + this.firstSessionId + ", sessionIndex=" + this.sessionIndex + ", eventTimestampUs=" + this.eventTimestampUs + ", dataCollectionStatus=" + this.dataCollectionStatus + ", firebaseInstallationId=" + this.firebaseInstallationId + ')';
    }

    public /* synthetic */ e0(String str, String str2, int i10, long j6, e eVar, String str3, int i11, kotlin.jvm.internal.k kVar) {
        this(str, str2, i10, j6, (i11 & 16) != 0 ? new e(null, null, com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, 7, null) : eVar, (i11 & 32) != 0 ? "" : str3);
    }
}

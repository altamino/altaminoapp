package com.google.firebase.sessions;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    @NotNull
    private final a androidAppInfo;

    @NotNull
    private final String appId;

    @NotNull
    private final String deviceModel;

    @NotNull
    private final s logEnvironment;

    @NotNull
    private final String osVersion;

    @NotNull
    private final String sessionSdkVersion;

    @NotNull
    public final a a() {
        return this.androidAppInfo;
    }

    @NotNull
    public final String b() {
        return this.appId;
    }

    @NotNull
    public final String c() {
        return this.deviceModel;
    }

    @NotNull
    public final s d() {
        return this.logEnvironment;
    }

    @NotNull
    public final String e() {
        return this.osVersion;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return kotlin.jvm.internal.t.e(this.appId, bVar.appId) && kotlin.jvm.internal.t.e(this.deviceModel, bVar.deviceModel) && kotlin.jvm.internal.t.e(this.sessionSdkVersion, bVar.sessionSdkVersion) && kotlin.jvm.internal.t.e(this.osVersion, bVar.osVersion) && this.logEnvironment == bVar.logEnvironment && kotlin.jvm.internal.t.e(this.androidAppInfo, bVar.androidAppInfo);
    }

    @NotNull
    public final String f() {
        return this.sessionSdkVersion;
    }

    public int hashCode() {
        return (((((((((this.appId.hashCode() * 31) + this.deviceModel.hashCode()) * 31) + this.sessionSdkVersion.hashCode()) * 31) + this.osVersion.hashCode()) * 31) + this.logEnvironment.hashCode()) * 31) + this.androidAppInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "ApplicationInfo(appId=" + this.appId + ", deviceModel=" + this.deviceModel + ", sessionSdkVersion=" + this.sessionSdkVersion + ", osVersion=" + this.osVersion + ", logEnvironment=" + this.logEnvironment + ", androidAppInfo=" + this.androidAppInfo + ')';
    }

    public b(@NotNull String appId, @NotNull String deviceModel, @NotNull String sessionSdkVersion, @NotNull String osVersion, @NotNull s logEnvironment, @NotNull a androidAppInfo) {
        kotlin.jvm.internal.t.j(appId, "appId");
        kotlin.jvm.internal.t.j(deviceModel, "deviceModel");
        kotlin.jvm.internal.t.j(sessionSdkVersion, "sessionSdkVersion");
        kotlin.jvm.internal.t.j(osVersion, "osVersion");
        kotlin.jvm.internal.t.j(logEnvironment, "logEnvironment");
        kotlin.jvm.internal.t.j(androidAppInfo, "androidAppInfo");
        this.appId = appId;
        this.deviceModel = deviceModel;
        this.sessionSdkVersion = sessionSdkVersion;
        this.osVersion = osVersion;
        this.logEnvironment = logEnvironment;
        this.androidAppInfo = androidAppInfo;
    }
}

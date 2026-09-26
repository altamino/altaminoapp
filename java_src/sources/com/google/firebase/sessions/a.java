package com.google.firebase.sessions;

import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    @NotNull
    private final String appBuildVersion;

    @NotNull
    private final List<t> appProcessDetails;

    @NotNull
    private final t currentProcessDetails;

    @NotNull
    private final String deviceManufacturer;

    @NotNull
    private final String packageName;

    @NotNull
    private final String versionName;

    @NotNull
    public final String a() {
        return this.appBuildVersion;
    }

    @NotNull
    public final List<t> b() {
        return this.appProcessDetails;
    }

    @NotNull
    public final t c() {
        return this.currentProcessDetails;
    }

    @NotNull
    public final String d() {
        return this.deviceManufacturer;
    }

    @NotNull
    public final String e() {
        return this.packageName;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return kotlin.jvm.internal.t.e(this.packageName, aVar.packageName) && kotlin.jvm.internal.t.e(this.versionName, aVar.versionName) && kotlin.jvm.internal.t.e(this.appBuildVersion, aVar.appBuildVersion) && kotlin.jvm.internal.t.e(this.deviceManufacturer, aVar.deviceManufacturer) && kotlin.jvm.internal.t.e(this.currentProcessDetails, aVar.currentProcessDetails) && kotlin.jvm.internal.t.e(this.appProcessDetails, aVar.appProcessDetails);
    }

    @NotNull
    public final String f() {
        return this.versionName;
    }

    public int hashCode() {
        return (((((((((this.packageName.hashCode() * 31) + this.versionName.hashCode()) * 31) + this.appBuildVersion.hashCode()) * 31) + this.deviceManufacturer.hashCode()) * 31) + this.currentProcessDetails.hashCode()) * 31) + this.appProcessDetails.hashCode();
    }

    @NotNull
    public String toString() {
        return "AndroidApplicationInfo(packageName=" + this.packageName + ", versionName=" + this.versionName + ", appBuildVersion=" + this.appBuildVersion + ", deviceManufacturer=" + this.deviceManufacturer + ", currentProcessDetails=" + this.currentProcessDetails + ", appProcessDetails=" + this.appProcessDetails + ')';
    }

    public a(@NotNull String packageName, @NotNull String versionName, @NotNull String appBuildVersion, @NotNull String deviceManufacturer, @NotNull t currentProcessDetails, @NotNull List<t> appProcessDetails) {
        kotlin.jvm.internal.t.j(packageName, "packageName");
        kotlin.jvm.internal.t.j(versionName, "versionName");
        kotlin.jvm.internal.t.j(appBuildVersion, "appBuildVersion");
        kotlin.jvm.internal.t.j(deviceManufacturer, "deviceManufacturer");
        kotlin.jvm.internal.t.j(currentProcessDetails, "currentProcessDetails");
        kotlin.jvm.internal.t.j(appProcessDetails, "appProcessDetails");
        this.packageName = packageName;
        this.versionName = versionName;
        this.appBuildVersion = appBuildVersion;
        this.deviceManufacturer = deviceManufacturer;
        this.currentProcessDetails = currentProcessDetails;
        this.appProcessDetails = appProcessDetails;
    }
}

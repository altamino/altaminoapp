package com.google.firebase.crashlytics.internal.model;

/* JADX INFO: loaded from: classes10.dex */
final class c0 extends g0.a {
    private final String appIdentifier;
    private final int deliveryMechanism;
    private final com.google.firebase.crashlytics.internal.f developmentPlatformProvider;
    private final String installUuid;
    private final String versionCode;
    private final String versionName;

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public String a() {
        return this.appIdentifier;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public int c() {
        return this.deliveryMechanism;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public com.google.firebase.crashlytics.internal.f d() {
        return this.developmentPlatformProvider;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public String e() {
        return this.installUuid;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.a)) {
            return false;
        }
        g0.a aVar = (g0.a) obj;
        return this.appIdentifier.equals(aVar.a()) && this.versionCode.equals(aVar.f()) && this.versionName.equals(aVar.g()) && this.installUuid.equals(aVar.e()) && this.deliveryMechanism == aVar.c() && this.developmentPlatformProvider.equals(aVar.d());
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public String f() {
        return this.versionCode;
    }

    @Override // com.google.firebase.crashlytics.internal.model.g0.a
    public String g() {
        return this.versionName;
    }

    public int hashCode() {
        return ((((((((((this.appIdentifier.hashCode() ^ 1000003) * 1000003) ^ this.versionCode.hashCode()) * 1000003) ^ this.versionName.hashCode()) * 1000003) ^ this.installUuid.hashCode()) * 1000003) ^ this.deliveryMechanism) * 1000003) ^ this.developmentPlatformProvider.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.appIdentifier + ", versionCode=" + this.versionCode + ", versionName=" + this.versionName + ", installUuid=" + this.installUuid + ", deliveryMechanism=" + this.deliveryMechanism + ", developmentPlatformProvider=" + this.developmentPlatformProvider + "}";
    }

    c0(String str, String str2, String str3, String str4, int i10, com.google.firebase.crashlytics.internal.f fVar) {
        if (str != null) {
            this.appIdentifier = str;
            if (str2 != null) {
                this.versionCode = str2;
                if (str3 != null) {
                    this.versionName = str3;
                    if (str4 != null) {
                        this.installUuid = str4;
                        this.deliveryMechanism = i10;
                        if (fVar != null) {
                            this.developmentPlatformProvider = fVar;
                            return;
                        }
                        throw new NullPointerException("Null developmentPlatformProvider");
                    }
                    throw new NullPointerException("Null installUuid");
                }
                throw new NullPointerException("Null versionName");
            }
            throw new NullPointerException("Null versionCode");
        }
        throw new NullPointerException("Null appIdentifier");
    }
}

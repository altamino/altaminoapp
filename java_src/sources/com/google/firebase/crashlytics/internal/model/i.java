package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class i extends f0.e.a {
    private final String developmentPlatform;
    private final String developmentPlatformVersion;
    private final String displayVersion;
    private final String identifier;
    private final String installationUuid;
    private final f0.e.a.b organization;
    private final String version;

    static final class b extends f0.e.a.AbstractC0237a {
        private String developmentPlatform;
        private String developmentPlatformVersion;
        private String displayVersion;
        private String identifier;
        private String installationUuid;
        private f0.e.a.b organization;
        private String version;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a b(@Nullable String str) {
            this.developmentPlatform = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a c(@Nullable String str) {
            this.developmentPlatformVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a d(String str) {
            this.displayVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a f(String str) {
            this.installationUuid = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a a() {
            String str = "";
            if (this.identifier == null) {
                str = " identifier";
            }
            if (this.version == null) {
                str = str + " version";
            }
            if (str.isEmpty()) {
                return new i(this.identifier, this.version, this.displayVersion, this.organization, this.installationUuid, this.developmentPlatform, this.developmentPlatformVersion);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null identifier");
            }
            this.identifier = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.a.AbstractC0237a
        public f0.e.a.AbstractC0237a g(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.version = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @Nullable
    public String b() {
        return this.developmentPlatform;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @Nullable
    public String c() {
        return this.developmentPlatformVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @Nullable
    public String d() {
        return this.displayVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @NonNull
    public String e() {
        return this.identifier;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.a.b bVar;
        String str2;
        String str3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.a)) {
            return false;
        }
        f0.e.a aVar = (f0.e.a) obj;
        if (this.identifier.equals(aVar.e()) && this.version.equals(aVar.h()) && ((str = this.displayVersion) != null ? str.equals(aVar.d()) : aVar.d() == null) && ((bVar = this.organization) != null ? bVar.equals(aVar.g()) : aVar.g() == null) && ((str2 = this.installationUuid) != null ? str2.equals(aVar.f()) : aVar.f() == null) && ((str3 = this.developmentPlatform) != null ? str3.equals(aVar.b()) : aVar.b() == null)) {
            String str4 = this.developmentPlatformVersion;
            if (str4 == null) {
                if (aVar.c() == null) {
                    return true;
                }
            } else if (str4.equals(aVar.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @Nullable
    public String f() {
        return this.installationUuid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @Nullable
    public f0.e.a.b g() {
        return this.organization;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.a
    @NonNull
    public String h() {
        return this.version;
    }

    private i(String str, String str2, @Nullable String str3, @Nullable f0.e.a.b bVar, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        this.identifier = str;
        this.version = str2;
        this.displayVersion = str3;
        this.organization = bVar;
        this.installationUuid = str4;
        this.developmentPlatform = str5;
        this.developmentPlatformVersion = str6;
    }

    public int hashCode() {
        int iHashCode = (((this.identifier.hashCode() ^ 1000003) * 1000003) ^ this.version.hashCode()) * 1000003;
        String str = this.displayVersion;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        f0.e.a.b bVar = this.organization;
        int iHashCode3 = (iHashCode2 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        String str2 = this.installationUuid;
        int iHashCode4 = (iHashCode3 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.developmentPlatform;
        int iHashCode5 = (iHashCode4 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.developmentPlatformVersion;
        return iHashCode5 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "Application{identifier=" + this.identifier + ", version=" + this.version + ", displayVersion=" + this.displayVersion + ", organization=" + this.organization + ", installationUuid=" + this.installationUuid + ", developmentPlatform=" + this.developmentPlatform + ", developmentPlatformVersion=" + this.developmentPlatformVersion + "}";
    }
}

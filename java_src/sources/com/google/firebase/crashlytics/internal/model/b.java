package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class b extends f0 {
    private final f0.a appExitInfo;
    private final String appQualitySessionId;
    private final String buildVersion;
    private final String displayVersion;
    private final String firebaseInstallationId;
    private final String gmpAppId;
    private final String installationUuid;
    private final f0.d ndkPayload;
    private final int platform;
    private final String sdkVersion;
    private final f0.e session;

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.b$b, reason: collision with other inner class name */
    static final class C0234b extends f0.b {
        private f0.a appExitInfo;
        private String appQualitySessionId;
        private String buildVersion;
        private String displayVersion;
        private String firebaseInstallationId;
        private String gmpAppId;
        private String installationUuid;
        private f0.d ndkPayload;
        private Integer platform;
        private String sdkVersion;
        private f0.e session;

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b b(f0.a aVar) {
            this.appExitInfo = aVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b c(@Nullable String str) {
            this.appQualitySessionId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b f(@Nullable String str) {
            this.firebaseInstallationId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b i(f0.d dVar) {
            this.ndkPayload = dVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b l(f0.e eVar) {
            this.session = eVar;
            return this;
        }

        C0234b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0 a() {
            String str = "";
            if (this.sdkVersion == null) {
                str = " sdkVersion";
            }
            if (this.gmpAppId == null) {
                str = str + " gmpAppId";
            }
            if (this.platform == null) {
                str = str + " platform";
            }
            if (this.installationUuid == null) {
                str = str + " installationUuid";
            }
            if (this.buildVersion == null) {
                str = str + " buildVersion";
            }
            if (this.displayVersion == null) {
                str = str + " displayVersion";
            }
            if (str.isEmpty()) {
                return new b(this.sdkVersion, this.gmpAppId, this.platform.intValue(), this.installationUuid, this.firebaseInstallationId, this.appQualitySessionId, this.buildVersion, this.displayVersion, this.session, this.ndkPayload, this.appExitInfo);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b d(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.buildVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b e(String str) {
            if (str == null) {
                throw new NullPointerException("Null displayVersion");
            }
            this.displayVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b g(String str) {
            if (str == null) {
                throw new NullPointerException("Null gmpAppId");
            }
            this.gmpAppId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b h(String str) {
            if (str == null) {
                throw new NullPointerException("Null installationUuid");
            }
            this.installationUuid = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b k(String str) {
            if (str == null) {
                throw new NullPointerException("Null sdkVersion");
            }
            this.sdkVersion = str;
            return this;
        }

        private C0234b(f0 f0Var) {
            this.sdkVersion = f0Var.l();
            this.gmpAppId = f0Var.h();
            this.platform = Integer.valueOf(f0Var.k());
            this.installationUuid = f0Var.i();
            this.firebaseInstallationId = f0Var.g();
            this.appQualitySessionId = f0Var.d();
            this.buildVersion = f0Var.e();
            this.displayVersion = f0Var.f();
            this.session = f0Var.m();
            this.ndkPayload = f0Var.j();
            this.appExitInfo = f0Var.c();
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.b
        public f0.b j(int i10) {
            this.platform = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @Nullable
    public f0.a c() {
        return this.appExitInfo;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @Nullable
    public String d() {
        return this.appQualitySessionId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @NonNull
    public String e() {
        return this.buildVersion;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        f0.e eVar;
        f0.d dVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.sdkVersion.equals(f0Var.l()) && this.gmpAppId.equals(f0Var.h()) && this.platform == f0Var.k() && this.installationUuid.equals(f0Var.i()) && ((str = this.firebaseInstallationId) != null ? str.equals(f0Var.g()) : f0Var.g() == null) && ((str2 = this.appQualitySessionId) != null ? str2.equals(f0Var.d()) : f0Var.d() == null) && this.buildVersion.equals(f0Var.e()) && this.displayVersion.equals(f0Var.f()) && ((eVar = this.session) != null ? eVar.equals(f0Var.m()) : f0Var.m() == null) && ((dVar = this.ndkPayload) != null ? dVar.equals(f0Var.j()) : f0Var.j() == null)) {
            f0.a aVar = this.appExitInfo;
            if (aVar == null) {
                if (f0Var.c() == null) {
                    return true;
                }
            } else if (aVar.equals(f0Var.c())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @NonNull
    public String f() {
        return this.displayVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @Nullable
    public String g() {
        return this.firebaseInstallationId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @NonNull
    public String h() {
        return this.gmpAppId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @NonNull
    public String i() {
        return this.installationUuid;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @Nullable
    public f0.d j() {
        return this.ndkPayload;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    public int k() {
        return this.platform;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @NonNull
    public String l() {
        return this.sdkVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    @Nullable
    public f0.e m() {
        return this.session;
    }

    private b(String str, String str2, int i10, String str3, @Nullable String str4, @Nullable String str5, String str6, String str7, @Nullable f0.e eVar, @Nullable f0.d dVar, @Nullable f0.a aVar) {
        this.sdkVersion = str;
        this.gmpAppId = str2;
        this.platform = i10;
        this.installationUuid = str3;
        this.firebaseInstallationId = str4;
        this.appQualitySessionId = str5;
        this.buildVersion = str6;
        this.displayVersion = str7;
        this.session = eVar;
        this.ndkPayload = dVar;
        this.appExitInfo = aVar;
    }

    public int hashCode() {
        int iHashCode = (((((((this.sdkVersion.hashCode() ^ 1000003) * 1000003) ^ this.gmpAppId.hashCode()) * 1000003) ^ this.platform) * 1000003) ^ this.installationUuid.hashCode()) * 1000003;
        String str = this.firebaseInstallationId;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.appQualitySessionId;
        int iHashCode3 = (((((iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003) ^ this.buildVersion.hashCode()) * 1000003) ^ this.displayVersion.hashCode()) * 1000003;
        f0.e eVar = this.session;
        int iHashCode4 = (iHashCode3 ^ (eVar == null ? 0 : eVar.hashCode())) * 1000003;
        f0.d dVar = this.ndkPayload;
        int iHashCode5 = (iHashCode4 ^ (dVar == null ? 0 : dVar.hashCode())) * 1000003;
        f0.a aVar = this.appExitInfo;
        return iHashCode5 ^ (aVar != null ? aVar.hashCode() : 0);
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0
    protected f0.b n() {
        return new C0234b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.sdkVersion + ", gmpAppId=" + this.gmpAppId + ", platform=" + this.platform + ", installationUuid=" + this.installationUuid + ", firebaseInstallationId=" + this.firebaseInstallationId + ", appQualitySessionId=" + this.appQualitySessionId + ", buildVersion=" + this.buildVersion + ", displayVersion=" + this.displayVersion + ", session=" + this.session + ", ndkPayload=" + this.ndkPayload + ", appExitInfo=" + this.appExitInfo + "}";
    }
}

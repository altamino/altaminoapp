package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
final class z extends f0.e.AbstractC0252e {
    private final String buildVersion;
    private final boolean jailbroken;
    private final int platform;
    private final String version;

    static final class b extends f0.e.AbstractC0252e.a {
        private String buildVersion;
        private Boolean jailbroken;
        private Integer platform;
        private String version;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a
        public f0.e.AbstractC0252e a() {
            String str = "";
            if (this.platform == null) {
                str = " platform";
            }
            if (this.version == null) {
                str = str + " version";
            }
            if (this.buildVersion == null) {
                str = str + " buildVersion";
            }
            if (this.jailbroken == null) {
                str = str + " jailbroken";
            }
            if (str.isEmpty()) {
                return new z(this.platform.intValue(), this.version, this.buildVersion, this.jailbroken.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a
        public f0.e.AbstractC0252e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildVersion");
            }
            this.buildVersion = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a
        public f0.e.AbstractC0252e.a e(String str) {
            if (str == null) {
                throw new NullPointerException("Null version");
            }
            this.version = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a
        public f0.e.AbstractC0252e.a c(boolean z6) {
            this.jailbroken = Boolean.valueOf(z6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e.a
        public f0.e.AbstractC0252e.a d(int i10) {
            this.platform = Integer.valueOf(i10);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e
    @NonNull
    public String b() {
        return this.buildVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e
    public int c() {
        return this.platform;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e
    @NonNull
    public String d() {
        return this.version;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.AbstractC0252e
    public boolean e() {
        return this.jailbroken;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.AbstractC0252e)) {
            return false;
        }
        f0.e.AbstractC0252e abstractC0252e = (f0.e.AbstractC0252e) obj;
        return this.platform == abstractC0252e.c() && this.version.equals(abstractC0252e.d()) && this.buildVersion.equals(abstractC0252e.b()) && this.jailbroken == abstractC0252e.e();
    }

    private z(int i10, String str, String str2, boolean z6) {
        this.platform = i10;
        this.version = str;
        this.buildVersion = str2;
        this.jailbroken = z6;
    }

    public int hashCode() {
        return ((((((this.platform ^ 1000003) * 1000003) ^ this.version.hashCode()) * 1000003) ^ this.buildVersion.hashCode()) * 1000003) ^ (this.jailbroken ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.platform + ", version=" + this.version + ", buildVersion=" + this.buildVersion + ", jailbroken=" + this.jailbroken + "}";
    }
}

package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes10.dex */
final class d extends f0.a.AbstractC0235a {
    private final String arch;
    private final String buildId;
    private final String libraryName;

    static final class b extends f0.a.AbstractC0235a.AbstractC0236a {
        private String arch;
        private String buildId;
        private String libraryName;

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a.AbstractC0236a
        public f0.a.AbstractC0235a a() {
            String str = "";
            if (this.arch == null) {
                str = " arch";
            }
            if (this.libraryName == null) {
                str = str + " libraryName";
            }
            if (this.buildId == null) {
                str = str + " buildId";
            }
            if (str.isEmpty()) {
                return new d(this.arch, this.libraryName, this.buildId);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a.AbstractC0236a
        public f0.a.AbstractC0235a.AbstractC0236a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null arch");
            }
            this.arch = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a.AbstractC0236a
        public f0.a.AbstractC0235a.AbstractC0236a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null buildId");
            }
            this.buildId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a.AbstractC0236a
        public f0.a.AbstractC0235a.AbstractC0236a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null libraryName");
            }
            this.libraryName = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a
    @NonNull
    public String b() {
        return this.arch;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a
    @NonNull
    public String c() {
        return this.buildId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.a.AbstractC0235a
    @NonNull
    public String d() {
        return this.libraryName;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a.AbstractC0235a)) {
            return false;
        }
        f0.a.AbstractC0235a abstractC0235a = (f0.a.AbstractC0235a) obj;
        return this.arch.equals(abstractC0235a.b()) && this.libraryName.equals(abstractC0235a.d()) && this.buildId.equals(abstractC0235a.c());
    }

    private d(String str, String str2, String str3) {
        this.arch = str;
        this.libraryName = str2;
        this.buildId = str3;
    }

    public int hashCode() {
        return ((((this.arch.hashCode() ^ 1000003) * 1000003) ^ this.libraryName.hashCode()) * 1000003) ^ this.buildId.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.arch + ", libraryName=" + this.libraryName + ", buildId=" + this.buildId + "}";
    }
}

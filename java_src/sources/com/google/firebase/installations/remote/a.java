package com.google.firebase.installations.remote;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class a extends d {
    private final f authToken;
    private final String fid;
    private final String refreshToken;
    private final d.b responseCode;
    private final String uri;

    static final class b extends d.a {
        private f authToken;
        private String fid;
        private String refreshToken;
        private d.b responseCode;
        private String uri;

        @Override // com.google.firebase.installations.remote.d.a
        public d.a b(f fVar) {
            this.authToken = fVar;
            return this;
        }

        @Override // com.google.firebase.installations.remote.d.a
        public d.a c(String str) {
            this.fid = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.d.a
        public d.a d(String str) {
            this.refreshToken = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.d.a
        public d.a e(d.b bVar) {
            this.responseCode = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.remote.d.a
        public d.a f(String str) {
            this.uri = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.d.a
        public d a() {
            return new a(this.uri, this.fid, this.refreshToken, this.authToken, this.responseCode);
        }

        b() {
        }
    }

    @Override // com.google.firebase.installations.remote.d
    @Nullable
    public f b() {
        return this.authToken;
    }

    @Override // com.google.firebase.installations.remote.d
    @Nullable
    public String c() {
        return this.fid;
    }

    @Override // com.google.firebase.installations.remote.d
    @Nullable
    public String d() {
        return this.refreshToken;
    }

    @Override // com.google.firebase.installations.remote.d
    @Nullable
    public d.b e() {
        return this.responseCode;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.uri;
        if (str != null ? str.equals(dVar.f()) : dVar.f() == null) {
            String str2 = this.fid;
            if (str2 != null ? str2.equals(dVar.c()) : dVar.c() == null) {
                String str3 = this.refreshToken;
                if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
                    f fVar = this.authToken;
                    if (fVar != null ? fVar.equals(dVar.b()) : dVar.b() == null) {
                        d.b bVar = this.responseCode;
                        if (bVar == null) {
                            if (dVar.e() == null) {
                                return true;
                            }
                        } else if (bVar.equals(dVar.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.firebase.installations.remote.d
    @Nullable
    public String f() {
        return this.uri;
    }

    private a(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable f fVar, @Nullable d.b bVar) {
        this.uri = str;
        this.fid = str2;
        this.refreshToken = str3;
        this.authToken = fVar;
        this.responseCode = bVar;
    }

    public int hashCode() {
        String str = this.uri;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.fid;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.refreshToken;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        f fVar = this.authToken;
        int iHashCode4 = (iHashCode3 ^ (fVar == null ? 0 : fVar.hashCode())) * 1000003;
        d.b bVar = this.responseCode;
        return iHashCode4 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.uri + ", fid=" + this.fid + ", refreshToken=" + this.refreshToken + ", authToken=" + this.authToken + ", responseCode=" + this.responseCode + "}";
    }
}

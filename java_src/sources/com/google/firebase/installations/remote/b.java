package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class b extends f {
    private final f.b responseCode;
    private final String token;
    private final long tokenExpirationTimestamp;

    /* JADX INFO: renamed from: com.google.firebase.installations.remote.b$b, reason: collision with other inner class name */
    static final class C0258b extends f.a {
        private f.b responseCode;
        private String token;
        private Long tokenExpirationTimestamp;

        @Override // com.google.firebase.installations.remote.f.a
        public f.a b(f.b bVar) {
            this.responseCode = bVar;
            return this;
        }

        @Override // com.google.firebase.installations.remote.f.a
        public f.a c(String str) {
            this.token = str;
            return this;
        }

        @Override // com.google.firebase.installations.remote.f.a
        public f a() {
            String str = "";
            if (this.tokenExpirationTimestamp == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new b(this.token, this.tokenExpirationTimestamp.longValue(), this.responseCode);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        C0258b() {
        }

        @Override // com.google.firebase.installations.remote.f.a
        public f.a d(long j6) {
            this.tokenExpirationTimestamp = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.installations.remote.f
    @Nullable
    public f.b b() {
        return this.responseCode;
    }

    @Override // com.google.firebase.installations.remote.f
    @Nullable
    public String c() {
        return this.token;
    }

    @Override // com.google.firebase.installations.remote.f
    @NonNull
    public long d() {
        return this.tokenExpirationTimestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        String str = this.token;
        if (str != null ? str.equals(fVar.c()) : fVar.c() == null) {
            if (this.tokenExpirationTimestamp == fVar.d()) {
                f.b bVar = this.responseCode;
                if (bVar == null) {
                    if (fVar.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(fVar.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    private b(@Nullable String str, long j6, @Nullable f.b bVar) {
        this.token = str;
        this.tokenExpirationTimestamp = j6;
        this.responseCode = bVar;
    }

    public int hashCode() {
        String str = this.token;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j6 = this.tokenExpirationTimestamp;
        int i10 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        f.b bVar = this.responseCode;
        return i10 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.token + ", tokenExpirationTimestamp=" + this.tokenExpirationTimestamp + ", responseCode=" + this.responseCode + "}";
    }
}

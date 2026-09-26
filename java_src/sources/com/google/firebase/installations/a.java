package com.google.firebase.installations;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes10.dex */
final class a extends m {
    private final String token;
    private final long tokenCreationTimestamp;
    private final long tokenExpirationTimestamp;

    static final class b extends m.a {
        private String token;
        private Long tokenCreationTimestamp;
        private Long tokenExpirationTimestamp;

        @Override // com.google.firebase.installations.m.a
        public m a() {
            String str = "";
            if (this.token == null) {
                str = " token";
            }
            if (this.tokenExpirationTimestamp == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.tokenCreationTimestamp == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new a(this.token, this.tokenExpirationTimestamp.longValue(), this.tokenCreationTimestamp.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.installations.m.a
        public m.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.token = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.installations.m.a
        public m.a c(long j6) {
            this.tokenCreationTimestamp = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.installations.m.a
        public m.a d(long j6) {
            this.tokenExpirationTimestamp = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.installations.m
    @NonNull
    public String b() {
        return this.token;
    }

    @Override // com.google.firebase.installations.m
    @NonNull
    public long c() {
        return this.tokenCreationTimestamp;
    }

    @Override // com.google.firebase.installations.m
    @NonNull
    public long d() {
        return this.tokenExpirationTimestamp;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.token.equals(mVar.b()) && this.tokenExpirationTimestamp == mVar.d() && this.tokenCreationTimestamp == mVar.c();
    }

    private a(String str, long j6, long j10) {
        this.token = str;
        this.tokenExpirationTimestamp = j6;
        this.tokenCreationTimestamp = j10;
    }

    public int hashCode() {
        int iHashCode = (this.token.hashCode() ^ 1000003) * 1000003;
        long j6 = this.tokenExpirationTimestamp;
        long j10 = this.tokenCreationTimestamp;
        return ((iHashCode ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.token + ", tokenExpirationTimestamp=" + this.tokenExpirationTimestamp + ", tokenCreationTimestamp=" + this.tokenCreationTimestamp + "}";
    }
}

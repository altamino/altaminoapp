package q4;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class a extends d {
    private final String authToken;
    private final long expiresInSecs;
    private final String firebaseInstallationId;
    private final String fisError;
    private final String refreshToken;
    private final c.a registrationStatus;
    private final long tokenCreationEpochInSecs;

    static final class b extends d.a {
        private String authToken;
        private Long expiresInSecs;
        private String firebaseInstallationId;
        private String fisError;
        private String refreshToken;
        private c.a registrationStatus;
        private Long tokenCreationEpochInSecs;

        @Override // q4.d.a
        public d.a b(@Nullable String str) {
            this.authToken = str;
            return this;
        }

        @Override // q4.d.a
        public d.a d(String str) {
            this.firebaseInstallationId = str;
            return this;
        }

        @Override // q4.d.a
        public d.a e(@Nullable String str) {
            this.fisError = str;
            return this;
        }

        @Override // q4.d.a
        public d.a f(@Nullable String str) {
            this.refreshToken = str;
            return this;
        }

        b() {
        }

        @Override // q4.d.a
        public d a() {
            String str = "";
            if (this.registrationStatus == null) {
                str = " registrationStatus";
            }
            if (this.expiresInSecs == null) {
                str = str + " expiresInSecs";
            }
            if (this.tokenCreationEpochInSecs == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new a(this.firebaseInstallationId, this.registrationStatus, this.authToken, this.refreshToken, this.expiresInSecs.longValue(), this.tokenCreationEpochInSecs.longValue(), this.fisError);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // q4.d.a
        public d.a g(c.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.registrationStatus = aVar;
            return this;
        }

        private b(d dVar) {
            this.firebaseInstallationId = dVar.d();
            this.registrationStatus = dVar.g();
            this.authToken = dVar.b();
            this.refreshToken = dVar.f();
            this.expiresInSecs = Long.valueOf(dVar.c());
            this.tokenCreationEpochInSecs = Long.valueOf(dVar.h());
            this.fisError = dVar.e();
        }

        @Override // q4.d.a
        public d.a c(long j6) {
            this.expiresInSecs = Long.valueOf(j6);
            return this;
        }

        @Override // q4.d.a
        public d.a h(long j6) {
            this.tokenCreationEpochInSecs = Long.valueOf(j6);
            return this;
        }
    }

    @Override // q4.d
    @Nullable
    public String b() {
        return this.authToken;
    }

    @Override // q4.d
    public long c() {
        return this.expiresInSecs;
    }

    @Override // q4.d
    @Nullable
    public String d() {
        return this.firebaseInstallationId;
    }

    @Override // q4.d
    @Nullable
    public String e() {
        return this.fisError;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str3 = this.firebaseInstallationId;
        if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
            if (this.registrationStatus.equals(dVar.g()) && ((str = this.authToken) != null ? str.equals(dVar.b()) : dVar.b() == null) && ((str2 = this.refreshToken) != null ? str2.equals(dVar.f()) : dVar.f() == null) && this.expiresInSecs == dVar.c() && this.tokenCreationEpochInSecs == dVar.h()) {
                String str4 = this.fisError;
                if (str4 == null) {
                    if (dVar.e() == null) {
                        return true;
                    }
                } else if (str4.equals(dVar.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // q4.d
    @Nullable
    public String f() {
        return this.refreshToken;
    }

    @Override // q4.d
    @NonNull
    public c.a g() {
        return this.registrationStatus;
    }

    @Override // q4.d
    public long h() {
        return this.tokenCreationEpochInSecs;
    }

    private a(@Nullable String str, c.a aVar, @Nullable String str2, @Nullable String str3, long j6, long j10, @Nullable String str4) {
        this.firebaseInstallationId = str;
        this.registrationStatus = aVar;
        this.authToken = str2;
        this.refreshToken = str3;
        this.expiresInSecs = j6;
        this.tokenCreationEpochInSecs = j10;
        this.fisError = str4;
    }

    public int hashCode() {
        String str = this.firebaseInstallationId;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.registrationStatus.hashCode()) * 1000003;
        String str2 = this.authToken;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.refreshToken;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j6 = this.expiresInSecs;
        int i10 = (iHashCode3 ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        long j10 = this.tokenCreationEpochInSecs;
        int i11 = (i10 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        String str4 = this.fisError;
        return i11 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // q4.d
    public d.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.firebaseInstallationId + ", registrationStatus=" + this.registrationStatus + ", authToken=" + this.authToken + ", refreshToken=" + this.refreshToken + ", expiresInSecs=" + this.expiresInSecs + ", tokenCreationEpochInSecs=" + this.tokenCreationEpochInSecs + ", fisError=" + this.fisError + "}";
    }
}

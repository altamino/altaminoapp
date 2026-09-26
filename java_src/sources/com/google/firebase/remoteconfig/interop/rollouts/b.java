package com.google.firebase.remoteconfig.interop.rollouts;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
final class b extends d {
    private final String parameterKey;
    private final String parameterValue;
    private final String rolloutId;
    private final long templateVersion;
    private final String variantId;

    /* JADX INFO: renamed from: com.google.firebase.remoteconfig.interop.rollouts.b$b, reason: collision with other inner class name */
    static final class C0265b extends d.a {
        private String parameterKey;
        private String parameterValue;
        private String rolloutId;
        private byte set$0;
        private long templateVersion;
        private String variantId;

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d.a e(long j6) {
            this.templateVersion = j6;
            this.set$0 = (byte) (this.set$0 | 1);
            return this;
        }

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d a() {
            if (this.set$0 == 1 && this.rolloutId != null && this.variantId != null && this.parameterKey != null && this.parameterValue != null) {
                return new b(this.rolloutId, this.variantId, this.parameterKey, this.parameterValue, this.templateVersion);
            }
            StringBuilder sb = new StringBuilder();
            if (this.rolloutId == null) {
                sb.append(" rolloutId");
            }
            if (this.variantId == null) {
                sb.append(" variantId");
            }
            if (this.parameterKey == null) {
                sb.append(" parameterKey");
            }
            if (this.parameterValue == null) {
                sb.append(" parameterValue");
            }
            if ((1 & this.set$0) == 0) {
                sb.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb));
        }

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.parameterKey = str;
            return this;
        }

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.parameterValue = str;
            return this;
        }

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d.a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.rolloutId = str;
            return this;
        }

        @Override // com.google.firebase.remoteconfig.interop.rollouts.d.a
        public d.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.variantId = str;
            return this;
        }

        C0265b() {
        }
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.d
    @NonNull
    public String b() {
        return this.parameterKey;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.d
    @NonNull
    public String c() {
        return this.parameterValue;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.d
    @NonNull
    public String d() {
        return this.rolloutId;
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.d
    public long e() {
        return this.templateVersion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.rolloutId.equals(dVar.d()) && this.variantId.equals(dVar.f()) && this.parameterKey.equals(dVar.b()) && this.parameterValue.equals(dVar.c()) && this.templateVersion == dVar.e();
    }

    @Override // com.google.firebase.remoteconfig.interop.rollouts.d
    @NonNull
    public String f() {
        return this.variantId;
    }

    private b(String str, String str2, String str3, String str4, long j6) {
        this.rolloutId = str;
        this.variantId = str2;
        this.parameterKey = str3;
        this.parameterValue = str4;
        this.templateVersion = j6;
    }

    public int hashCode() {
        int iHashCode = (((((((this.rolloutId.hashCode() ^ 1000003) * 1000003) ^ this.variantId.hashCode()) * 1000003) ^ this.parameterKey.hashCode()) * 1000003) ^ this.parameterValue.hashCode()) * 1000003;
        long j6 = this.templateVersion;
        return iHashCode ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.rolloutId + ", variantId=" + this.variantId + ", parameterKey=" + this.parameterKey + ", parameterValue=" + this.parameterValue + ", templateVersion=" + this.templateVersion + "}";
    }
}

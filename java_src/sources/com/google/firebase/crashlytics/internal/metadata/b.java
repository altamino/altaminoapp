package com.google.firebase.crashlytics.internal.metadata;

/* JADX INFO: loaded from: classes4.dex */
final class b extends i {
    private final String parameterKey;
    private final String parameterValue;
    private final String rolloutId;
    private final long templateVersion;
    private final String variantId;

    @Override // com.google.firebase.crashlytics.internal.metadata.i
    public String c() {
        return this.parameterKey;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.i
    public String d() {
        return this.parameterValue;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.i
    public String e() {
        return this.rolloutId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.rolloutId.equals(iVar.e()) && this.parameterKey.equals(iVar.c()) && this.parameterValue.equals(iVar.d()) && this.variantId.equals(iVar.g()) && this.templateVersion == iVar.f();
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.i
    public long f() {
        return this.templateVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.metadata.i
    public String g() {
        return this.variantId;
    }

    public int hashCode() {
        int iHashCode = (((((((this.rolloutId.hashCode() ^ 1000003) * 1000003) ^ this.parameterKey.hashCode()) * 1000003) ^ this.parameterValue.hashCode()) * 1000003) ^ this.variantId.hashCode()) * 1000003;
        long j6 = this.templateVersion;
        return iHashCode ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutId=" + this.rolloutId + ", parameterKey=" + this.parameterKey + ", parameterValue=" + this.parameterValue + ", variantId=" + this.variantId + ", templateVersion=" + this.templateVersion + "}";
    }

    b(String str, String str2, String str3, String str4, long j6) {
        if (str != null) {
            this.rolloutId = str;
            if (str2 != null) {
                this.parameterKey = str2;
                if (str3 != null) {
                    this.parameterValue = str3;
                    if (str4 != null) {
                        this.variantId = str4;
                        this.templateVersion = j6;
                        return;
                    }
                    throw new NullPointerException("Null variantId");
                }
                throw new NullPointerException("Null parameterValue");
            }
            throw new NullPointerException("Null parameterKey");
        }
        throw new NullPointerException("Null rolloutId");
    }
}

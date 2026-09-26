package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
final class w extends f0.e.d.AbstractC0251e {
    private final String parameterKey;
    private final String parameterValue;
    private final f0.e.d.AbstractC0251e.b rolloutVariant;
    private final long templateVersion;

    static final class b extends f0.e.d.AbstractC0251e.a {
        private String parameterKey;
        private String parameterValue;
        private f0.e.d.AbstractC0251e.b rolloutVariant;
        private Long templateVersion;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.a
        public f0.e.d.AbstractC0251e a() {
            String str = "";
            if (this.rolloutVariant == null) {
                str = " rolloutVariant";
            }
            if (this.parameterKey == null) {
                str = str + " parameterKey";
            }
            if (this.parameterValue == null) {
                str = str + " parameterValue";
            }
            if (this.templateVersion == null) {
                str = str + " templateVersion";
            }
            if (str.isEmpty()) {
                return new w(this.rolloutVariant, this.parameterKey, this.parameterValue, this.templateVersion.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.a
        public f0.e.d.AbstractC0251e.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterKey");
            }
            this.parameterKey = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.a
        public f0.e.d.AbstractC0251e.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null parameterValue");
            }
            this.parameterValue = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.a
        public f0.e.d.AbstractC0251e.a d(f0.e.d.AbstractC0251e.b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Null rolloutVariant");
            }
            this.rolloutVariant = bVar;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.a
        public f0.e.d.AbstractC0251e.a e(long j6) {
            this.templateVersion = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e
    @NonNull
    public String b() {
        return this.parameterKey;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e
    @NonNull
    public String c() {
        return this.parameterValue;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e
    @NonNull
    public f0.e.d.AbstractC0251e.b d() {
        return this.rolloutVariant;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e
    @NonNull
    public long e() {
        return this.templateVersion;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0251e)) {
            return false;
        }
        f0.e.d.AbstractC0251e abstractC0251e = (f0.e.d.AbstractC0251e) obj;
        return this.rolloutVariant.equals(abstractC0251e.d()) && this.parameterKey.equals(abstractC0251e.b()) && this.parameterValue.equals(abstractC0251e.c()) && this.templateVersion == abstractC0251e.e();
    }

    private w(f0.e.d.AbstractC0251e.b bVar, String str, String str2, long j6) {
        this.rolloutVariant = bVar;
        this.parameterKey = str;
        this.parameterValue = str2;
        this.templateVersion = j6;
    }

    public int hashCode() {
        int iHashCode = (((((this.rolloutVariant.hashCode() ^ 1000003) * 1000003) ^ this.parameterKey.hashCode()) * 1000003) ^ this.parameterValue.hashCode()) * 1000003;
        long j6 = this.templateVersion;
        return iHashCode ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.rolloutVariant + ", parameterKey=" + this.parameterKey + ", parameterValue=" + this.parameterValue + ", templateVersion=" + this.templateVersion + "}";
    }
}

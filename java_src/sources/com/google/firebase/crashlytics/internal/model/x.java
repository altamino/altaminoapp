package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
final class x extends f0.e.d.AbstractC0251e.b {
    private final String rolloutId;
    private final String variantId;

    static final class b extends f0.e.d.AbstractC0251e.b.a {
        private String rolloutId;
        private String variantId;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.b.a
        public f0.e.d.AbstractC0251e.b a() {
            String str = "";
            if (this.rolloutId == null) {
                str = " rolloutId";
            }
            if (this.variantId == null) {
                str = str + " variantId";
            }
            if (str.isEmpty()) {
                return new x(this.rolloutId, this.variantId);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.b.a
        public f0.e.d.AbstractC0251e.b.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null rolloutId");
            }
            this.rolloutId = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.b.a
        public f0.e.d.AbstractC0251e.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null variantId");
            }
            this.variantId = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.b
    @NonNull
    public String b() {
        return this.rolloutId;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.AbstractC0251e.b
    @NonNull
    public String c() {
        return this.variantId;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0251e.b)) {
            return false;
        }
        f0.e.d.AbstractC0251e.b bVar = (f0.e.d.AbstractC0251e.b) obj;
        return this.rolloutId.equals(bVar.b()) && this.variantId.equals(bVar.c());
    }

    private x(String str, String str2) {
        this.rolloutId = str;
        this.variantId = str2;
    }

    public int hashCode() {
        return ((this.rolloutId.hashCode() ^ 1000003) * 1000003) ^ this.variantId.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.rolloutId + ", variantId=" + this.variantId + "}";
    }
}

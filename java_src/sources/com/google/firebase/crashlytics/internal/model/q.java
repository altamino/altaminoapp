package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
final class q extends f0.e.d.a.b.AbstractC0243d {
    private final long address;
    private final String code;
    private final String name;

    static final class b extends f0.e.d.a.b.AbstractC0243d.AbstractC0244a {
        private Long address;
        private String code;
        private String name;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d.AbstractC0244a
        public f0.e.d.a.b.AbstractC0243d a() {
            String str = "";
            if (this.name == null) {
                str = " name";
            }
            if (this.code == null) {
                str = str + " code";
            }
            if (this.address == null) {
                str = str + " address";
            }
            if (str.isEmpty()) {
                return new q(this.name, this.code, this.address.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d.AbstractC0244a
        public f0.e.d.a.b.AbstractC0243d.AbstractC0244a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null code");
            }
            this.code = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d.AbstractC0244a
        public f0.e.d.a.b.AbstractC0243d.AbstractC0244a d(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.name = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d.AbstractC0244a
        public f0.e.d.a.b.AbstractC0243d.AbstractC0244a b(long j6) {
            this.address = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d
    @NonNull
    public long b() {
        return this.address;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d
    @NonNull
    public String c() {
        return this.code;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0243d
    @NonNull
    public String d() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0243d)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0243d abstractC0243d = (f0.e.d.a.b.AbstractC0243d) obj;
        return this.name.equals(abstractC0243d.d()) && this.code.equals(abstractC0243d.c()) && this.address == abstractC0243d.b();
    }

    private q(String str, String str2, long j6) {
        this.name = str;
        this.code = str2;
        this.address = j6;
    }

    public int hashCode() {
        int iHashCode = (((this.name.hashCode() ^ 1000003) * 1000003) ^ this.code.hashCode()) * 1000003;
        long j6 = this.address;
        return iHashCode ^ ((int) (j6 ^ (j6 >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.name + ", code=" + this.code + ", address=" + this.address + "}";
    }
}

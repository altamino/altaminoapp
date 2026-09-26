package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class o extends f0.e.d.a.b.AbstractC0239a {
    private final long baseAddress;
    private final String name;
    private final long size;
    private final String uuid;

    static final class b extends f0.e.d.a.b.AbstractC0239a.AbstractC0240a {
        private Long baseAddress;
        private String name;
        private Long size;
        private String uuid;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.AbstractC0240a
        public f0.e.d.a.b.AbstractC0239a.AbstractC0240a e(@Nullable String str) {
            this.uuid = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.AbstractC0240a
        public f0.e.d.a.b.AbstractC0239a a() {
            String str = "";
            if (this.baseAddress == null) {
                str = " baseAddress";
            }
            if (this.size == null) {
                str = str + " size";
            }
            if (this.name == null) {
                str = str + " name";
            }
            if (str.isEmpty()) {
                return new o(this.baseAddress.longValue(), this.size.longValue(), this.name, this.uuid);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.AbstractC0240a
        public f0.e.d.a.b.AbstractC0239a.AbstractC0240a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null name");
            }
            this.name = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.AbstractC0240a
        public f0.e.d.a.b.AbstractC0239a.AbstractC0240a b(long j6) {
            this.baseAddress = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a.AbstractC0240a
        public f0.e.d.a.b.AbstractC0239a.AbstractC0240a d(long j6) {
            this.size = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a
    @NonNull
    public long b() {
        return this.baseAddress;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a
    @NonNull
    public String c() {
        return this.name;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a
    public long d() {
        return this.size;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0239a
    @Nullable
    public String e() {
        return this.uuid;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0239a)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0239a abstractC0239a = (f0.e.d.a.b.AbstractC0239a) obj;
        if (this.baseAddress == abstractC0239a.b() && this.size == abstractC0239a.d() && this.name.equals(abstractC0239a.c())) {
            String str = this.uuid;
            if (str == null) {
                if (abstractC0239a.e() == null) {
                    return true;
                }
            } else if (str.equals(abstractC0239a.e())) {
                return true;
            }
        }
        return false;
    }

    private o(long j6, long j10, String str, @Nullable String str2) {
        this.baseAddress = j6;
        this.size = j10;
        this.name = str;
        this.uuid = str2;
    }

    public int hashCode() {
        long j6 = this.baseAddress;
        long j10 = this.size;
        int iHashCode = (((((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.name.hashCode()) * 1000003;
        String str = this.uuid;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.baseAddress + ", size=" + this.size + ", name=" + this.name + ", uuid=" + this.uuid + "}";
    }
}

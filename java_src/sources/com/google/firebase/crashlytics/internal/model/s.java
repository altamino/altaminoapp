package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class s extends f0.e.d.a.b.AbstractC0245e.AbstractC0247b {
    private final String file;
    private final int importance;
    private final long offset;
    private final long pc;
    private final String symbol;

    static final class b extends f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a {
        private String file;
        private Integer importance;
        private Long offset;
        private Long pc;
        private String symbol;

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a b(String str) {
            this.file = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b a() {
            String str = "";
            if (this.pc == null) {
                str = " pc";
            }
            if (this.symbol == null) {
                str = str + " symbol";
            }
            if (this.offset == null) {
                str = str + " offset";
            }
            if (this.importance == null) {
                str = str + " importance";
            }
            if (str.isEmpty()) {
                return new s(this.pc.longValue(), this.symbol, this.file, this.offset.longValue(), this.importance.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null symbol");
            }
            this.symbol = str;
            return this;
        }

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a c(int i10) {
            this.importance = Integer.valueOf(i10);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a d(long j6) {
            this.offset = Long.valueOf(j6);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a
        public f0.e.d.a.b.AbstractC0245e.AbstractC0247b.AbstractC0248a e(long j6) {
            this.pc = Long.valueOf(j6);
            return this;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b
    @Nullable
    public String b() {
        return this.file;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b
    public int c() {
        return this.importance;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b
    public long d() {
        return this.offset;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b
    public long e() {
        return this.pc;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0245e.AbstractC0247b)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0245e.AbstractC0247b abstractC0247b = (f0.e.d.a.b.AbstractC0245e.AbstractC0247b) obj;
        return this.pc == abstractC0247b.e() && this.symbol.equals(abstractC0247b.f()) && ((str = this.file) != null ? str.equals(abstractC0247b.b()) : abstractC0247b.b() == null) && this.offset == abstractC0247b.d() && this.importance == abstractC0247b.c();
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.e.d.a.b.AbstractC0245e.AbstractC0247b
    @NonNull
    public String f() {
        return this.symbol;
    }

    private s(long j6, String str, @Nullable String str2, long j10, int i10) {
        this.pc = j6;
        this.symbol = str;
        this.file = str2;
        this.offset = j10;
        this.importance = i10;
    }

    public int hashCode() {
        long j6 = this.pc;
        int iHashCode = (((((int) (j6 ^ (j6 >>> 32))) ^ 1000003) * 1000003) ^ this.symbol.hashCode()) * 1000003;
        String str = this.file;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j10 = this.offset;
        return ((iHashCode2 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.importance;
    }

    public String toString() {
        return "Frame{pc=" + this.pc + ", symbol=" + this.symbol + ", file=" + this.file + ", offset=" + this.offset + ", importance=" + this.importance + "}";
    }
}

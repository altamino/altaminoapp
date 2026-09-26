package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
final class g extends f0.d.b {
    private final byte[] contents;
    private final String filename;

    static final class b extends f0.d.b.a {
        private byte[] contents;
        private String filename;

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.b.a
        public f0.d.b a() {
            String str = "";
            if (this.filename == null) {
                str = " filename";
            }
            if (this.contents == null) {
                str = str + " contents";
            }
            if (str.isEmpty()) {
                return new g(this.filename, this.contents);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.b.a
        public f0.d.b.a b(byte[] bArr) {
            if (bArr == null) {
                throw new NullPointerException("Null contents");
            }
            this.contents = bArr;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.f0.d.b.a
        public f0.d.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null filename");
            }
            this.filename = str;
            return this;
        }

        b() {
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.d.b
    @NonNull
    public byte[] b() {
        return this.contents;
    }

    @Override // com.google.firebase.crashlytics.internal.model.f0.d.b
    @NonNull
    public String c() {
        return this.filename;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d.b)) {
            return false;
        }
        f0.d.b bVar = (f0.d.b) obj;
        if (this.filename.equals(bVar.c())) {
            if (Arrays.equals(this.contents, bVar instanceof g ? ((g) bVar).contents : bVar.b())) {
                return true;
            }
        }
        return false;
    }

    private g(String str, byte[] bArr) {
        this.filename = str;
        this.contents = bArr;
    }

    public int hashCode() {
        return ((this.filename.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.contents);
    }

    public String toString() {
        return "File{filename=" + this.filename + ", contents=" + Arrays.toString(this.contents) + "}";
    }
}

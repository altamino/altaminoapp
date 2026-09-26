package com.google.firebase.encoders.proto;

import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes9.dex */
public final class a {
    private d.a intEncoding = d.a.DEFAULT;
    private int tag;

    /* JADX INFO: renamed from: com.google.firebase.encoders.proto.a$a, reason: collision with other inner class name */
    private static final class C0255a implements d {
        private final d.a intEncoding;
        private final int tag;

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return d.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.tag == dVar.tag() && this.intEncoding.equals(dVar.intEncoding());
        }

        @Override // com.google.firebase.encoders.proto.d
        public d.a intEncoding() {
            return this.intEncoding;
        }

        @Override // com.google.firebase.encoders.proto.d
        public int tag() {
            return this.tag;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.tag + "intEncoding=" + this.intEncoding + ')';
        }

        C0255a(int i10, d.a aVar) {
            this.tag = i10;
            this.intEncoding = aVar;
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.tag) + (this.intEncoding.hashCode() ^ 2041407134);
        }
    }

    public a c(int i10) {
        this.tag = i10;
        return this;
    }

    public static a b() {
        return new a();
    }

    public d a() {
        return new C0255a(this.tag, this.intEncoding);
    }
}

package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class n extends z {
    static final m0 TYPE = new a(n.class, 22);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return n.w(r1Var.z());
        }
    }

    n(String str, boolean z6) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        if (z6 && !y(str)) {
            throw new IllegalArgumentException("'string' contains illegal characters");
        }
        this.contents = org.bouncycastle.util.h.e(str);
    }

    static n w(byte[] bArr) {
        return new o1(bArr, false);
    }

    public static boolean y(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > 127) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof n) {
            return org.bouncycastle.util.a.a(this.contents, ((n) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 22, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    final int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    public String toString() {
        return x();
    }

    public final String x() {
        return org.bouncycastle.util.h.b(this.contents);
    }

    n(byte[] bArr, boolean z6) {
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
    }
}

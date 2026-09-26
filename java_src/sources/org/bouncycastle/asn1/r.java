package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class r extends z {
    static final m0 TYPE = new a(r.class, 18);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return r.w(r1Var.z());
        }
    }

    r(String str, boolean z6) {
        if (z6 && !y(str)) {
            throw new IllegalArgumentException("string contains illegal characters");
        }
        this.contents = org.bouncycastle.util.h.e(str);
    }

    static r w(byte[] bArr) {
        return new q1(bArr, false);
    }

    public static boolean y(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char cCharAt = str.charAt(length);
            if (cCharAt > 127) {
                return false;
            }
            if (('0' > cCharAt || cCharAt > '9') && cCharAt != ' ') {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof r) {
            return org.bouncycastle.util.a.a(this.contents, ((r) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 18, this.contents);
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

    r(byte[] bArr, boolean z6) {
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
    }
}

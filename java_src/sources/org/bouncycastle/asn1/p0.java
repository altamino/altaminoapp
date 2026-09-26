package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class p0 extends z {
    static final m0 TYPE = new a(p0.class, 26);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return p0.w(r1Var.z());
        }
    }

    p0(String str) {
        this.contents = org.bouncycastle.util.h.e(str);
    }

    static p0 w(byte[] bArr) {
        return new c2(bArr, false);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof p0) {
            return org.bouncycastle.util.a.a(this.contents, ((p0) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 26, this.contents);
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

    p0(byte[] bArr, boolean z6) {
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
    }
}

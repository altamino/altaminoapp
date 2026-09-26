package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public abstract class m extends z {
    static final m0 TYPE = new a(m.class, 25);
    final byte[] contents;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return m.w(r1Var.z());
        }
    }

    m(byte[] bArr, boolean z6) {
        if (bArr == null) {
            throw new NullPointerException("'contents' cannot be null");
        }
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr;
    }

    static m w(byte[] bArr) {
        return new n1(bArr, false);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof m) {
            return org.bouncycastle.util.a.a(this.contents, ((m) zVar).contents);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.m(this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 25, this.contents);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    final int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }
}

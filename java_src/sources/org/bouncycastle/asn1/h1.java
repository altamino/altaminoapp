package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class h1 extends c {
    public h1(byte b7, int i10) {
        super(b7, i10);
    }

    public static h1 E(c cVar) {
        return (h1) cVar.u();
    }

    static h1 F(v vVar) {
        return new h1(vVar.z(), true);
    }

    public static h1 G(Object obj) {
        if (obj == null || (obj instanceof h1)) {
            return (h1) obj;
        }
        if (obj instanceof c) {
            return E((c) obj);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return E((c) z.t((byte[]) obj));
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    public static h1 H(h0 h0Var, boolean z6) {
        z zVarD = h0Var.D();
        return (z6 || (zVarD instanceof h1)) ? G(zVarD) : F(v.x(zVarD));
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        byte[] bArr = this.contents;
        int i10 = bArr[0] & 255;
        int length = bArr.length - 1;
        byte b7 = bArr[length];
        byte b10 = (byte) ((255 << i10) & b7);
        if (b7 == b10) {
            xVar.o(z6, 3, bArr);
        } else {
            xVar.q(z6, 3, bArr, 0, length, b10);
        }
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.contents.length);
    }

    @Override // org.bouncycastle.asn1.c, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.c, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public h1(int i10) {
        super(c.y(i10), c.C(i10));
    }

    public h1(f fVar) throws IOException {
        super(fVar.g().a("DER"), 0);
    }

    public h1(byte[] bArr) {
        this(bArr, 0);
    }

    public h1(byte[] bArr, int i10) {
        super(bArr, i10);
    }

    h1(byte[] bArr, boolean z6) {
        super(bArr, z6);
    }
}

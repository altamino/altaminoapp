package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class r1 extends v {
    public r1(f fVar) throws IOException {
        super(fVar.g().a("DER"));
    }

    static void A(x xVar, boolean z6, byte[] bArr, int i10, int i11) throws IOException {
        xVar.p(z6, 4, bArr, i10, i11);
    }

    static int B(boolean z6, int i10) {
        return x.g(z6, i10);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 4, this.string);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, this.string.length);
    }

    @Override // org.bouncycastle.asn1.v, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.v, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public r1(byte[] bArr) {
        super(bArr);
    }
}

package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class x0 extends c0 {
    public x0() {
    }

    @Override // org.bouncycastle.asn1.c0
    c B() {
        return new s0(w());
    }

    @Override // org.bouncycastle.asn1.c0
    j C() {
        return ((c0) v()).C();
    }

    @Override // org.bouncycastle.asn1.c0
    v D() {
        return new v0(x());
    }

    @Override // org.bouncycastle.asn1.c0
    d0 E() {
        return new z0(false, F());
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.r(z6, 48, this.elements);
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        int iR = z6 ? 4 : 3;
        int length = this.elements.length;
        for (int i10 = 0; i10 < length; i10++) {
            iR += this.elements[i10].g().r(true);
        }
        return iR;
    }

    public x0(f fVar) {
        super(fVar);
    }

    public x0(g gVar) {
        super(gVar);
    }

    public x0(f[] fVarArr) {
        super(fVarArr);
    }
}

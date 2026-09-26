package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class j2 extends c0 {
    private int contentsLength;

    public j2() {
        this.contentsLength = -1;
    }

    private int G() throws IOException {
        if (this.contentsLength < 0) {
            int length = this.elements.length;
            int iR = 0;
            for (int i10 = 0; i10 < length; i10++) {
                iR += this.elements[i10].g().v().r(true);
            }
            this.contentsLength = iR;
        }
        return this.contentsLength;
    }

    @Override // org.bouncycastle.asn1.c0
    c B() {
        return new e2(s0.E(w()), false);
    }

    @Override // org.bouncycastle.asn1.c0
    j C() {
        return new g2(this);
    }

    @Override // org.bouncycastle.asn1.c0
    v D() {
        return new r1(v0.A(x()));
    }

    @Override // org.bouncycastle.asn1.c0
    d0 E() {
        return new l2(false, F());
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.s(z6, 48);
        i2 i2VarE = xVar.e();
        int length = this.elements.length;
        int i10 = 0;
        if (this.contentsLength >= 0 || length > 16) {
            xVar.k(G());
            while (i10 < length) {
                i2VarE.u(this.elements[i10].g(), true);
                i10++;
            }
            return;
        }
        z[] zVarArr = new z[length];
        int iR = 0;
        for (int i11 = 0; i11 < length; i11++) {
            z zVarV = this.elements[i11].g().v();
            zVarArr[i11] = zVarV;
            iR += zVarV.r(true);
        }
        this.contentsLength = iR;
        xVar.k(iR);
        while (i10 < length) {
            i2VarE.u(zVarArr[i10], true);
            i10++;
        }
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        return x.g(z6, G());
    }

    @Override // org.bouncycastle.asn1.c0, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public j2(f fVar) {
        super(fVar);
        this.contentsLength = -1;
    }

    public j2(g gVar) {
        super(gVar);
        this.contentsLength = -1;
    }

    public j2(f[] fVarArr) {
        super(fVarArr);
        this.contentsLength = -1;
    }

    j2(f[] fVarArr, boolean z6) {
        super(fVarArr, z6);
        this.contentsLength = -1;
    }
}

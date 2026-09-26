package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class l2 extends d0 {
    private int contentsLength;

    public l2() {
        this.contentsLength = -1;
    }

    private int B() throws IOException {
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

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.s(z6, 49);
        i2 i2VarE = xVar.e();
        int length = this.elements.length;
        int i10 = 0;
        if (this.contentsLength >= 0 || length > 16) {
            xVar.k(B());
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
        return x.g(z6, B());
    }

    @Override // org.bouncycastle.asn1.d0, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public l2(f fVar) {
        super(fVar);
        this.contentsLength = -1;
    }

    public l2(g gVar) {
        super(gVar, false);
        this.contentsLength = -1;
    }

    l2(boolean z6, f[] fVarArr) {
        super(z6, fVarArr);
        this.contentsLength = -1;
    }

    public l2(f[] fVarArr) {
        super(fVarArr, false);
        this.contentsLength = -1;
    }
}

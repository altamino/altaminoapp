package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class w1 extends d0 {
    private int contentsLength;

    public w1() {
        this.contentsLength = -1;
    }

    private static boolean B(boolean z6) {
        if (z6) {
            return z6;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    private int C() throws IOException {
        if (this.contentsLength < 0) {
            int length = this.elements.length;
            int iR = 0;
            for (int i10 = 0; i10 < length; i10++) {
                iR += this.elements[i10].g().u().r(true);
            }
            this.contentsLength = iR;
        }
        return this.contentsLength;
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.s(z6, 49);
        t1 t1VarD = xVar.d();
        int length = this.elements.length;
        int i10 = 0;
        if (this.contentsLength >= 0 || length > 16) {
            xVar.k(C());
            while (i10 < length) {
                this.elements[i10].g().u().j(t1VarD, true);
                i10++;
            }
            return;
        }
        z[] zVarArr = new z[length];
        int iR = 0;
        for (int i11 = 0; i11 < length; i11++) {
            z zVarU = this.elements[i11].g().u();
            zVarArr[i11] = zVarU;
            iR += zVarU.r(true);
        }
        this.contentsLength = iR;
        xVar.k(iR);
        while (i10 < length) {
            zVarArr[i10].j(t1VarD, true);
            i10++;
        }
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        return x.g(z6, C());
    }

    @Override // org.bouncycastle.asn1.d0, org.bouncycastle.asn1.z
    z u() {
        return this.isSorted ? this : super.u();
    }

    @Override // org.bouncycastle.asn1.d0, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public w1(f fVar) {
        super(fVar);
        this.contentsLength = -1;
    }

    public w1(g gVar) {
        super(gVar, true);
        this.contentsLength = -1;
    }

    w1(boolean z6, f[] fVarArr) {
        super(B(z6), fVarArr);
        this.contentsLength = -1;
    }

    public w1(f[] fVarArr) {
        super(fVarArr, true);
        this.contentsLength = -1;
    }
}

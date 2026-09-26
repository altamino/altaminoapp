package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class y1 extends h0 {
    y1(int i10, int i11, int i12, f fVar) {
        super(i10, i11, i12, fVar);
    }

    @Override // org.bouncycastle.asn1.h0
    c0 H(z zVar) {
        return new v1(zVar);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        z zVarU = this.obj.g().u();
        boolean zG = G();
        if (z6) {
            int i10 = this.tagClass;
            if (zG || zVarU.m()) {
                i10 |= 32;
            }
            xVar.t(true, i10, this.tagNo);
        }
        if (zG) {
            xVar.k(zVarU.r(true));
        }
        zVarU.j(xVar.d(), zG);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return G() || this.obj.g().u().m();
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        z zVarU = this.obj.g().u();
        boolean zG = G();
        int iR = zVarU.r(zG);
        if (zG) {
            iR += x.f(iR);
        }
        return iR + (z6 ? x.h(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.h0, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.h0, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public y1(int i10, int i11, f fVar) {
        super(true, i10, i11, fVar);
    }

    public y1(int i10, f fVar) {
        super(true, i10, fVar);
    }

    public y1(boolean z6, int i10, int i11, f fVar) {
        super(z6, i10, i11, fVar);
    }

    public y1(boolean z6, int i10, f fVar) {
        super(z6, i10, fVar);
    }
}

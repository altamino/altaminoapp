package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class n2 extends h0 {
    n2(int i10, int i11, int i12, f fVar) {
        super(i10, i11, i12, fVar);
    }

    @Override // org.bouncycastle.asn1.h0
    c0 H(z zVar) {
        return new j2(zVar);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        z zVarV = this.obj.g().v();
        boolean zG = G();
        if (z6) {
            int i10 = this.tagClass;
            if (zG || zVarV.m()) {
                i10 |= 32;
            }
            xVar.t(true, i10, this.tagNo);
        }
        if (zG) {
            xVar.k(zVarV.r(true));
        }
        zVarV.j(xVar.e(), zG);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return G() || this.obj.g().v().m();
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        z zVarV = this.obj.g().v();
        boolean zG = G();
        int iR = zVarV.r(zG);
        if (zG) {
            iR += x.f(iR);
        }
        return iR + (z6 ? x.h(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.h0, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public n2(int i10, int i11, f fVar) {
        super(true, i10, i11, fVar);
    }

    public n2(int i10, f fVar) {
        super(true, i10, fVar);
    }

    public n2(boolean z6, int i10, int i11, f fVar) {
        super(z6, i10, i11, fVar);
    }

    public n2(boolean z6, int i10, f fVar) {
        super(z6, i10, fVar);
    }
}

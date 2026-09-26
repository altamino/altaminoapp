package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class b1 extends h0 {
    public b1(int i10) {
        super(false, i10, new x0());
    }

    @Override // org.bouncycastle.asn1.h0
    c0 H(z zVar) {
        return new x0(zVar);
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        z zVarG = this.obj.g();
        boolean zG = G();
        if (z6) {
            int i10 = this.tagClass;
            if (zG || zVarG.m()) {
                i10 |= 32;
            }
            xVar.t(true, i10, this.tagNo);
        }
        if (!zG) {
            zVarG.j(xVar, false);
            return;
        }
        xVar.i(128);
        zVarG.j(xVar, true);
        xVar.i(0);
        xVar.i(0);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return G() || this.obj.g().m();
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        z zVarG = this.obj.g();
        boolean zG = G();
        int iR = zVarG.r(zG);
        if (zG) {
            iR += 3;
        }
        return iR + (z6 ? x.h(this.tagNo) : 0);
    }

    b1(int i10, int i11, int i12, f fVar) {
        super(i10, i11, i12, fVar);
    }

    public b1(int i10, int i11, f fVar) {
        super(true, i10, i11, fVar);
    }

    public b1(int i10, f fVar) {
        super(true, i10, fVar);
    }

    public b1(boolean z6, int i10, int i11, f fVar) {
        super(z6, i10, i11, fVar);
    }

    public b1(boolean z6, int i10, f fVar) {
        super(z6, i10, fVar);
    }
}

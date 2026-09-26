package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class z0 extends d0 {
    public z0() {
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.r(z6, 49, this.elements);
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

    public z0(f fVar) {
        super(fVar);
    }

    public z0(g gVar) {
        super(gVar, false);
    }

    z0(boolean z6, f[] fVarArr) {
        super(z6, fVarArr);
    }

    public z0(f[] fVarArr) {
        super(fVarArr, false);
    }
}

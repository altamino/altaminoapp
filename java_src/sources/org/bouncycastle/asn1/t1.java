package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
class t1 extends i2 {
    t1(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.bouncycastle.asn1.x
    t1 d() {
        return this;
    }

    @Override // org.bouncycastle.asn1.i2, org.bouncycastle.asn1.x
    void l(f[] fVarArr) throws IOException {
        for (f fVar : fVarArr) {
            fVar.g().u().j(this, true);
        }
    }

    @Override // org.bouncycastle.asn1.i2, org.bouncycastle.asn1.x
    void u(z zVar, boolean z6) throws IOException {
        zVar.u().j(this, z6);
    }

    @Override // org.bouncycastle.asn1.i2, org.bouncycastle.asn1.x
    void v(z[] zVarArr) throws IOException {
        for (z zVar : zVarArr) {
            zVar.u().j(this, true);
        }
    }
}

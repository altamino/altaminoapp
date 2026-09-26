package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes7.dex */
class i2 extends x {
    i2(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.bouncycastle.asn1.x
    i2 e() {
        return this;
    }

    @Override // org.bouncycastle.asn1.x
    void l(f[] fVarArr) throws IOException {
        for (f fVar : fVarArr) {
            fVar.g().v().j(this, true);
        }
    }

    @Override // org.bouncycastle.asn1.x
    void u(z zVar, boolean z6) throws IOException {
        zVar.v().j(this, z6);
    }

    @Override // org.bouncycastle.asn1.x
    void v(z[] zVarArr) throws IOException {
        for (z zVar : zVarArr) {
            zVar.v().j(this, true);
        }
    }
}

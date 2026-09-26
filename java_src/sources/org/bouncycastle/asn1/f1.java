package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class f1 extends a {
    public f1(int i10, f fVar) throws IOException {
        this(true, i10, fVar);
    }

    @Override // org.bouncycastle.asn1.a, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.a, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public f1(int i10, g gVar) {
        super(new y1(false, 64, i10, (f) k1.a(gVar)));
    }

    public f1(int i10, byte[] bArr) {
        super(new y1(false, 64, i10, (f) new r1(bArr)));
    }

    f1(h0 h0Var) {
        super(h0Var);
    }

    public f1(boolean z6, int i10, f fVar) throws IOException {
        super(new y1(z6, 64, i10, fVar));
    }
}

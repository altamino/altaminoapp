package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class d2 extends a {
    public d2(int i10, f fVar) throws IOException {
        this(true, i10, fVar);
    }

    @Override // org.bouncycastle.asn1.a, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public d2(int i10, g gVar) {
        super(new n2(false, 64, i10, (f) h2.a(gVar)));
    }

    public d2(int i10, byte[] bArr) {
        super(new n2(false, 64, i10, (f) new r1(bArr)));
    }

    d2(h0 h0Var) {
        super(h0Var);
    }

    public d2(boolean z6, int i10, f fVar) throws IOException {
        super(new n2(z6, 64, i10, fVar));
    }
}

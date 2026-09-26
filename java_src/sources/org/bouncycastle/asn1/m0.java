package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
abstract class m0 extends i0 {
    final g0 tag;

    m0(Class cls, int i10) {
        super(cls);
        this.tag = g0.a(0, i10);
    }

    final z a(z zVar) {
        if (this.javaClass.isInstance(zVar)) {
            return zVar;
        }
        throw new IllegalStateException("unexpected object: " + zVar.getClass().getName());
    }

    final z b(byte[] bArr) throws IOException {
        return a(z.t(bArr));
    }

    z c(c0 c0Var) {
        throw new IllegalStateException("unexpected implicit constructed encoding");
    }

    z d(r1 r1Var) {
        throw new IllegalStateException("unexpected implicit primitive encoding");
    }

    final z e(h0 h0Var, boolean z6) {
        if (128 == h0Var.E()) {
            return a(h0Var.A(z6, this));
        }
        throw new IllegalStateException("this method only valid for CONTEXT_SPECIFIC tags");
    }
}

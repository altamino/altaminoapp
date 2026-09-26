package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
class o2 extends c1 {
    private final boolean _constructed;

    o2(int i10, int i11, boolean z6, e0 e0Var) {
        super(i10, i11, e0Var);
        this._constructed = z6;
    }

    @Override // org.bouncycastle.asn1.c1, org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return this._parser.b(this._tagClass, this._tagNo, this._constructed);
    }
}

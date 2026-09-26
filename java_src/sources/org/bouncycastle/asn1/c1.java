package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class c1 implements f, r2 {
    final e0 _parser;
    final int _tagClass;
    final int _tagNo;

    c1(int i10, int i11, e0 e0Var) {
        this._tagClass = i10;
        this._tagNo = i11;
        this._parser = e0Var;
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return this._parser.c(this._tagClass, this._tagNo);
    }

    @Override // org.bouncycastle.asn1.f
    public z g() {
        try {
            return c();
        } catch (IOException e) {
            throw new y(e.getMessage());
        }
    }
}

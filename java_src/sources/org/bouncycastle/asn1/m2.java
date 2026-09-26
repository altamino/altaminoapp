package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class m2 implements f, r2 {
    private e0 _parser;

    m2(e0 e0Var) {
        this._parser = e0Var;
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return h2.b(this._parser.h());
    }

    @Override // org.bouncycastle.asn1.f
    public z g() {
        try {
            return c();
        } catch (IOException e) {
            throw new y(e.getMessage(), e);
        }
    }
}

package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class y0 implements f, r2 {
    private e0 _parser;

    y0(e0 e0Var) {
        this._parser = e0Var;
    }

    static x0 a(e0 e0Var) throws IOException {
        return new x0(e0Var.h());
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return a(this._parser);
    }

    @Override // org.bouncycastle.asn1.f
    public z g() {
        try {
            return c();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}

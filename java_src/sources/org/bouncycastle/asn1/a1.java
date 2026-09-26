package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public class a1 implements f, r2 {
    private e0 _parser;

    a1(e0 e0Var) {
        this._parser = e0Var;
    }

    static z0 a(e0 e0Var) throws IOException {
        return new z0(e0Var.h());
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
            throw new y(e.getMessage(), e);
        }
    }
}

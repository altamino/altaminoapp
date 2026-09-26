package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class j1 implements f, r2 {
    private e0 _parser;

    public j1(e0 e0Var) {
        this._parser = e0Var;
    }

    static g2 a(e0 e0Var) throws IOException {
        try {
            return new g2(e0Var.h());
        } catch (IllegalArgumentException e) {
            throw new i(e.getMessage(), e);
        }
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
            throw new y("unable to get DER object", e);
        } catch (IllegalArgumentException e2) {
            throw new y("unable to get DER object", e2);
        }
    }
}

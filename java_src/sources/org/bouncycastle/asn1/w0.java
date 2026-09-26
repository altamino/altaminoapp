package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
public class w0 implements w {
    private e0 _parser;

    w0(e0 e0Var) {
        this._parser = e0Var;
    }

    static v0 a(e0 e0Var) throws IOException {
        return new v0(v9.a.c(new e1(e0Var)));
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return a(this._parser);
    }

    @Override // org.bouncycastle.asn1.w
    public InputStream e() {
        return new e1(this._parser);
    }

    @Override // org.bouncycastle.asn1.f
    public z g() {
        try {
            return c();
        } catch (IOException e) {
            throw new y("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}

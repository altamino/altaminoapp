package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class t0 implements d {
    private d1 _bitStream;
    private e0 _parser;

    t0(e0 e0Var) {
        this._parser = e0Var;
    }

    static s0 a(e0 e0Var) throws IOException {
        d1 d1Var = new d1(e0Var, false);
        return new s0(v9.a.c(d1Var), d1Var.h());
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return a(this._parser);
    }

    @Override // org.bouncycastle.asn1.d
    public InputStream d() throws IOException {
        d1 d1Var = new d1(this._parser, false);
        this._bitStream = d1Var;
        return d1Var;
    }

    @Override // org.bouncycastle.asn1.d
    public int f() {
        return this._bitStream.h();
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

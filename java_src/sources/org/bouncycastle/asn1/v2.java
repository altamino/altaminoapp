package org.bouncycastle.asn1;

import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
abstract class v2 extends InputStream {
    protected final InputStream _in;
    private int _limit;

    v2(InputStream inputStream, int i10) {
        this._in = inputStream;
        this._limit = i10;
    }

    int d() {
        return this._limit;
    }

    protected void e(boolean z6) {
        InputStream inputStream = this._in;
        if (inputStream instanceof s2) {
            ((s2) inputStream).i(z6);
        }
    }
}

package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
class e1 extends InputStream {
    private InputStream _currentStream;
    private boolean _first = true;
    private final e0 _parser;

    e1(e0 e0Var) {
        this._parser = e0Var;
    }

    private w d() throws IOException {
        f fVarG = this._parser.g();
        if (fVarG == null) {
            return null;
        }
        if (fVarG instanceof w) {
            return (w) fVarG;
        }
        throw new IOException("unknown object encountered: " + fVarG.getClass());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        w wVarD;
        if (this._currentStream == null) {
            if (!this._first || (wVarD = d()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = wVarD.e();
        }
        while (true) {
            int i10 = this._currentStream.read();
            if (i10 >= 0) {
                return i10;
            }
            w wVarD2 = d();
            if (wVarD2 == null) {
                this._currentStream = null;
                return -1;
            }
            this._currentStream = wVarD2.e();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        w wVarD;
        int i12 = 0;
        if (this._currentStream == null) {
            if (!this._first || (wVarD = d()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = wVarD.e();
        }
        while (true) {
            int i13 = this._currentStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 >= 0) {
                i12 += i13;
                if (i12 == i11) {
                    return i12;
                }
            } else {
                w wVarD2 = d();
                if (wVarD2 == null) {
                    this._currentStream = null;
                    if (i12 < 1) {
                        return -1;
                    }
                    return i12;
                }
                this._currentStream = wVarD2.e();
            }
        }
    }
}

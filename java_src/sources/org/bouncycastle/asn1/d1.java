package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
class d1 extends InputStream {
    private d _currentParser;
    private InputStream _currentStream;
    private final boolean _octetAligned;
    private final e0 _parser;
    private boolean _first = true;
    private int _padBits = 0;

    d1(e0 e0Var, boolean z6) {
        this._parser = e0Var;
        this._octetAligned = z6;
    }

    private d d() throws IOException {
        f fVarG = this._parser.g();
        if (fVarG == null) {
            if (!this._octetAligned || this._padBits == 0) {
                return null;
            }
            throw new IOException("expected octet-aligned bitstring, but found padBits: " + this._padBits);
        }
        if (fVarG instanceof d) {
            if (this._padBits == 0) {
                return (d) fVarG;
            }
            throw new IOException("only the last nested bitstring can have padding");
        }
        throw new IOException("unknown object encountered: " + fVarG.getClass());
    }

    int h() {
        return this._padBits;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._currentStream == null) {
            if (!this._first) {
                return -1;
            }
            d dVarD = d();
            this._currentParser = dVarD;
            if (dVarD == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = dVarD.d();
        }
        while (true) {
            int i10 = this._currentStream.read();
            if (i10 >= 0) {
                return i10;
            }
            this._padBits = this._currentParser.f();
            d dVarD2 = d();
            this._currentParser = dVarD2;
            if (dVarD2 == null) {
                this._currentStream = null;
                return -1;
            }
            this._currentStream = dVarD2.d();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        if (this._currentStream == null) {
            if (!this._first) {
                return -1;
            }
            d dVarD = d();
            this._currentParser = dVarD;
            if (dVarD == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = dVarD.d();
        }
        while (true) {
            int i13 = this._currentStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 >= 0) {
                i12 += i13;
                if (i12 == i11) {
                    return i12;
                }
            } else {
                this._padBits = this._currentParser.f();
                d dVarD2 = d();
                this._currentParser = dVarD2;
                if (dVarD2 == null) {
                    this._currentStream = null;
                    if (i12 < 1) {
                        return -1;
                    }
                    return i12;
                }
                this._currentStream = dVarD2.d();
            }
        }
    }
}

package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
class q2 extends v2 {
    private static final byte[] EMPTY_BYTES = new byte[0];
    private final int _originalLength;
    private int _remaining;

    q2(InputStream inputStream, int i10, int i11) {
        super(inputStream, i11);
        if (i10 <= 0) {
            if (i10 < 0) {
                throw new IllegalArgumentException("negative lengths not allowed");
            }
            e(true);
        }
        this._originalLength = i10;
        this._remaining = i10;
    }

    int h() {
        return this._remaining;
    }

    void i(byte[] bArr) throws IOException {
        int i10 = this._remaining;
        if (i10 != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (i10 == 0) {
            return;
        }
        int iD = d();
        int i11 = this._remaining;
        if (i11 >= iD) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + iD);
        }
        int iD2 = i11 - v9.a.d(this._in, bArr, 0, bArr.length);
        this._remaining = iD2;
        if (iD2 == 0) {
            e(true);
            return;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    byte[] k() throws IOException {
        if (this._remaining == 0) {
            return EMPTY_BYTES;
        }
        int iD = d();
        int i10 = this._remaining;
        if (i10 >= iD) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + iD);
        }
        byte[] bArr = new byte[i10];
        int iD2 = i10 - v9.a.d(this._in, bArr, 0, i10);
        this._remaining = iD2;
        if (iD2 == 0) {
            e(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._remaining == 0) {
            return -1;
        }
        int i10 = this._in.read();
        if (i10 >= 0) {
            int i11 = this._remaining - 1;
            this._remaining = i11;
            if (i11 == 0) {
                e(true);
            }
            return i10;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this._remaining;
        if (i12 == 0) {
            return -1;
        }
        int i13 = this._in.read(bArr, i10, Math.min(i11, i12));
        if (i13 >= 0) {
            int i14 = this._remaining - i13;
            this._remaining = i14;
            if (i14 == 0) {
                e(true);
            }
            return i13;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }
}

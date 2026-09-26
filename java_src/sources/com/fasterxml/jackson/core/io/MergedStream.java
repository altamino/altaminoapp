package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public final class MergedStream extends InputStream {
    byte[] _buffer;
    protected final IOContext _context;
    final int _end;
    final InputStream _in;
    int _ptr;

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this._buffer;
        if (bArr == null) {
            return this._in.read();
        }
        int i10 = this._ptr;
        int i11 = i10 + 1;
        this._ptr = i11;
        int i12 = bArr[i10] & 255;
        if (i11 >= this._end) {
            freeMergedBuffer();
        }
        return i12;
    }

    private void freeMergedBuffer() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            IOContext iOContext = this._context;
            if (iOContext != null) {
                iOContext.releaseReadIOBuffer(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this._buffer != null ? this._end - this._ptr : this._in.available();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        if (this._buffer == null) {
            this._in.mark(i10);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this._buffer == null && this._in.markSupported();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (this._buffer == null) {
            this._in.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        long j10;
        if (this._buffer != null) {
            int i10 = this._end;
            int i11 = this._ptr;
            j10 = i10 - i11;
            if (j10 > j6) {
                this._ptr = i11 + ((int) j6);
                return j6;
            }
            freeMergedBuffer();
            j6 -= j10;
        } else {
            j10 = 0;
        }
        return j6 > 0 ? j10 + this._in.skip(j6) : j10;
    }

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i10, int i11) {
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i10;
        this._end = i11;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        freeMergedBuffer();
        this._in.close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        byte[] bArr2 = this._buffer;
        if (bArr2 != null) {
            int i12 = this._end;
            int i13 = this._ptr;
            int i14 = i12 - i13;
            if (i11 > i14) {
                i11 = i14;
            }
            System.arraycopy(bArr2, i13, bArr, i10, i11);
            int i15 = this._ptr + i11;
            this._ptr = i15;
            if (i15 >= this._end) {
                freeMergedBuffer();
            }
            return i11;
        }
        return this._in.read(bArr, i10, i11);
    }
}

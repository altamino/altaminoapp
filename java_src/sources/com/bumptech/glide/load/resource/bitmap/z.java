package com.bumptech.glide.load.resource.bitmap;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class z extends FilterInputStream {
    private volatile byte[] buf;
    private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
    private int count;
    private int marklimit;
    private int markpos;
    private int pos;

    public z(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this(inputStream, bVar, 65536);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.buf == null || inputStream == null) {
            throw h();
        }
        return (this.count - this.pos) + inputStream.available();
    }

    public synchronized void d() {
        this.marklimit = this.buf.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        this.marklimit = Math.max(this.marklimit, i10);
        this.markpos = this.pos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.buf;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            throw h();
        }
        if (this.pos >= this.count && a(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.buf && (bArr = this.buf) == null) {
            throw h();
        }
        int i10 = this.count;
        int i11 = this.pos;
        if (i10 - i11 <= 0) {
            return -1;
        }
        this.pos = i11 + 1;
        return bArr[i11] & 255;
    }

    public synchronized void release() {
        if (this.buf != null) {
            this.byteArrayPool.e(this.buf);
            this.buf = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.buf == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.markpos;
        if (-1 == i10) {
            throw new a("Mark has been invalidated, pos: " + this.pos + " markLimit: " + this.marklimit);
        }
        this.pos = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j6) throws IOException {
        if (j6 < 1) {
            return 0L;
        }
        byte[] bArr = this.buf;
        if (bArr == null) {
            throw h();
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw h();
        }
        int i10 = this.count;
        int i11 = this.pos;
        if (i10 - i11 >= j6) {
            this.pos = (int) (((long) i11) + j6);
            return j6;
        }
        long j10 = ((long) i10) - ((long) i11);
        this.pos = i10;
        if (this.markpos == -1 || j6 > this.marklimit) {
            return j10 + inputStream.skip(j6 - j10);
        }
        if (a(inputStream, bArr) == -1) {
            return j10;
        }
        int i12 = this.count;
        int i13 = this.pos;
        if (i12 - i13 >= j6 - j10) {
            this.pos = (int) ((((long) i13) + j6) - j10);
            return j6;
        }
        long j11 = (j10 + ((long) i12)) - ((long) i13);
        this.pos = i12;
        return j11;
    }

    static class a extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        a(String str) {
            super(str);
        }
    }

    @VisibleForTesting
    z(@NonNull InputStream inputStream, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, int i10) {
        super(inputStream);
        this.markpos = -1;
        this.byteArrayPool = bVar;
        this.buf = (byte[]) bVar.c(i10, byte[].class);
    }

    private int a(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.markpos;
        if (i10 != -1) {
            int i11 = this.pos - i10;
            int i12 = this.marklimit;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.count == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.byteArrayPool.c(i12, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.buf = bArr2;
                    this.byteArrayPool.e(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.pos - this.markpos;
                this.pos = i13;
                this.markpos = 0;
                this.count = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.pos;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.count = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.markpos = -1;
            this.pos = 0;
            this.count = i16;
        }
        return i16;
    }

    private static IOException h() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.buf != null) {
            this.byteArrayPool.e(this.buf);
            this.buf = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        byte[] bArr2 = this.buf;
        if (bArr2 == null) {
            throw h();
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            throw h();
        }
        int i14 = this.pos;
        int i15 = this.count;
        if (i14 < i15) {
            int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
            System.arraycopy(bArr2, i14, bArr, i10, i16);
            this.pos += i16;
            if (i16 == i11 || inputStream.available() == 0) {
                return i16;
            }
            i10 += i16;
            i12 = i11 - i16;
        } else {
            i12 = i11;
        }
        while (true) {
            if (this.markpos == -1 && i12 >= bArr2.length) {
                i13 = inputStream.read(bArr, i10, i12);
                if (i13 == -1) {
                    return i12 != i11 ? i11 - i12 : -1;
                }
            } else {
                if (a(inputStream, bArr2) == -1) {
                    return i12 != i11 ? i11 - i12 : -1;
                }
                if (bArr2 != this.buf && (bArr2 = this.buf) == null) {
                    throw h();
                }
                int i17 = this.count;
                int i18 = this.pos;
                i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                System.arraycopy(bArr2, i18, bArr, i10, i13);
                this.pos += i13;
            }
            i12 -= i13;
            if (i12 == 0) {
                return i11;
            }
            if (inputStream.available() == 0) {
                return i11 - i12;
            }
            i10 += i13;
        }
    }
}

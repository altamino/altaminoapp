package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes8.dex */
class c implements Closeable {
    private static final byte CR = 13;
    private static final byte LF = 10;
    private byte[] buf;
    private final Charset charset;
    private int end;
    private final InputStream in;
    private int pos;

    class a extends ByteArrayOutputStream {
        a(int i10) {
            super(i10);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i10 = ((ByteArrayOutputStream) this).count;
            if (i10 > 0 && ((ByteArrayOutputStream) this).buf[i10 - 1] == 13) {
                i10--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i10, c.this.charset.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public c(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    public boolean h() {
        return this.end == -1;
    }

    public c(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(d.US_ASCII)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.in = inputStream;
        this.charset = charset;
        this.buf = new byte[i10];
    }

    private void d() throws IOException {
        InputStream inputStream = this.in;
        byte[] bArr = this.buf;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.pos = 0;
        this.end = i10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.in) {
            try {
                if (this.buf != null) {
                    this.buf = null;
                    this.in.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public String k() throws IOException {
        int i10;
        byte[] bArr;
        int i11;
        synchronized (this.in) {
            try {
                if (this.buf == null) {
                    throw new IOException("LineReader is closed");
                }
                if (this.pos >= this.end) {
                    d();
                }
                for (int i12 = this.pos; i12 != this.end; i12++) {
                    byte[] bArr2 = this.buf;
                    if (bArr2[i12] == 10) {
                        int i13 = this.pos;
                        if (i12 != i13) {
                            i11 = i12 - 1;
                            if (bArr2[i11] != 13) {
                                i11 = i12;
                            }
                        } else {
                            i11 = i12;
                        }
                        String str = new String(bArr2, i13, i11 - i13, this.charset.name());
                        this.pos = i12 + 1;
                        return str;
                    }
                }
                a aVar = new a((this.end - this.pos) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.buf;
                    int i14 = this.pos;
                    aVar.write(bArr3, i14, this.end - i14);
                    this.end = -1;
                    d();
                    i10 = this.pos;
                    while (i10 != this.end) {
                        bArr = this.buf;
                        if (bArr[i10] == 10) {
                            break loop1;
                        }
                        i10++;
                    }
                }
                int i15 = this.pos;
                if (i10 != i15) {
                    aVar.write(bArr, i15, i10 - i15);
                }
                this.pos = i10 + 1;
                return aVar.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

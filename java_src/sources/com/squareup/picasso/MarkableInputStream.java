package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
final class MarkableInputStream extends InputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_LIMIT_INCREMENT = 1024;
    private boolean allowExpire;
    private long defaultMark;
    private final InputStream in;
    private long limit;
    private int limitIncrement;
    private long offset;
    private long reset;

    MarkableInputStream(InputStream inputStream) {
        this(inputStream, 4096);
    }

    private void skip(long j6, long j10) throws IOException {
        while (j6 < j10) {
            long jSkip = this.in.skip(j10 - j6);
            if (jSkip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    jSkip = 1;
                }
            }
            j6 += jSkip;
        }
    }

    public void allowMarksToExpire(boolean z6) {
        this.allowExpire = z6;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.allowExpire) {
            long j6 = this.offset + 1;
            long j10 = this.limit;
            if (j6 > j10) {
                setLimit(j10 + ((long) this.limitIncrement));
            }
        }
        int i10 = this.in.read();
        if (i10 != -1) {
            this.offset++;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        reset(this.defaultMark);
    }

    MarkableInputStream(InputStream inputStream, int i10) {
        this(inputStream, i10, 1024);
    }

    private void setLimit(long j6) {
        try {
            long j10 = this.reset;
            long j11 = this.offset;
            if (j10 >= j11 || j11 > this.limit) {
                this.reset = j11;
                this.in.mark((int) (j6 - j11));
            } else {
                this.in.reset();
                this.in.mark((int) (j6 - this.reset));
                skip(this.reset, this.offset);
            }
            this.limit = j6;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    public void reset(long j6) throws IOException {
        if (this.offset > this.limit || j6 < this.reset) {
            throw new IOException("Cannot reset");
        }
        this.in.reset();
        skip(this.reset, j6);
        this.offset = j6;
    }

    public long savePosition(int i10) {
        long j6 = this.offset + ((long) i10);
        if (this.limit < j6) {
            setLimit(j6);
        }
        return this.offset;
    }

    private MarkableInputStream(InputStream inputStream, int i10, int i11) {
        this.defaultMark = -1L;
        this.allowExpire = true;
        this.limitIncrement = -1;
        this.in = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i10);
        this.limitIncrement = i11;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.defaultMark = savePosition(i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.allowExpire) {
            long j6 = this.offset;
            if (((long) bArr.length) + j6 > this.limit) {
                setLimit(j6 + ((long) bArr.length) + ((long) this.limitIncrement));
            }
        }
        int i10 = this.in.read(bArr);
        if (i10 != -1) {
            this.offset += (long) i10;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        if (!this.allowExpire) {
            long j10 = this.offset;
            if (j10 + j6 > this.limit) {
                setLimit(j10 + j6 + ((long) this.limitIncrement));
            }
        }
        long jSkip = this.in.skip(j6);
        this.offset += jSkip;
        return jSkip;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.allowExpire) {
            long j6 = this.offset;
            long j10 = i11;
            if (j6 + j10 > this.limit) {
                setLimit(j6 + j10 + ((long) this.limitIncrement));
            }
        }
        int i12 = this.in.read(bArr, i10, i11);
        if (i12 != -1) {
            this.offset += (long) i12;
        }
        return i12;
    }
}

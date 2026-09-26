package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public class h extends FilterInputStream {
    private static final int END_OF_STREAM = -1;
    private static final int UNSET = Integer.MIN_VALUE;
    private int availableBytes;

    private long f(long j6) {
        int i10 = this.availableBytes;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j6 <= ((long) i10)) ? j6 : i10;
    }

    private void g(long j6) {
        int i10 = this.availableBytes;
        if (i10 == Integer.MIN_VALUE || j6 == -1) {
            return;
        }
        this.availableBytes = (int) (((long) i10) - j6);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        super.mark(i10);
        this.availableBytes = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (f(1L) == -1) {
            return -1;
        }
        int i10 = super.read();
        g(1L);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        super.reset();
        this.availableBytes = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i10 = this.availableBytes;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    public h(@NonNull InputStream inputStream) {
        super(inputStream);
        this.availableBytes = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j6) throws IOException {
        long jF = f(j6);
        if (jF == -1) {
            return 0L;
        }
        long jSkip = super.skip(jF);
        g(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
        int iF = (int) f(i11);
        if (iF == -1) {
            return -1;
        }
        int i12 = super.read(bArr, i10, iF);
        g(i12);
        return i12;
    }
}

package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends FilterInputStream {
    private static final String TAG = "ContentLengthStream";
    private static final int UNKNOWN = -1;
    private final long contentLength;
    private int readSoFar;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.contentLength - ((long) this.readSoFar), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        int i10;
        i10 = super.read();
        a(i10 >= 0 ? 1 : -1);
        return i10;
    }

    private int a(int i10) throws IOException {
        if (i10 >= 0) {
            this.readSoFar += i10;
        } else if (this.contentLength - ((long) this.readSoFar) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.contentLength + ", but read: " + this.readSoFar);
        }
        return i10;
    }

    @NonNull
    public static InputStream b(@NonNull InputStream inputStream, long j6) {
        return new c(inputStream, j6);
    }

    private c(@NonNull InputStream inputStream, long j6) {
        super(inputStream);
        this.contentLength = j6;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        return a(super.read(bArr, i10, i11));
    }
}

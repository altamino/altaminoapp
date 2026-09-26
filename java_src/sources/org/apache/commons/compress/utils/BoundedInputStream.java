package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class BoundedInputStream extends InputStream {
    private long bytesRemaining;
    private final InputStream in;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        long j6 = this.bytesRemaining;
        if (j6 <= 0) {
            return -1;
        }
        this.bytesRemaining = j6 - 1;
        return this.in.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j6 = this.bytesRemaining;
        if (j6 == 0) {
            return -1;
        }
        if (i11 > j6) {
            i11 = (int) j6;
        }
        int i12 = this.in.read(bArr, i10, i11);
        if (i12 >= 0) {
            this.bytesRemaining -= (long) i12;
        }
        return i12;
    }

    public BoundedInputStream(InputStream inputStream, long j6) {
        this.in = inputStream;
        this.bytesRemaining = j6;
    }
}

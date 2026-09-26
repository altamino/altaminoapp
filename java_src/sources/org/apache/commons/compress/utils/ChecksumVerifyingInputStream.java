package org.apache.commons.compress.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes3.dex */
public class ChecksumVerifyingInputStream extends InputStream {
    private long bytesRemaining;
    private final Checksum checksum;
    private final long expectedChecksum;
    private final InputStream in;

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.bytesRemaining <= 0) {
            return -1;
        }
        int i10 = this.in.read();
        if (i10 >= 0) {
            this.checksum.update(i10);
            this.bytesRemaining--;
        }
        if (this.bytesRemaining != 0 || this.expectedChecksum == this.checksum.getValue()) {
            return i10;
        }
        throw new IOException("Checksum verification failed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public ChecksumVerifyingInputStream(Checksum checksum, InputStream inputStream, long j6, long j10) {
        this.checksum = checksum;
        this.in = inputStream;
        this.expectedChecksum = j10;
        this.bytesRemaining = j6;
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        if (read() >= 0) {
            return 1L;
        }
        return 0L;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.in.read(bArr, i10, i11);
        if (i12 >= 0) {
            this.checksum.update(bArr, i10, i12);
            this.bytesRemaining -= (long) i12;
        }
        if (this.bytesRemaining > 0 || this.expectedChecksum == this.checksum.getValue()) {
            return i12;
        }
        throw new IOException("Checksum verification failed");
    }
}

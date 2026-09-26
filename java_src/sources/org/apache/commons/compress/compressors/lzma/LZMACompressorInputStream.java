package org.apache.commons.compress.compressors.lzma;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.tukaani.xz.LZMAInputStream;
import org.tukaani.xz.MemoryLimitException;

/* JADX INFO: loaded from: classes7.dex */
public class LZMACompressorInputStream extends CompressorInputStream {
    private final InputStream in;

    public LZMACompressorInputStream(InputStream inputStream) throws IOException {
        this.in = new LZMAInputStream(inputStream, -1);
    }

    public static boolean matches(byte[] bArr, int i10) {
        return bArr != null && i10 >= 3 && bArr[0] == 93 && bArr[1] == 0 && bArr[2] == 0;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.in.read();
        count(i10 == -1 ? 0 : 1);
        return i10;
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
    public long skip(long j6) throws IOException {
        return this.in.skip(j6);
    }

    public LZMACompressorInputStream(InputStream inputStream, int i10) throws IOException {
        try {
            this.in = new LZMAInputStream(inputStream, i10);
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.in.read(bArr, i10, i11);
        count(i12);
        return i12;
    }
}

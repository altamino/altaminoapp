package org.apache.commons.compress.compressors.brotli;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.brotli.dec.BrotliInputStream;

/* JADX INFO: loaded from: classes11.dex */
public class BrotliCompressorInputStream extends CompressorInputStream {
    private final BrotliInputStream decIS;

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.decIS.read(bArr);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.decIS.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.decIS.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.decIS.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.decIS.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.decIS.read();
        count(i10 == -1 ? 0 : 1);
        return i10;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.decIS.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        return this.decIS.skip(j6);
    }

    public String toString() {
        return this.decIS.toString();
    }

    public BrotliCompressorInputStream(InputStream inputStream) throws IOException {
        this.decIS = new BrotliInputStream(inputStream);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.decIS.read(bArr, i10, i11);
        count(i12);
        return i12;
    }
}

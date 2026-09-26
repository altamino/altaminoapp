package org.apache.commons.compress.compressors.zstandard;

import com.github.luben.zstd.ZstdOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* JADX INFO: loaded from: classes10.dex */
public class ZstdCompressorOutputStream extends CompressorOutputStream {
    private final ZstdOutputStream encOS;

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        this.encOS.write(i10);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.encOS.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.encOS.flush();
    }

    public String toString() {
        return this.encOS.toString();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.encOS.write(bArr, i10, i11);
    }

    public ZstdCompressorOutputStream(OutputStream outputStream) throws IOException {
        this.encOS = new ZstdOutputStream(outputStream);
    }
}

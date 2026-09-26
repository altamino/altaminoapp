package org.apache.commons.compress.compressors.xz;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.tukaani.xz.MemoryLimitException;
import org.tukaani.xz.SingleXZInputStream;
import org.tukaani.xz.XZ;
import org.tukaani.xz.XZInputStream;

/* JADX INFO: loaded from: classes11.dex */
public class XZCompressorInputStream extends CompressorInputStream {
    private final InputStream in;

    public XZCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int i10 = this.in.read();
            int i11 = -1;
            if (i10 != -1) {
                i11 = 1;
            }
            count(i11);
            return i10;
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    public XZCompressorInputStream(InputStream inputStream, boolean z6) throws IOException {
        this(inputStream, z6, -1);
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 < XZ.HEADER_MAGIC.length) {
            return false;
        }
        for (int i11 = 0; i11 < XZ.HEADER_MAGIC.length; i11++) {
            if (bArr[i11] != XZ.HEADER_MAGIC[i11]) {
                return false;
            }
        }
        return true;
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
        try {
            return this.in.skip(j6);
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }

    public XZCompressorInputStream(InputStream inputStream, boolean z6, int i10) throws IOException {
        if (z6) {
            this.in = new XZInputStream(inputStream, i10);
        } else {
            this.in = new SingleXZInputStream(inputStream, i10);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = this.in.read(bArr, i10, i11);
            count(i12);
            return i12;
        } catch (MemoryLimitException e) {
            throw new org.apache.commons.compress.MemoryLimitException(e.getMemoryNeeded(), e.getMemoryLimit(), e);
        }
    }
}

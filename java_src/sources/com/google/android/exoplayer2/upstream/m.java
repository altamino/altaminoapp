package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
public final class m extends InputStream {
    private final k dataSource;
    private final o dataSpec;
    private long totalBytesRead;
    private boolean opened = false;
    private boolean closed = false;
    private final byte[] singleByteArray = new byte[1];

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.singleByteArray) == -1) {
            return -1;
        }
        return this.singleByteArray[0] & 255;
    }

    private void d() throws IOException {
        if (this.opened) {
            return;
        }
        this.dataSource.c(this.dataSpec);
        this.opened = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.dataSource.close();
        this.closed = true;
    }

    public m(k kVar, o oVar) {
        this.dataSource = kVar;
        this.dataSpec = oVar;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        com.google.android.exoplayer2.util.a.g(!this.closed);
        d();
        int i12 = this.dataSource.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        this.totalBytesRead += (long) i12;
        return i12;
    }
}

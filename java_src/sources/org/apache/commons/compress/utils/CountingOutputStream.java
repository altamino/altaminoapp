package org.apache.commons.compress.utils;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes11.dex */
public class CountingOutputStream extends FilterOutputStream {
    private long bytesWritten;

    protected void count(long j6) {
        if (j6 != -1) {
            this.bytesWritten += j6;
        }
    }

    public long getBytesWritten() {
        return this.bytesWritten;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        ((FilterOutputStream) this).out.write(i10);
        count(1L);
    }

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.bytesWritten = 0L;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
        count(i11);
    }
}

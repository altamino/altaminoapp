package org.apache.commons.compress.archivers;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes4.dex */
public abstract class ArchiveOutputStream extends OutputStream {
    static final int BYTE_MASK = 255;
    private final byte[] oneByte = new byte[1];
    private long bytesWritten = 0;

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) (i & 255);
        write(bArr, 0, 1);
    }

    protected void count(long j) {
        if (j != -1) {
            this.bytesWritten += j;
        }
    }
}

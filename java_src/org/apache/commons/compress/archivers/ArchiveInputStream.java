package org.apache.commons.compress.archivers;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class ArchiveInputStream extends InputStream {
    private static final int BYTE_MASK = 255;
    private final byte[] single = new byte[1];
    private long bytesRead = 0;

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.single, 0, 1) == -1) {
            return -1;
        }
        return this.single[0] & 255;
    }

    protected void count(int i) {
        count(i);
    }

    protected void count(long j) {
        if (j != -1) {
            this.bytesRead += j;
        }
    }

    protected void pushedBackBytes(long j) {
        this.bytesRead -= j;
    }

    public long getBytesRead() {
        return this.bytesRead;
    }
}

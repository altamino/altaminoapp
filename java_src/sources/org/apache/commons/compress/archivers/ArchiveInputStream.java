package org.apache.commons.compress.archivers;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class ArchiveInputStream extends InputStream {
    private static final int BYTE_MASK = 255;
    private final byte[] single = new byte[1];
    private long bytesRead = 0;

    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return true;
    }

    protected void count(long j6) {
        if (j6 != -1) {
            this.bytesRead += j6;
        }
    }

    public long getBytesRead() {
        return this.bytesRead;
    }

    @Deprecated
    public int getCount() {
        return (int) this.bytesRead;
    }

    public abstract ArchiveEntry getNextEntry() throws IOException;

    protected void pushedBackBytes(long j6) {
        this.bytesRead -= j6;
    }

    protected void count(int i10) {
        count(i10);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.single, 0, 1) == -1) {
            return -1;
        }
        return this.single[0] & 255;
    }
}

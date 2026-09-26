package org.apache.commons.compress.archivers;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes10.dex */
public abstract class ArchiveOutputStream extends OutputStream {
    static final int BYTE_MASK = 255;
    private final byte[] oneByte = new byte[1];
    private long bytesWritten = 0;

    public boolean canWriteEntryData(ArchiveEntry archiveEntry) {
        return true;
    }

    public abstract void closeArchiveEntry() throws IOException;

    protected void count(long j6) {
        if (j6 != -1) {
            this.bytesWritten += j6;
        }
    }

    public abstract ArchiveEntry createArchiveEntry(File file, String str) throws IOException;

    public abstract void finish() throws IOException;

    public long getBytesWritten() {
        return this.bytesWritten;
    }

    @Deprecated
    public int getCount() {
        return (int) this.bytesWritten;
    }

    public abstract void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException;

    protected void count(int i10) {
        count(i10);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) (i10 & 255);
        write(bArr, 0, 1);
    }
}

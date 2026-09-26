package org.apache.commons.compress.compressors;

import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CompressorInputStream extends InputStream {
    private long bytesRead = 0;

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

    protected void pushedBackBytes(long j6) {
        this.bytesRead -= j6;
    }

    protected void count(int i10) {
        count(i10);
    }
}

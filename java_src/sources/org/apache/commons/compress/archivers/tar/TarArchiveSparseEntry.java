package org.apache.commons.compress.archivers.tar;

import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public class TarArchiveSparseEntry implements TarConstants {
    private final boolean isExtended;

    public boolean isExtended() {
        return this.isExtended;
    }

    public TarArchiveSparseEntry(byte[] bArr) throws IOException {
        this.isExtended = TarUtils.parseBoolean(bArr, 504);
    }
}

package org.apache.commons.compress.compressors.snappy;

/* JADX INFO: loaded from: classes8.dex */
public enum FramedSnappyDialect {
    STANDARD(true, true),
    IWORK_ARCHIVE(false, false);

    private final boolean checksumWithCompressedChunks;
    private final boolean streamIdentifier;

    boolean hasStreamIdentifier() {
        return this.streamIdentifier;
    }

    boolean usesChecksumWithCompressedChunks() {
        return this.checksumWithCompressedChunks;
    }

    FramedSnappyDialect(boolean z6, boolean z10) {
        this.streamIdentifier = z6;
        this.checksumWithCompressedChunks = z10;
    }
}

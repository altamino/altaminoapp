package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes8.dex */
public class ScatterStatistics {
    private final long compressionElapsed;
    private final long mergingElapsed;

    public long getCompressionElapsed() {
        return this.compressionElapsed;
    }

    public long getMergingElapsed() {
        return this.mergingElapsed;
    }

    public String toString() {
        return "compressionElapsed=" + this.compressionElapsed + "ms, mergingElapsed=" + this.mergingElapsed + "ms";
    }

    ScatterStatistics(long j6, long j10) {
        this.compressionElapsed = j6;
        this.mergingElapsed = j10;
    }
}

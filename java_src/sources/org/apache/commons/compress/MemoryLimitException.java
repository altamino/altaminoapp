package org.apache.commons.compress;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class MemoryLimitException extends IOException {
    private static final long serialVersionUID = 1;
    private final int memoryLimitInKb;
    private final long memoryNeededInKb;

    public MemoryLimitException(long j6, int i10) {
        super(buildMessage(j6, i10));
        this.memoryNeededInKb = j6;
        this.memoryLimitInKb = i10;
    }

    public int getMemoryLimitInKb() {
        return this.memoryLimitInKb;
    }

    public long getMemoryNeededInKb() {
        return this.memoryNeededInKb;
    }

    public MemoryLimitException(long j6, int i10, Exception exc) {
        super(buildMessage(j6, i10), exc);
        this.memoryNeededInKb = j6;
        this.memoryLimitInKb = i10;
    }

    private static String buildMessage(long j6, int i10) {
        return j6 + " kb of memory would be needed; limit was " + i10 + " kb. If the file is not corrupt, consider increasing the memory limit.";
    }
}

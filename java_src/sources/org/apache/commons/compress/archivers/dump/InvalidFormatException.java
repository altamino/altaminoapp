package org.apache.commons.compress.archivers.dump;

/* JADX INFO: loaded from: classes9.dex */
public class InvalidFormatException extends DumpArchiveException {
    private static final long serialVersionUID = 1;
    protected long offset;

    public InvalidFormatException() {
        super("there was an error decoding a tape segment");
    }

    public long getOffset() {
        return this.offset;
    }

    public InvalidFormatException(long j6) {
        super("there was an error decoding a tape segment header at offset " + j6 + ".");
        this.offset = j6;
    }
}

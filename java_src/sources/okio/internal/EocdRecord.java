package okio.internal;

/* JADX INFO: loaded from: classes9.dex */
final class EocdRecord {
    private final long centralDirectoryOffset;
    private final int commentByteCount;
    private final long entryCount;

    public final long getCentralDirectoryOffset() {
        return this.centralDirectoryOffset;
    }

    public final int getCommentByteCount() {
        return this.commentByteCount;
    }

    public final long getEntryCount() {
        return this.entryCount;
    }

    public EocdRecord(long j6, long j10, int i10) {
        this.entryCount = j6;
        this.centralDirectoryOffset = j10;
        this.commentByteCount = i10;
    }
}

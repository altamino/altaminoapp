package androidx.profileinstaller;

/* JADX INFO: loaded from: classes8.dex */
enum FileSectionType {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    public long b() {
        return this.mValue;
    }

    FileSectionType(long j6) {
        this.mValue = j6;
    }
}

package org.apache.commons.compress.archivers.sevenz;

import java.util.BitSet;

/* JADX INFO: loaded from: classes10.dex */
class Archive {
    SevenZArchiveEntry[] files;
    Folder[] folders;
    long[] packCrcs;
    BitSet packCrcsDefined;
    long packPos;
    long[] packSizes;
    StreamMap streamMap;
    SubStreamsInfo subStreamsInfo;

    private static String lengthOf(long[] jArr) {
        return jArr == null ? "(null)" : String.valueOf(jArr.length);
    }

    private static String lengthOf(Object[] objArr) {
        return objArr == null ? "(null)" : String.valueOf(objArr.length);
    }

    public String toString() {
        return "Archive with packed streams starting at offset " + this.packPos + ", " + lengthOf(this.packSizes) + " pack sizes, " + lengthOf(this.packCrcs) + " CRCs, " + lengthOf(this.folders) + " folders, " + lengthOf(this.files) + " files and " + this.streamMap;
    }

    Archive() {
    }
}

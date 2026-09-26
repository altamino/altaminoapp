package org.apache.commons.compress.archivers.ar;

import java.io.File;
import java.util.Date;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes.dex */
public class ArArchiveEntry implements ArchiveEntry {
    private static final int DEFAULT_MODE = 33188;
    public static final String HEADER = "!<arch>\n";
    public static final String TRAILER = "`\n";
    private final int groupId;
    private final long lastModified;
    private final long length;
    private final int mode;
    private final String name;
    private final int userId;

    public ArArchiveEntry(String str, long j6) {
        this(str, j6, 0, 0, 33188, System.currentTimeMillis() / 1000);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ArArchiveEntry arArchiveEntry = (ArArchiveEntry) obj;
        String str = this.name;
        if (str == null) {
            return arArchiveEntry.name == null;
        }
        return str.equals(arArchiveEntry.name);
    }

    public int getGroupId() {
        return this.groupId;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public long getLength() {
        return this.length;
    }

    public int getMode() {
        return this.mode;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    public int getUserId() {
        return this.userId;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getLastModified() * 1000);
    }

    public int hashCode() {
        String str = this.name;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public ArArchiveEntry(String str, long j6, int i10, int i11, int i12, long j10) {
        this.name = str;
        this.length = j6;
        this.userId = i10;
        this.groupId = i11;
        this.mode = i12;
        this.lastModified = j10;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return getLength();
    }

    public ArArchiveEntry(File file, String str) {
        this(str, file.isFile() ? file.length() : 0L, 0, 0, 33188, file.lastModified() / 1000);
    }
}

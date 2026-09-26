package org.apache.commons.compress.archivers.arj;

import com.google.firebase.sessions.settings.c;
import java.io.File;
import java.util.Date;
import java.util.regex.Matcher;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipUtil;

/* JADX INFO: loaded from: classes7.dex */
public class ArjArchiveEntry implements ArchiveEntry {
    private final LocalFileHeader localFileHeader;

    public static class HostOs {
        public static final int AMIGA = 3;
        public static final int APPLE_GS = 6;
        public static final int ATARI_ST = 7;
        public static final int DOS = 0;
        public static final int MAC_OS = 4;
        public static final int NEXT = 8;
        public static final int OS_2 = 5;
        public static final int PRIMOS = 1;
        public static final int UNIX = 2;
        public static final int VAX_VMS = 9;
        public static final int WIN32 = 11;
        public static final int WIN95 = 10;
    }

    public ArjArchiveEntry() {
        this.localFileHeader = new LocalFileHeader();
    }

    public int getHostOs() {
        return this.localFileHeader.hostOS;
    }

    int getMethod() {
        return this.localFileHeader.method;
    }

    public int getMode() {
        return this.localFileHeader.fileAccessMode;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        LocalFileHeader localFileHeader = this.localFileHeader;
        return (localFileHeader.arjFlags & 16) != 0 ? localFileHeader.name.replaceAll(c.FORWARD_SLASH_STRING, Matcher.quoteReplacement(File.separator)) : localFileHeader.name;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.localFileHeader.originalSize;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.localFileHeader.fileType == 3;
    }

    ArjArchiveEntry(LocalFileHeader localFileHeader) {
        this.localFileHeader = localFileHeader;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        long jDosToJavaTime;
        if (isHostOsUnix()) {
            jDosToJavaTime = ((long) this.localFileHeader.dateTimeModified) * 1000;
        } else {
            jDosToJavaTime = ZipUtil.dosToJavaTime(((long) this.localFileHeader.dateTimeModified) & 4294967295L);
        }
        return new Date(jDosToJavaTime);
    }

    public int getUnixMode() {
        if (isHostOsUnix()) {
            return getMode();
        }
        return 0;
    }

    public boolean isHostOsUnix() {
        if (getHostOs() != 2 && getHostOs() != 8) {
            return false;
        }
        return true;
    }
}

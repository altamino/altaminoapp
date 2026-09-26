package org.apache.commons.compress.archivers.cpio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.util.Date;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes8.dex */
public class CpioArchiveEntry implements CpioConstants, ArchiveEntry {
    private final int alignmentBoundary;
    private long chksum;
    private final short fileFormat;
    private long filesize;
    private long gid;
    private final int headerSize;
    private long inode;
    private long maj;
    private long min;
    private long mode;
    private long mtime;
    private String name;
    private long nlink;
    private long rmaj;
    private long rmin;
    private long uid;

    public CpioArchiveEntry(short s) {
        this.chksum = 0L;
        this.filesize = 0L;
        this.gid = 0L;
        this.inode = 0L;
        this.maj = 0L;
        this.min = 0L;
        this.mode = 0L;
        this.mtime = 0L;
        this.nlink = 0L;
        this.rmaj = 0L;
        this.rmin = 0L;
        this.uid = 0L;
        if (s == 1 || s == 2) {
            this.headerSize = 110;
            this.alignmentBoundary = 4;
        } else if (s == 4) {
            this.headerSize = 76;
            this.alignmentBoundary = 0;
        } else {
            if (s != 8) {
                throw new IllegalArgumentException("Unknown header type");
            }
            this.headerSize = 26;
            this.alignmentBoundary = 2;
        }
        this.fileFormat = s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CpioArchiveEntry cpioArchiveEntry = (CpioArchiveEntry) obj;
        String str = this.name;
        if (str == null) {
            return cpioArchiveEntry.name == null;
        }
        return str.equals(cpioArchiveEntry.name);
    }

    public int getAlignmentBoundary() {
        return this.alignmentBoundary;
    }

    public short getFormat() {
        return this.fileFormat;
    }

    public long getGID() {
        return this.gid;
    }

    public int getHeaderSize() {
        return this.headerSize;
    }

    public long getInode() {
        return this.inode;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.filesize;
    }

    public long getTime() {
        return this.mtime;
    }

    public long getUID() {
        return this.uid;
    }

    public void setGID(long j6) {
        this.gid = j6;
    }

    public void setInode(long j6) {
        this.inode = j6;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumberOfLinks(long j6) {
        this.nlink = j6;
    }

    public void setTime(long j6) {
        this.mtime = j6;
    }

    public void setUID(long j6) {
        this.uid = j6;
    }

    private void checkNewFormat() {
        if ((this.fileFormat & 3) == 0) {
            throw new UnsupportedOperationException();
        }
    }

    private void checkOldFormat() {
        if ((this.fileFormat & 12) == 0) {
            throw new UnsupportedOperationException();
        }
    }

    public int getDataPadCount() {
        int i10;
        int i11 = this.alignmentBoundary;
        if (i11 != 0 && (i10 = (int) (this.filesize % ((long) i11))) > 0) {
            return i11 - i10;
        }
        return 0;
    }

    public int getHeaderPadCount() {
        if (this.alignmentBoundary == 0) {
            return 0;
        }
        int length = this.headerSize + 1;
        String str = this.name;
        if (str != null) {
            length += str.length();
        }
        int i10 = this.alignmentBoundary;
        int i11 = length % i10;
        if (i11 > 0) {
            return i10 - i11;
        }
        return 0;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getTime() * 1000);
    }

    public long getMode() {
        return (this.mode != 0 || CpioConstants.CPIO_TRAILER.equals(this.name)) ? this.mode : PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
    }

    public long getNumberOfLinks() {
        long j6 = this.nlink;
        if (j6 == 0) {
            return isDirectory() ? 2L : 1L;
        }
        return j6;
    }

    public int hashCode() {
        String str = this.name;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    public boolean isBlockDevice() {
        return CpioUtil.fileType(this.mode) == 24576;
    }

    public boolean isCharacterDevice() {
        return CpioUtil.fileType(this.mode) == PlaybackStateCompat.ACTION_PLAY_FROM_URI;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return CpioUtil.fileType(this.mode) == 16384;
    }

    public boolean isNetwork() {
        return CpioUtil.fileType(this.mode) == 36864;
    }

    public boolean isPipe() {
        return CpioUtil.fileType(this.mode) == PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
    }

    public boolean isRegularFile() {
        return CpioUtil.fileType(this.mode) == PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
    }

    public boolean isSocket() {
        return CpioUtil.fileType(this.mode) == 49152;
    }

    public boolean isSymbolicLink() {
        return CpioUtil.fileType(this.mode) == 40960;
    }

    public void setSize(long j6) {
        if (j6 >= 0 && j6 <= 4294967295L) {
            this.filesize = j6;
            return;
        }
        throw new IllegalArgumentException("invalid entry size <" + j6 + ">");
    }

    public CpioArchiveEntry(String str) {
        this((short) 1, str);
    }

    public long getChksum() {
        checkNewFormat();
        return this.chksum & 4294967295L;
    }

    public long getDevice() {
        checkOldFormat();
        return this.min;
    }

    public long getDeviceMaj() {
        checkNewFormat();
        return this.maj;
    }

    public long getDeviceMin() {
        checkNewFormat();
        return this.min;
    }

    public long getRemoteDevice() {
        checkOldFormat();
        return this.rmin;
    }

    public long getRemoteDeviceMaj() {
        checkNewFormat();
        return this.rmaj;
    }

    public long getRemoteDeviceMin() {
        checkNewFormat();
        return this.rmin;
    }

    public void setChksum(long j6) {
        checkNewFormat();
        this.chksum = j6 & 4294967295L;
    }

    public void setDevice(long j6) {
        checkOldFormat();
        this.min = j6;
    }

    public void setDeviceMaj(long j6) {
        checkNewFormat();
        this.maj = j6;
    }

    public void setDeviceMin(long j6) {
        checkNewFormat();
        this.min = j6;
    }

    public void setMode(long j6) {
        long j10 = 61440 & j6;
        switch ((int) j10) {
            case 4096:
            case 8192:
            case 16384:
            case CpioConstants.C_ISBLK /* 24576 */:
            case 32768:
            case CpioConstants.C_ISNWK /* 36864 */:
            case 40960:
            case CpioConstants.C_ISSOCK /* 49152 */:
                this.mode = j6;
                return;
            default:
                throw new IllegalArgumentException("Unknown mode. Full: " + Long.toHexString(j6) + " Masked: " + Long.toHexString(j10));
        }
    }

    public void setRemoteDevice(long j6) {
        checkOldFormat();
        this.rmin = j6;
    }

    public void setRemoteDeviceMaj(long j6) {
        checkNewFormat();
        this.rmaj = j6;
    }

    public void setRemoteDeviceMin(long j6) {
        checkNewFormat();
        this.rmin = j6;
    }

    public CpioArchiveEntry(short s, String str) {
        this(s);
        this.name = str;
    }

    public CpioArchiveEntry(String str, long j6) {
        this(str);
        setSize(j6);
    }

    public CpioArchiveEntry(short s, String str, long j6) {
        this(s, str);
        setSize(j6);
    }

    public CpioArchiveEntry(File file, String str) {
        this((short) 1, file, str);
    }

    public CpioArchiveEntry(short s, File file, String str) {
        this(s, str, file.isFile() ? file.length() : 0L);
        if (file.isDirectory()) {
            setMode(16384L);
        } else if (file.isFile()) {
            setMode(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        } else {
            throw new IllegalArgumentException("Cannot determine type of file " + file.getName());
        }
        setTime(file.lastModified() / 1000);
    }
}

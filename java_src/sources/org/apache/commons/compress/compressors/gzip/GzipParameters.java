package org.apache.commons.compress.compressors.gzip;

/* JADX INFO: loaded from: classes11.dex */
public class GzipParameters {
    private String comment;
    private String filename;
    private long modificationTime;
    private int compressionLevel = -1;
    private int operatingSystem = 255;

    public String getComment() {
        return this.comment;
    }

    public int getCompressionLevel() {
        return this.compressionLevel;
    }

    public String getFilename() {
        return this.filename;
    }

    public long getModificationTime() {
        return this.modificationTime;
    }

    public int getOperatingSystem() {
        return this.operatingSystem;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setCompressionLevel(int i10) {
        if (i10 >= -1 && i10 <= 9) {
            this.compressionLevel = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid gzip compression level: " + i10);
    }

    public void setFilename(String str) {
        this.filename = str;
    }

    public void setModificationTime(long j6) {
        this.modificationTime = j6;
    }

    public void setOperatingSystem(int i10) {
        this.operatingSystem = i10;
    }
}

package org.apache.commons.compress.archivers.sevenz;

import androidx.work.WorkRequest;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.TimeZone;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* JADX INFO: loaded from: classes6.dex */
public class SevenZArchiveEntry implements ArchiveEntry {
    private long accessDate;
    private long compressedCrc;
    private long compressedSize;
    private Iterable<? extends SevenZMethodConfiguration> contentMethods;
    private long crc;
    private long creationDate;
    private boolean hasAccessDate;
    private boolean hasCrc;
    private boolean hasCreationDate;
    private boolean hasLastModifiedDate;
    private boolean hasStream;
    private boolean hasWindowsAttributes;
    private boolean isAntiItem;
    private boolean isDirectory;
    private long lastModifiedDate;
    private String name;
    private long size;
    private int windowsAttributes;

    @Deprecated
    int getCompressedCrc() {
        return (int) this.compressedCrc;
    }

    long getCompressedCrcValue() {
        return this.compressedCrc;
    }

    long getCompressedSize() {
        return this.compressedSize;
    }

    public Iterable<? extends SevenZMethodConfiguration> getContentMethods() {
        return this.contentMethods;
    }

    @Deprecated
    public int getCrc() {
        return (int) this.crc;
    }

    public long getCrcValue() {
        return this.crc;
    }

    public boolean getHasAccessDate() {
        return this.hasAccessDate;
    }

    public boolean getHasCrc() {
        return this.hasCrc;
    }

    public boolean getHasCreationDate() {
        return this.hasCreationDate;
    }

    public boolean getHasLastModifiedDate() {
        return this.hasLastModifiedDate;
    }

    public boolean getHasWindowsAttributes() {
        return this.hasWindowsAttributes;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.name;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    public int getWindowsAttributes() {
        return this.windowsAttributes;
    }

    public boolean hasStream() {
        return this.hasStream;
    }

    public boolean isAntiItem() {
        return this.isAntiItem;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.isDirectory;
    }

    public void setAccessDate(long j6) {
        this.accessDate = j6;
    }

    public void setAntiItem(boolean z6) {
        this.isAntiItem = z6;
    }

    @Deprecated
    void setCompressedCrc(int i10) {
        this.compressedCrc = i10;
    }

    void setCompressedCrcValue(long j6) {
        this.compressedCrc = j6;
    }

    void setCompressedSize(long j6) {
        this.compressedSize = j6;
    }

    @Deprecated
    public void setCrc(int i10) {
        this.crc = i10;
    }

    public void setCrcValue(long j6) {
        this.crc = j6;
    }

    public void setCreationDate(long j6) {
        this.creationDate = j6;
    }

    public void setDirectory(boolean z6) {
        this.isDirectory = z6;
    }

    public void setHasAccessDate(boolean z6) {
        this.hasAccessDate = z6;
    }

    public void setHasCrc(boolean z6) {
        this.hasCrc = z6;
    }

    public void setHasCreationDate(boolean z6) {
        this.hasCreationDate = z6;
    }

    public void setHasLastModifiedDate(boolean z6) {
        this.hasLastModifiedDate = z6;
    }

    public void setHasStream(boolean z6) {
        this.hasStream = z6;
    }

    public void setHasWindowsAttributes(boolean z6) {
        this.hasWindowsAttributes = z6;
    }

    public void setLastModifiedDate(long j6) {
        this.lastModifiedDate = j6;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSize(long j6) {
        this.size = j6;
    }

    public void setWindowsAttributes(int i10) {
        this.windowsAttributes = i10;
    }

    public Date getAccessDate() {
        if (this.hasAccessDate) {
            return ntfsTimeToJavaTime(this.accessDate);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    public Date getCreationDate() {
        if (this.hasCreationDate) {
            return ntfsTimeToJavaTime(this.creationDate);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        if (this.hasLastModifiedDate) {
            return ntfsTimeToJavaTime(this.lastModifiedDate);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    public void setAccessDate(Date date) {
        boolean z6 = date != null;
        this.hasAccessDate = z6;
        if (z6) {
            this.accessDate = javaTimeToNtfsTime(date);
        }
    }

    public void setContentMethods(Iterable<? extends SevenZMethodConfiguration> iterable) {
        if (iterable == null) {
            this.contentMethods = null;
            return;
        }
        LinkedList linkedList = new LinkedList();
        Iterator<? extends SevenZMethodConfiguration> it = iterable.iterator();
        while (it.hasNext()) {
            linkedList.addLast(it.next());
        }
        this.contentMethods = Collections.unmodifiableList(linkedList);
    }

    public void setCreationDate(Date date) {
        boolean z6 = date != null;
        this.hasCreationDate = z6;
        if (z6) {
            this.creationDate = javaTimeToNtfsTime(date);
        }
    }

    public void setLastModifiedDate(Date date) {
        boolean z6 = date != null;
        this.hasLastModifiedDate = z6;
        if (z6) {
            this.lastModifiedDate = javaTimeToNtfsTime(date);
        }
    }

    public static long javaTimeToNtfsTime(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("GMT+0"));
        calendar.set(1601, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        return (date.getTime() - calendar.getTimeInMillis()) * WorkRequest.MIN_BACKOFF_MILLIS;
    }

    public static Date ntfsTimeToJavaTime(long j6) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("GMT+0"));
        calendar.set(1601, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        return new Date(calendar.getTimeInMillis() + (j6 / WorkRequest.MIN_BACKOFF_MILLIS));
    }
}

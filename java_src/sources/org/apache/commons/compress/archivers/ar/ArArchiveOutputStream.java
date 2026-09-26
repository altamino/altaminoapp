package org.apache.commons.compress.archivers.ar;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.utils.ArchiveUtils;

/* JADX INFO: loaded from: classes6.dex */
public class ArArchiveOutputStream extends ArchiveOutputStream {
    public static final int LONGFILE_BSD = 1;
    public static final int LONGFILE_ERROR = 0;
    private final OutputStream out;
    private ArArchiveEntry prevEntry;
    private long entryOffset = 0;
    private boolean haveUnclosedEntry = false;
    private int longFileMode = 0;
    private boolean finished = false;

    private long write(String str) throws IOException {
        byte[] bytes = str.getBytes("ascii");
        write(bytes);
        return bytes.length;
    }

    public void setLongFileMode(int i10) {
        this.longFileMode = i10;
    }

    private long fill(long j6, long j10, char c7) throws IOException {
        long j11 = j10 - j6;
        if (j11 > 0) {
            for (int i10 = 0; i10 < j11; i10++) {
                write(c7);
            }
        }
        return j10;
    }

    private long writeArchiveHeader() throws IOException {
        byte[] asciiBytes = ArchiveUtils.toAsciiBytes(ArArchiveEntry.HEADER);
        this.out.write(asciiBytes);
        return asciiBytes.length;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.finished) {
            finish();
        }
        this.out.close();
        this.prevEntry = null;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        if (this.prevEntry == null || !this.haveUnclosedEntry) {
            throw new IOException("No current entry to close");
        }
        if (this.entryOffset % 2 != 0) {
            this.out.write(10);
        }
        this.haveUnclosedEntry = false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        return new ArArchiveEntry(file, str);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.haveUnclosedEntry) {
            throw new IOException("This archive contains unclosed entries.");
        }
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        this.finished = true;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        ArArchiveEntry arArchiveEntry = (ArArchiveEntry) archiveEntry;
        ArArchiveEntry arArchiveEntry2 = this.prevEntry;
        if (arArchiveEntry2 == null) {
            writeArchiveHeader();
        } else {
            if (arArchiveEntry2.getLength() != this.entryOffset) {
                throw new IOException("length does not match entry (" + this.prevEntry.getLength() + " != " + this.entryOffset);
            }
            if (this.haveUnclosedEntry) {
                closeArchiveEntry();
            }
        }
        this.prevEntry = arArchiveEntry;
        writeEntryHeader(arArchiveEntry);
        this.entryOffset = 0L;
        this.haveUnclosedEntry = true;
    }

    public ArArchiveOutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    private long writeEntryHeader(ArArchiveEntry arArchiveEntry) throws IOException {
        long jWrite;
        boolean z6;
        String name = arArchiveEntry.getName();
        if (this.longFileMode == 0 && name.length() > 16) {
            throw new IOException("filename too long, > 16 chars: " + name);
        }
        int length = 0;
        if (1 == this.longFileMode && (name.length() > 16 || name.contains(" "))) {
            z6 = true;
            jWrite = write("#1/" + String.valueOf(name.length()));
        } else {
            jWrite = write(name);
            z6 = false;
        }
        long jFill = fill(jWrite, 16L, ' ');
        String str = "" + arArchiveEntry.getLastModified();
        if (str.length() <= 12) {
            long jFill2 = fill(jFill + write(str), 28L, ' ');
            String str2 = "" + arArchiveEntry.getUserId();
            if (str2.length() <= 6) {
                long jFill3 = fill(jFill2 + write(str2), 34L, ' ');
                String str3 = "" + arArchiveEntry.getGroupId();
                if (str3.length() <= 6) {
                    long jFill4 = fill(jFill3 + write(str3), 40L, ' ');
                    String str4 = "" + Integer.toString(arArchiveEntry.getMode(), 8);
                    if (str4.length() <= 8) {
                        long jFill5 = fill(jFill4 + write(str4), 48L, ' ');
                        long length2 = arArchiveEntry.getLength();
                        if (z6) {
                            length = name.length();
                        }
                        String strValueOf = String.valueOf(length2 + ((long) length));
                        if (strValueOf.length() <= 10) {
                            long jFill6 = fill(jFill5 + write(strValueOf), 58L, ' ') + write(ArArchiveEntry.TRAILER);
                            if (z6) {
                                return jFill6 + write(name);
                            }
                            return jFill6;
                        }
                        throw new IOException("size too long");
                    }
                    throw new IOException("filemode too long");
                }
                throw new IOException("groupid too long");
            }
            throw new IOException("userid too long");
        }
        throw new IOException("modified too long");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
        count(i11);
        this.entryOffset += (long) i11;
    }
}

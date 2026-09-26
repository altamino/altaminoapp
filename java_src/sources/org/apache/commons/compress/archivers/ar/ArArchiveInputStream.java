package org.apache.commons.compress.archivers.ar;

import com.google.firebase.sessions.settings.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes6.dex */
public class ArArchiveInputStream extends ArchiveInputStream {
    private static final String BSD_LONGNAME_PATTERN = "^#1/\\d+";
    static final String BSD_LONGNAME_PREFIX = "#1/";
    private static final int BSD_LONGNAME_PREFIX_LEN = 3;
    private static final String GNU_LONGNAME_PATTERN = "^/\\d+";
    private static final String GNU_STRING_TABLE_NAME = "//";
    private final InputStream input;
    private long offset = 0;
    private ArArchiveEntry currentEntry = null;
    private byte[] namebuffer = null;
    private long entryOffset = -1;
    private final byte[] nameBuf = new byte[16];
    private final byte[] lastModifiedBuf = new byte[12];
    private final byte[] idBuf = new byte[6];
    private final byte[] fileModeBuf = new byte[8];
    private final byte[] lengthBuf = new byte[10];
    private boolean closed = false;

    private int asInt(byte[] bArr) {
        return asInt(bArr, 10, false);
    }

    private int asInt(byte[] bArr, boolean z6) {
        return asInt(bArr, 10, z6);
    }

    private String getBSDLongName(String str) throws IOException {
        int i10 = Integer.parseInt(str.substring(BSD_LONGNAME_PREFIX_LEN));
        byte[] bArr = new byte[i10];
        if (IOUtils.readFully(this, bArr) == i10) {
            return ArchiveUtils.toAsciiString(bArr);
        }
        throw new EOFException();
    }

    private String getExtendedName(int i10) throws IOException {
        if (this.namebuffer == null) {
            throw new IOException("Cannot process GNU long filename as no // record was found");
        }
        int i11 = i10;
        while (true) {
            byte[] bArr = this.namebuffer;
            if (i11 >= bArr.length) {
                throw new IOException("Failed to read entry: " + i10);
            }
            byte b7 = bArr[i11];
            if (b7 == 10 || b7 == 0) {
                if (bArr[i11 - 1] == 47) {
                    i11--;
                }
                return ArchiveUtils.toAsciiString(bArr, i10, i11 - i10);
            }
            i11++;
        }
    }

    private static boolean isBSDLongName(String str) {
        return str != null && str.matches(BSD_LONGNAME_PATTERN);
    }

    private boolean isGNULongName(String str) {
        return str != null && str.matches(GNU_LONGNAME_PATTERN);
    }

    private static boolean isGNUStringTable(String str) {
        return GNU_STRING_TABLE_NAME.equals(str);
    }

    public static boolean matches(byte[] bArr, int i10) {
        return i10 >= 8 && bArr[0] == 33 && bArr[1] == 60 && bArr[2] == 97 && bArr[3] == 114 && bArr[4] == 99 && bArr[5] == 104 && bArr[6] == 62 && bArr[7] == 10;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.closed) {
            this.closed = true;
            this.input.close();
        }
        this.currentEntry = null;
    }

    public ArArchiveEntry getNextArEntry() throws IOException {
        ArArchiveEntry arArchiveEntry = this.currentEntry;
        if (arArchiveEntry != null) {
            IOUtils.skip(this, (this.entryOffset + arArchiveEntry.getLength()) - this.offset);
            this.currentEntry = null;
        }
        if (this.offset == 0) {
            byte[] asciiBytes = ArchiveUtils.toAsciiBytes(ArArchiveEntry.HEADER);
            byte[] bArr = new byte[asciiBytes.length];
            if (IOUtils.readFully(this, bArr) != asciiBytes.length) {
                throw new IOException("failed to read header. Occured at byte: " + getBytesRead());
            }
            for (int i10 = 0; i10 < asciiBytes.length; i10++) {
                if (asciiBytes[i10] != bArr[i10]) {
                    throw new IOException("invalid header " + ArchiveUtils.toAsciiString(bArr));
                }
            }
        }
        if ((this.offset % 2 != 0 && read() < 0) || this.input.available() == 0) {
            return null;
        }
        IOUtils.readFully(this, this.nameBuf);
        IOUtils.readFully(this, this.lastModifiedBuf);
        IOUtils.readFully(this, this.idBuf);
        int iAsInt = asInt(this.idBuf, true);
        IOUtils.readFully(this, this.idBuf);
        IOUtils.readFully(this, this.fileModeBuf);
        IOUtils.readFully(this, this.lengthBuf);
        byte[] asciiBytes2 = ArchiveUtils.toAsciiBytes(ArArchiveEntry.TRAILER);
        byte[] bArr2 = new byte[asciiBytes2.length];
        if (IOUtils.readFully(this, bArr2) != asciiBytes2.length) {
            throw new IOException("failed to read entry trailer. Occured at byte: " + getBytesRead());
        }
        for (int i11 = 0; i11 < asciiBytes2.length; i11++) {
            if (asciiBytes2[i11] != bArr2[i11]) {
                throw new IOException("invalid entry trailer. not read the content? Occured at byte: " + getBytesRead());
            }
        }
        this.entryOffset = this.offset;
        String strTrim = ArchiveUtils.toAsciiString(this.nameBuf).trim();
        if (isGNUStringTable(strTrim)) {
            this.currentEntry = readGNUStringTable(this.lengthBuf);
            return getNextArEntry();
        }
        long jAsLong = asLong(this.lengthBuf);
        if (strTrim.endsWith(c.FORWARD_SLASH_STRING)) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        } else if (isGNULongName(strTrim)) {
            strTrim = getExtendedName(Integer.parseInt(strTrim.substring(1)));
        } else if (isBSDLongName(strTrim)) {
            strTrim = getBSDLongName(strTrim);
            long length = strTrim.length();
            jAsLong -= length;
            this.entryOffset += length;
        }
        ArArchiveEntry arArchiveEntry2 = new ArArchiveEntry(strTrim, jAsLong, iAsInt, asInt(this.idBuf, true), asInt(this.fileModeBuf, 8), asLong(this.lastModifiedBuf));
        this.currentEntry = arArchiveEntry2;
        return arArchiveEntry2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        ArArchiveEntry arArchiveEntry = this.currentEntry;
        if (arArchiveEntry != null) {
            long length = this.entryOffset + arArchiveEntry.getLength();
            if (i11 <= 0) {
                return -1;
            }
            long j6 = this.offset;
            if (length <= j6) {
                return -1;
            }
            i11 = (int) Math.min(i11, length - j6);
        }
        int i12 = this.input.read(bArr, i10, i11);
        count(i12);
        this.offset += i12 > 0 ? i12 : 0L;
        return i12;
    }

    public ArArchiveInputStream(InputStream inputStream) {
        this.input = inputStream;
    }

    private int asInt(byte[] bArr, int i10) {
        return asInt(bArr, i10, false);
    }

    private long asLong(byte[] bArr) {
        return Long.parseLong(ArchiveUtils.toAsciiString(bArr).trim());
    }

    private ArArchiveEntry readGNUStringTable(byte[] bArr) throws IOException {
        int iAsInt = asInt(bArr);
        byte[] bArr2 = new byte[iAsInt];
        this.namebuffer = bArr2;
        int fully = IOUtils.readFully(this, bArr2, 0, iAsInt);
        if (fully == iAsInt) {
            return new ArArchiveEntry(GNU_STRING_TABLE_NAME, iAsInt);
        }
        throw new IOException("Failed to read complete // record: expected=" + iAsInt + " read=" + fully);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextArEntry();
    }

    private int asInt(byte[] bArr, int i10, boolean z6) {
        String strTrim = ArchiveUtils.toAsciiString(bArr).trim();
        if (strTrim.length() == 0 && z6) {
            return 0;
        }
        return Integer.parseInt(strTrim, i10);
    }
}

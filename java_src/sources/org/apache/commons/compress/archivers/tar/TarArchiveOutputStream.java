package org.apache.commons.compress.archivers.tar;

import com.google.common.base.c;
import com.narvii.modulization.ConfigApiRequestHelper;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.CountingOutputStream;
import org.apache.commons.compress.utils.FixedLengthBlockOutputStream;

/* JADX INFO: loaded from: classes11.dex */
public class TarArchiveOutputStream extends ArchiveOutputStream {
    private static final ZipEncoding ASCII = ZipEncodingHelper.getZipEncoding("ASCII");
    public static final int BIGNUMBER_ERROR = 0;
    public static final int BIGNUMBER_POSIX = 2;
    public static final int BIGNUMBER_STAR = 1;
    private static final int BLOCK_SIZE_UNSPECIFIED = -511;
    public static final int LONGFILE_ERROR = 0;
    public static final int LONGFILE_GNU = 2;
    public static final int LONGFILE_POSIX = 3;
    public static final int LONGFILE_TRUNCATE = 1;
    private static final int RECORD_SIZE = 512;
    private boolean addPaxHeadersForNonAsciiNames;
    private int bigNumberMode;
    private boolean closed;
    private final CountingOutputStream countingOut;
    private long currBytes;
    private String currName;
    private long currSize;
    final String encoding;
    private boolean finished;
    private boolean haveUnclosedEntry;
    private int longFileMode;
    private final FixedLengthBlockOutputStream out;
    private final byte[] recordBuf;
    private final int recordsPerBlock;
    private int recordsWritten;
    private final ZipEncoding zipEncoding;

    public TarArchiveOutputStream(OutputStream outputStream) {
        this(outputStream, BLOCK_SIZE_UNSPECIFIED);
    }

    private void failForBigNumber(String str, long j6, long j10) {
        failForBigNumber(str, j6, j10, "");
    }

    private boolean shouldBeReplaced(char c7) {
        return c7 == 0 || c7 == '/' || c7 == '\\';
    }

    private void writeRecord(byte[] bArr) throws IOException {
        if (bArr.length == 512) {
            this.out.write(bArr);
            this.recordsWritten++;
            return;
        }
        throw new IOException("record to write has length '" + bArr.length + "' which is not the record size of '512'");
    }

    @Deprecated
    public int getRecordSize() {
        return 512;
    }

    public void setAddPaxHeadersForNonAsciiNames(boolean z6) {
        this.addPaxHeadersForNonAsciiNames = z6;
    }

    public void setBigNumberMode(int i10) {
        this.bigNumberMode = i10;
    }

    public void setLongFileMode(int i10) {
        this.longFileMode = i10;
    }

    public TarArchiveOutputStream(OutputStream outputStream, String str) {
        this(outputStream, BLOCK_SIZE_UNSPECIFIED, str);
    }

    private void addPaxHeaderForBigNumber(Map<String, String> map, String str, long j6, long j10) {
        if (j6 < 0 || j6 > j10) {
            map.put(str, String.valueOf(j6));
        }
    }

    private void addPaxHeadersForBigNumbers(Map<String, String> map, TarArchiveEntry tarArchiveEntry) {
        addPaxHeaderForBigNumber(map, "size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        addPaxHeaderForBigNumber(map, "gid", tarArchiveEntry.getLongGroupId(), TarConstants.MAXID);
        addPaxHeaderForBigNumber(map, "mtime", tarArchiveEntry.getModTime().getTime() / 1000, TarConstants.MAXSIZE);
        addPaxHeaderForBigNumber(map, "uid", tarArchiveEntry.getLongUserId(), TarConstants.MAXID);
        addPaxHeaderForBigNumber(map, "SCHILY.devmajor", tarArchiveEntry.getDevMajor(), TarConstants.MAXID);
        addPaxHeaderForBigNumber(map, "SCHILY.devminor", tarArchiveEntry.getDevMinor(), TarConstants.MAXID);
        failForBigNumber("mode", tarArchiveEntry.getMode(), TarConstants.MAXID);
    }

    private byte[] encodeExtendedPaxHeadersContents(Map<String, String> map) throws UnsupportedEncodingException {
        StringWriter stringWriter = new StringWriter();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            int length = key.length() + value.length() + 5;
            String str = length + " " + key + "=" + value + "\n";
            int length2 = str.getBytes("UTF-8").length;
            while (length != length2) {
                str = length2 + " " + key + "=" + value + "\n";
                int i10 = length2;
                length2 = str.getBytes("UTF-8").length;
                length = i10;
            }
            stringWriter.write(str);
        }
        return stringWriter.toString().getBytes("UTF-8");
    }

    private void failForBigNumber(String str, long j6, long j10, String str2) {
        if (j6 < 0 || j6 > j10) {
            throw new RuntimeException(str + " '" + j6 + "' is too big ( > " + j10 + " )." + str2);
        }
    }

    private void failForBigNumberWithPosixMessage(String str, long j6, long j10) {
        failForBigNumber(str, j6, j10, " Use STAR or POSIX extensions to overcome this limit");
    }

    private void failForBigNumbers(TarArchiveEntry tarArchiveEntry) {
        failForBigNumber("entry size", tarArchiveEntry.getSize(), TarConstants.MAXSIZE);
        failForBigNumberWithPosixMessage("group id", tarArchiveEntry.getLongGroupId(), TarConstants.MAXID);
        failForBigNumber("last modification time", tarArchiveEntry.getModTime().getTime() / 1000, TarConstants.MAXSIZE);
        failForBigNumber("user id", tarArchiveEntry.getLongUserId(), TarConstants.MAXID);
        failForBigNumber("mode", tarArchiveEntry.getMode(), TarConstants.MAXID);
        failForBigNumber("major device number", tarArchiveEntry.getDevMajor(), TarConstants.MAXID);
        failForBigNumber("minor device number", tarArchiveEntry.getDevMinor(), TarConstants.MAXID);
    }

    private boolean handleLongName(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map, String str2, byte b7, String str3) throws IOException {
        ByteBuffer byteBufferEncode = this.zipEncoding.encode(str);
        int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
        if (iLimit >= 100) {
            int i10 = this.longFileMode;
            if (i10 == 3) {
                map.put(str2, str);
                return true;
            }
            if (i10 == 2) {
                TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(TarConstants.GNU_LONGLINK, b7);
                tarArchiveEntry2.setSize(((long) iLimit) + 1);
                transferModTime(tarArchiveEntry, tarArchiveEntry2);
                putArchiveEntry(tarArchiveEntry2);
                write(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), iLimit);
                write(0);
                closeArchiveEntry();
            } else if (i10 != 1) {
                throw new RuntimeException(str3 + " '" + str + "' is too long ( > 100 bytes)");
            }
        }
        return false;
    }

    private void padAsNeeded() throws IOException {
        int i10 = this.recordsWritten % this.recordsPerBlock;
        if (i10 != 0) {
            while (i10 < this.recordsPerBlock) {
                writeEOFRecord();
                i10++;
            }
        }
    }

    private void writeEOFRecord() throws IOException {
        Arrays.fill(this.recordBuf, (byte) 0);
        writeRecord(this.recordBuf);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.finished) {
            finish();
        }
        if (this.closed) {
            return;
        }
        this.out.close();
        this.closed = true;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void closeArchiveEntry() throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        if (!this.haveUnclosedEntry) {
            throw new IOException("No current entry to close");
        }
        this.out.flushBlock();
        long j6 = this.currBytes;
        long j10 = this.currSize;
        if (j6 >= j10) {
            int i10 = (int) (((long) this.recordsWritten) + (j10 / 512));
            this.recordsWritten = i10;
            if (0 != j10 % 512) {
                this.recordsWritten = i10 + 1;
            }
            this.haveUnclosedEntry = false;
            return;
        }
        throw new IOException("entry '" + this.currName + "' closed at '" + this.currBytes + "' before the '" + this.currSize + "' bytes specified in the header were written");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        return new TarArchiveEntry(file, str);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        if (this.haveUnclosedEntry) {
            throw new IOException("This archive contains unclosed entries.");
        }
        writeEOFRecord();
        writeEOFRecord();
        padAsNeeded();
        this.out.flush();
        this.finished = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public long getBytesWritten() {
        return this.countingOut.getBytesWritten();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0086  */
    /* JADX WARN: Code duplicated, block: B:23:0x008a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:47:0x00db  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef  */
    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        String str;
        int i10;
        boolean z6;
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        TarArchiveEntry tarArchiveEntry = (TarArchiveEntry) archiveEntry;
        if (tarArchiveEntry.isGlobalPaxHeader()) {
            byte[] bArrEncodeExtendedPaxHeadersContents = encodeExtendedPaxHeadersContents(tarArchiveEntry.getExtraPaxHeaders());
            tarArchiveEntry.setSize(bArrEncodeExtendedPaxHeadersContents.length);
            tarArchiveEntry.writeEntryHeader(this.recordBuf, this.zipEncoding, this.bigNumberMode == 1);
            writeRecord(this.recordBuf);
            this.currSize = tarArchiveEntry.getSize();
            this.currBytes = 0L;
            this.haveUnclosedEntry = true;
            write(bArrEncodeExtendedPaxHeadersContents);
            closeArchiveEntry();
            return;
        }
        HashMap map = new HashMap();
        String name = tarArchiveEntry.getName();
        boolean zHandleLongName = handleLongName(tarArchiveEntry, name, map, ConfigApiRequestHelper.PATH_KEY, TarConstants.LF_GNUTYPE_LONGNAME, "file name");
        String linkName = tarArchiveEntry.getLinkName();
        if (linkName != null && linkName.length() > 0) {
            str = linkName;
            boolean z10 = handleLongName(tarArchiveEntry, linkName, map, "linkpath", TarConstants.LF_GNUTYPE_LONGLINK, "link name");
            i10 = this.bigNumberMode;
            if (i10 == 2) {
                addPaxHeadersForBigNumbers(map, tarArchiveEntry);
            } else if (i10 != 1) {
                failForBigNumbers(tarArchiveEntry);
            }
            if (this.addPaxHeadersForNonAsciiNames && !zHandleLongName && !ASCII.canEncode(name)) {
                map.put(ConfigApiRequestHelper.PATH_KEY, name);
            }
            if (this.addPaxHeadersForNonAsciiNames && !z10 && ((tarArchiveEntry.isLink() || tarArchiveEntry.isSymbolicLink()) && !ASCII.canEncode(str))) {
                map.put("linkpath", str);
            }
            map.putAll(tarArchiveEntry.getExtraPaxHeaders());
            if (map.size() > 0) {
                writePaxHeaders(tarArchiveEntry, name, map);
            }
            byte[] bArr = this.recordBuf;
            ZipEncoding zipEncoding = this.zipEncoding;
            if (this.bigNumberMode == 1) {
                z6 = true;
            } else {
                z6 = false;
            }
            tarArchiveEntry.writeEntryHeader(bArr, zipEncoding, z6);
            writeRecord(this.recordBuf);
            this.currBytes = 0L;
            if (tarArchiveEntry.isDirectory()) {
                this.currSize = 0L;
            } else {
                this.currSize = tarArchiveEntry.getSize();
            }
            this.currName = name;
            this.haveUnclosedEntry = true;
        }
        str = linkName;
        i10 = this.bigNumberMode;
        if (i10 == 2) {
            addPaxHeadersForBigNumbers(map, tarArchiveEntry);
        } else if (i10 != 1) {
            failForBigNumbers(tarArchiveEntry);
        }
        if (this.addPaxHeadersForNonAsciiNames) {
            map.put(ConfigApiRequestHelper.PATH_KEY, name);
        }
        if (this.addPaxHeadersForNonAsciiNames) {
            map.put("linkpath", str);
        }
        map.putAll(tarArchiveEntry.getExtraPaxHeaders());
        if (map.size() > 0) {
            writePaxHeaders(tarArchiveEntry, name, map);
        }
        byte[] bArr2 = this.recordBuf;
        ZipEncoding zipEncoding2 = this.zipEncoding;
        if (this.bigNumberMode == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        tarArchiveEntry.writeEntryHeader(bArr2, zipEncoding2, z6);
        writeRecord(this.recordBuf);
        this.currBytes = 0L;
        if (tarArchiveEntry.isDirectory()) {
            this.currSize = 0L;
        } else {
            this.currSize = tarArchiveEntry.getSize();
        }
        this.currName = name;
        this.haveUnclosedEntry = true;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.haveUnclosedEntry) {
            throw new IllegalStateException("No current tar entry");
        }
        long j6 = i11;
        if (this.currBytes + j6 <= this.currSize) {
            this.out.write(bArr, i10, i11);
            this.currBytes += j6;
            return;
        }
        throw new IOException("request to write '" + i11 + "' bytes exceeds size in header of '" + this.currSize + "' bytes for entry '" + this.currName + "'");
    }

    void writePaxHeaders(TarArchiveEntry tarArchiveEntry, String str, Map<String, String> map) throws IOException {
        String strSubstring = "./PaxHeaders.X/" + stripTo7Bits(str);
        if (strSubstring.length() >= 100) {
            strSubstring = strSubstring.substring(0, 99);
        }
        TarArchiveEntry tarArchiveEntry2 = new TarArchiveEntry(strSubstring, TarConstants.LF_PAX_EXTENDED_HEADER_LC);
        transferModTime(tarArchiveEntry, tarArchiveEntry2);
        byte[] bArrEncodeExtendedPaxHeadersContents = encodeExtendedPaxHeadersContents(map);
        tarArchiveEntry2.setSize(bArrEncodeExtendedPaxHeadersContents.length);
        putArchiveEntry(tarArchiveEntry2);
        write(bArrEncodeExtendedPaxHeadersContents);
        closeArchiveEntry();
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i10) {
        this(outputStream, i10, (String) null);
    }

    private String stripTo7Bits(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = (char) (str.charAt(i10) & c.MAX);
            if (shouldBeReplaced(cCharAt)) {
                sb.append("_");
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    private void transferModTime(TarArchiveEntry tarArchiveEntry, TarArchiveEntry tarArchiveEntry2) {
        Date modTime = tarArchiveEntry.getModTime();
        long time = modTime.getTime() / 1000;
        if (time < 0 || time > TarConstants.MAXSIZE) {
            modTime = new Date(0L);
        }
        tarArchiveEntry2.setModTime(modTime);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    @Deprecated
    public int getCount() {
        return (int) getBytesWritten();
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i10, int i11) {
        this(outputStream, i10, i11, null);
    }

    @Deprecated
    public TarArchiveOutputStream(OutputStream outputStream, int i10, int i11, String str) {
        this(outputStream, i10, str);
        if (i11 == 512) {
            return;
        }
        throw new IllegalArgumentException("Tar record size must always be 512 bytes. Attempt to set size of " + i11);
    }

    public TarArchiveOutputStream(OutputStream outputStream, int i10, String str) {
        this.longFileMode = 0;
        this.bigNumberMode = 0;
        this.closed = false;
        this.haveUnclosedEntry = false;
        this.finished = false;
        this.addPaxHeadersForNonAsciiNames = false;
        int i11 = BLOCK_SIZE_UNSPECIFIED == i10 ? 512 : i10;
        if (i11 > 0 && i11 % 512 == 0) {
            CountingOutputStream countingOutputStream = new CountingOutputStream(outputStream);
            this.countingOut = countingOutputStream;
            this.out = new FixedLengthBlockOutputStream(countingOutputStream, 512);
            this.encoding = str;
            this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
            this.recordBuf = new byte[512];
            this.recordsPerBlock = i11 / 512;
            return;
        }
        throw new IllegalArgumentException("Block size must be a multiple of 512 bytes. Attempt to use set size of " + i10);
    }
}

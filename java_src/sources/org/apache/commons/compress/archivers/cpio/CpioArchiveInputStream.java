package org.apache.commons.compress.archivers.cpio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes8.dex */
public class CpioArchiveInputStream extends ArchiveInputStream implements CpioConstants {
    private final int blockSize;
    private boolean closed;
    private long crc;
    final String encoding;
    private CpioArchiveEntry entry;
    private long entryBytesRead;
    private boolean entryEOF;
    private final byte[] fourBytesBuf;
    private final InputStream in;
    private final byte[] sixBytesBuf;
    private final byte[] tmpbuf;
    private final byte[] twoBytesBuf;
    private final ZipEncoding zipEncoding;

    public CpioArchiveInputStream(InputStream inputStream) {
        this(inputStream, 512, "US-ASCII");
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 < 6) {
            return false;
        }
        byte b7 = bArr[0];
        if (b7 == 113 && (bArr[1] & 255) == 199) {
            return true;
        }
        byte b10 = bArr[1];
        if (b10 == 113 && (b7 & 255) == 199) {
            return true;
        }
        if (b7 != 48 || b10 != 55 || bArr[2] != 48 || bArr[3] != 55 || bArr[4] != 48) {
            return false;
        }
        byte b11 = bArr[5];
        return b11 == 49 || b11 == 50 || b11 == 55;
    }

    private void skip(int i10) throws IOException {
        if (i10 > 0) {
            readFully(this.fourBytesBuf, 0, i10);
        }
    }

    public CpioArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, 512, str);
    }

    private void ensureOpen() throws IOException {
        if (this.closed) {
            throw new IOException("Stream closed");
        }
    }

    private long readAsciiLong(int i10, int i11) throws IOException {
        byte[] bArr = new byte[i10];
        readFully(bArr, 0, i10);
        return Long.parseLong(ArchiveUtils.toAsciiString(bArr), i11);
    }

    private long readBinaryLong(int i10, boolean z6) throws IOException {
        byte[] bArr = new byte[i10];
        readFully(bArr, 0, i10);
        return CpioUtil.byteArray2long(bArr, z6);
    }

    private String readCString(int i10) throws IOException {
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        readFully(bArr, 0, i11);
        this.in.read();
        return this.zipEncoding.decode(bArr);
    }

    private final int readFully(byte[] bArr, int i10, int i11) throws IOException {
        int fully = IOUtils.readFully(this.in, bArr, i10, i11);
        count(fully);
        if (fully >= i11) {
            return fully;
        }
        throw new EOFException();
    }

    private CpioArchiveEntry readNewEntry(boolean z6) throws IOException {
        CpioArchiveEntry cpioArchiveEntry = z6 ? new CpioArchiveEntry((short) 2) : new CpioArchiveEntry((short) 1);
        cpioArchiveEntry.setInode(readAsciiLong(8, 16));
        long asciiLong = readAsciiLong(8, 16);
        if (CpioUtil.fileType(asciiLong) != 0) {
            cpioArchiveEntry.setMode(asciiLong);
        }
        cpioArchiveEntry.setUID(readAsciiLong(8, 16));
        cpioArchiveEntry.setGID(readAsciiLong(8, 16));
        cpioArchiveEntry.setNumberOfLinks(readAsciiLong(8, 16));
        cpioArchiveEntry.setTime(readAsciiLong(8, 16));
        cpioArchiveEntry.setSize(readAsciiLong(8, 16));
        cpioArchiveEntry.setDeviceMaj(readAsciiLong(8, 16));
        cpioArchiveEntry.setDeviceMin(readAsciiLong(8, 16));
        cpioArchiveEntry.setRemoteDeviceMaj(readAsciiLong(8, 16));
        cpioArchiveEntry.setRemoteDeviceMin(readAsciiLong(8, 16));
        long asciiLong2 = readAsciiLong(8, 16);
        cpioArchiveEntry.setChksum(readAsciiLong(8, 16));
        String cString = readCString((int) asciiLong2);
        cpioArchiveEntry.setName(cString);
        if (CpioUtil.fileType(asciiLong) != 0 || cString.equals(CpioConstants.CPIO_TRAILER)) {
            skip(cpioArchiveEntry.getHeaderPadCount());
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry name: " + ArchiveUtils.sanitize(cString) + " Occured at byte: " + getBytesRead());
    }

    private CpioArchiveEntry readOldAsciiEntry() throws IOException {
        CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry((short) 4);
        cpioArchiveEntry.setDevice(readAsciiLong(6, 8));
        cpioArchiveEntry.setInode(readAsciiLong(6, 8));
        long asciiLong = readAsciiLong(6, 8);
        if (CpioUtil.fileType(asciiLong) != 0) {
            cpioArchiveEntry.setMode(asciiLong);
        }
        cpioArchiveEntry.setUID(readAsciiLong(6, 8));
        cpioArchiveEntry.setGID(readAsciiLong(6, 8));
        cpioArchiveEntry.setNumberOfLinks(readAsciiLong(6, 8));
        cpioArchiveEntry.setRemoteDevice(readAsciiLong(6, 8));
        cpioArchiveEntry.setTime(readAsciiLong(11, 8));
        long asciiLong2 = readAsciiLong(6, 8);
        cpioArchiveEntry.setSize(readAsciiLong(11, 8));
        String cString = readCString((int) asciiLong2);
        cpioArchiveEntry.setName(cString);
        if (CpioUtil.fileType(asciiLong) != 0 || cString.equals(CpioConstants.CPIO_TRAILER)) {
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + ArchiveUtils.sanitize(cString) + " Occured at byte: " + getBytesRead());
    }

    private CpioArchiveEntry readOldBinaryEntry(boolean z6) throws IOException {
        CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry((short) 8);
        cpioArchiveEntry.setDevice(readBinaryLong(2, z6));
        cpioArchiveEntry.setInode(readBinaryLong(2, z6));
        long binaryLong = readBinaryLong(2, z6);
        if (CpioUtil.fileType(binaryLong) != 0) {
            cpioArchiveEntry.setMode(binaryLong);
        }
        cpioArchiveEntry.setUID(readBinaryLong(2, z6));
        cpioArchiveEntry.setGID(readBinaryLong(2, z6));
        cpioArchiveEntry.setNumberOfLinks(readBinaryLong(2, z6));
        cpioArchiveEntry.setRemoteDevice(readBinaryLong(2, z6));
        cpioArchiveEntry.setTime(readBinaryLong(4, z6));
        long binaryLong2 = readBinaryLong(2, z6);
        cpioArchiveEntry.setSize(readBinaryLong(4, z6));
        String cString = readCString((int) binaryLong2);
        cpioArchiveEntry.setName(cString);
        if (CpioUtil.fileType(binaryLong) != 0 || cString.equals(CpioConstants.CPIO_TRAILER)) {
            skip(cpioArchiveEntry.getHeaderPadCount());
            return cpioArchiveEntry;
        }
        throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + ArchiveUtils.sanitize(cString) + "Occured at byte: " + getBytesRead());
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.in.close();
        this.closed = true;
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        if (j6 < 0) {
            throw new IllegalArgumentException("negative skip length");
        }
        ensureOpen();
        int iMin = (int) Math.min(j6, 2147483647L);
        int i10 = 0;
        while (i10 < iMin) {
            int length = iMin - i10;
            byte[] bArr = this.tmpbuf;
            if (length > bArr.length) {
                length = bArr.length;
            }
            int i11 = read(bArr, 0, length);
            if (i11 == -1) {
                this.entryEOF = true;
                break;
            }
            i10 += i11;
        }
        return i10;
    }

    public CpioArchiveInputStream(InputStream inputStream, int i10) {
        this(inputStream, i10, "US-ASCII");
    }

    private void closeEntry() throws IOException {
        while (skip(2147483647L) == 2147483647L) {
        }
    }

    private void skipRemainderOfLastBlock() throws IOException {
        long j6;
        long bytesRead = getBytesRead();
        int i10 = this.blockSize;
        long j10 = bytesRead % ((long) i10);
        if (j10 == 0) {
            j6 = 0;
        } else {
            j6 = ((long) i10) - j10;
        }
        while (j6 > 0) {
            long jSkip = skip(((long) this.blockSize) - j10);
            if (jSkip > 0) {
                j6 -= jSkip;
            } else {
                return;
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        ensureOpen();
        if (this.entryEOF) {
            return 0;
        }
        return 1;
    }

    public CpioArchiveEntry getNextCPIOEntry() throws IOException {
        ensureOpen();
        if (this.entry != null) {
            closeEntry();
        }
        byte[] bArr = this.twoBytesBuf;
        readFully(bArr, 0, bArr.length);
        if (CpioUtil.byteArray2long(this.twoBytesBuf, false) == 29127) {
            this.entry = readOldBinaryEntry(false);
        } else if (CpioUtil.byteArray2long(this.twoBytesBuf, true) == 29127) {
            this.entry = readOldBinaryEntry(true);
        } else {
            byte[] bArr2 = this.twoBytesBuf;
            System.arraycopy(bArr2, 0, this.sixBytesBuf, 0, bArr2.length);
            readFully(this.sixBytesBuf, this.twoBytesBuf.length, this.fourBytesBuf.length);
            String asciiString = ArchiveUtils.toAsciiString(this.sixBytesBuf);
            asciiString.hashCode();
            switch (asciiString) {
                case "070701":
                    this.entry = readNewEntry(false);
                    break;
                case "070702":
                    this.entry = readNewEntry(true);
                    break;
                case "070707":
                    this.entry = readOldAsciiEntry();
                    break;
                default:
                    throw new IOException("Unknown magic [" + asciiString + "]. Occured at byte: " + getBytesRead());
            }
        }
        this.entryBytesRead = 0L;
        this.entryEOF = false;
        this.crc = 0L;
        if (this.entry.getName().equals(CpioConstants.CPIO_TRAILER)) {
            this.entryEOF = true;
            skipRemainderOfLastBlock();
            return null;
        }
        return this.entry;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextCPIOEntry();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        ensureOpen();
        if (i10 >= 0 && i11 >= 0 && i10 <= bArr.length - i11) {
            if (i11 == 0) {
                return 0;
            }
            CpioArchiveEntry cpioArchiveEntry = this.entry;
            if (cpioArchiveEntry == null || this.entryEOF) {
                return -1;
            }
            if (this.entryBytesRead == cpioArchiveEntry.getSize()) {
                skip(this.entry.getDataPadCount());
                this.entryEOF = true;
                if (this.entry.getFormat() != 2 || this.crc == this.entry.getChksum()) {
                    return -1;
                }
                throw new IOException("CRC Error. Occured at byte: " + getBytesRead());
            }
            int iMin = (int) Math.min(i11, this.entry.getSize() - this.entryBytesRead);
            if (iMin < 0) {
                return -1;
            }
            int fully = readFully(bArr, i10, iMin);
            if (this.entry.getFormat() == 2) {
                for (int i12 = 0; i12 < fully; i12++) {
                    this.crc = (this.crc + ((long) (bArr[i12] & 255))) & 4294967295L;
                }
            }
            this.entryBytesRead += (long) fully;
            return fully;
        }
        throw new IndexOutOfBoundsException();
    }

    public CpioArchiveInputStream(InputStream inputStream, int i10, String str) {
        this.closed = false;
        this.entryBytesRead = 0L;
        this.entryEOF = false;
        this.tmpbuf = new byte[4096];
        this.crc = 0L;
        this.twoBytesBuf = new byte[2];
        this.fourBytesBuf = new byte[4];
        this.sixBytesBuf = new byte[6];
        this.in = inputStream;
        this.blockSize = i10;
        this.encoding = str;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
    }
}

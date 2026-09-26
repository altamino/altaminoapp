package org.apache.commons.compress.archivers.cpio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.HashMap;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CpioArchiveOutputStream extends ArchiveOutputStream implements CpioConstants {
    private final int blockSize;
    private boolean closed;
    private long crc;
    final String encoding;
    private CpioArchiveEntry entry;
    private final short entryFormat;
    private boolean finished;
    private final HashMap<String, CpioArchiveEntry> names;
    private long nextArtificalDeviceAndInode;
    private final OutputStream out;
    private long written;
    private final ZipEncoding zipEncoding;

    public CpioArchiveOutputStream(OutputStream outputStream, short s) {
        this(outputStream, s, 512, "US-ASCII");
    }

    public CpioArchiveOutputStream(OutputStream outputStream, short s, int i10) {
        this(outputStream, s, i10, "US-ASCII");
    }

    private void ensureOpen() throws IOException {
        if (this.closed) {
            throw new IOException("Stream closed");
        }
    }

    private void pad(int i10) throws IOException {
        if (i10 > 0) {
            this.out.write(new byte[i10]);
            count(i10);
        }
    }

    private void writeAsciiLong(long j6, int i10, int i11) throws IOException {
        String strSubstring;
        StringBuilder sb = new StringBuilder();
        if (i11 == 16) {
            sb.append(Long.toHexString(j6));
        } else if (i11 == 8) {
            sb.append(Long.toOctalString(j6));
        } else {
            sb.append(Long.toString(j6));
        }
        if (sb.length() <= i10) {
            int length = i10 - sb.length();
            for (int i12 = 0; i12 < length; i12++) {
                sb.insert(0, "0");
            }
            strSubstring = sb.toString();
        } else {
            strSubstring = sb.substring(sb.length() - i10);
        }
        byte[] asciiBytes = ArchiveUtils.toAsciiBytes(strSubstring);
        this.out.write(asciiBytes);
        count(asciiBytes.length);
    }

    private void writeCString(String str) throws IOException {
        ByteBuffer byteBufferEncode = this.zipEncoding.encode(str);
        int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
        this.out.write(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), iLimit);
        this.out.write(0);
        count(iLimit + 1);
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
        ensureOpen();
        CpioArchiveEntry cpioArchiveEntry = this.entry;
        if (cpioArchiveEntry == null) {
            throw new IOException("Trying to close non-existent entry");
        }
        if (cpioArchiveEntry.getSize() != this.written) {
            throw new IOException("invalid entry size (expected " + this.entry.getSize() + " but got " + this.written + " bytes)");
        }
        pad(this.entry.getDataPadCount());
        if (this.entry.getFormat() == 2 && this.crc != this.entry.getChksum()) {
            throw new IOException("CRC Error");
        }
        this.entry = null;
        this.crc = 0L;
        this.written = 0L;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public ArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        return new CpioArchiveEntry(file, str);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        if (this.finished) {
            throw new IOException("Stream has already been finished");
        }
        CpioArchiveEntry cpioArchiveEntry = (CpioArchiveEntry) archiveEntry;
        ensureOpen();
        if (this.entry != null) {
            closeArchiveEntry();
        }
        if (cpioArchiveEntry.getTime() == -1) {
            cpioArchiveEntry.setTime(System.currentTimeMillis() / 1000);
        }
        short format = cpioArchiveEntry.getFormat();
        if (format != this.entryFormat) {
            throw new IOException("Header format: " + ((int) format) + " does not match existing format: " + ((int) this.entryFormat));
        }
        if (this.names.put(cpioArchiveEntry.getName(), cpioArchiveEntry) == null) {
            writeHeader(cpioArchiveEntry);
            this.entry = cpioArchiveEntry;
            this.written = 0L;
        } else {
            throw new IOException("duplicate entry: " + cpioArchiveEntry.getName());
        }
    }

    public CpioArchiveOutputStream(OutputStream outputStream, short s, int i10, String str) {
        this.closed = false;
        this.names = new HashMap<>();
        this.crc = 0L;
        this.nextArtificalDeviceAndInode = 1L;
        this.out = outputStream;
        if (s != 1 && s != 2 && s != 4 && s != 8) {
            throw new IllegalArgumentException("Unknown format: " + ((int) s));
        }
        this.entryFormat = s;
        this.blockSize = i10;
        this.encoding = str;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
    }

    private void writeBinaryLong(long j6, int i10, boolean z6) throws IOException {
        byte[] bArrLong2byteArray = CpioUtil.long2byteArray(j6, i10, z6);
        this.out.write(bArrLong2byteArray);
        count(bArrLong2byteArray.length);
    }

    private void writeHeader(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        short format = cpioArchiveEntry.getFormat();
        if (format != 1) {
            if (format != 2) {
                if (format != 4) {
                    if (format == 8) {
                        writeBinaryLong(29127L, 2, true);
                        writeOldBinaryEntry(cpioArchiveEntry, true);
                        return;
                    } else {
                        throw new IOException("unknown format " + ((int) cpioArchiveEntry.getFormat()));
                    }
                }
                this.out.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_OLD_ASCII));
                count(6);
                writeOldAsciiEntry(cpioArchiveEntry);
                return;
            }
            this.out.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_NEW_CRC));
            count(6);
            writeNewEntry(cpioArchiveEntry);
            return;
        }
        this.out.write(ArchiveUtils.toAsciiBytes(CpioConstants.MAGIC_NEW));
        count(6);
        writeNewEntry(cpioArchiveEntry);
    }

    private void writeNewEntry(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long deviceMin = cpioArchiveEntry.getDeviceMin();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            deviceMin = 0;
        } else if (inode == 0 && deviceMin == 0) {
            inode = this.nextArtificalDeviceAndInode;
            this.nextArtificalDeviceAndInode = inode + 1;
            deviceMin = inode >> 32;
        } else {
            this.nextArtificalDeviceAndInode = Math.max(this.nextArtificalDeviceAndInode, (4294967296L * deviceMin) + inode) + 1;
        }
        writeAsciiLong(inode, 8, 16);
        writeAsciiLong(cpioArchiveEntry.getMode(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getUID(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getGID(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getNumberOfLinks(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getTime(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getSize(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getDeviceMaj(), 8, 16);
        writeAsciiLong(deviceMin, 8, 16);
        writeAsciiLong(cpioArchiveEntry.getRemoteDeviceMaj(), 8, 16);
        writeAsciiLong(cpioArchiveEntry.getRemoteDeviceMin(), 8, 16);
        writeAsciiLong(((long) cpioArchiveEntry.getName().length()) + 1, 8, 16);
        writeAsciiLong(cpioArchiveEntry.getChksum(), 8, 16);
        writeCString(cpioArchiveEntry.getName());
        pad(cpioArchiveEntry.getHeaderPadCount());
    }

    private void writeOldAsciiEntry(CpioArchiveEntry cpioArchiveEntry) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long device = cpioArchiveEntry.getDevice();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            device = 0;
        } else if (inode == 0 && device == 0) {
            long j6 = this.nextArtificalDeviceAndInode;
            this.nextArtificalDeviceAndInode = j6 + 1;
            device = 262143 & (j6 >> 18);
            inode = j6 & 262143;
        } else {
            this.nextArtificalDeviceAndInode = Math.max(this.nextArtificalDeviceAndInode, (PlaybackStateCompat.ACTION_SET_REPEAT_MODE * device) + inode) + 1;
        }
        writeAsciiLong(device, 6, 8);
        writeAsciiLong(inode, 6, 8);
        writeAsciiLong(cpioArchiveEntry.getMode(), 6, 8);
        writeAsciiLong(cpioArchiveEntry.getUID(), 6, 8);
        writeAsciiLong(cpioArchiveEntry.getGID(), 6, 8);
        writeAsciiLong(cpioArchiveEntry.getNumberOfLinks(), 6, 8);
        writeAsciiLong(cpioArchiveEntry.getRemoteDevice(), 6, 8);
        writeAsciiLong(cpioArchiveEntry.getTime(), 11, 8);
        writeAsciiLong(((long) cpioArchiveEntry.getName().length()) + 1, 6, 8);
        writeAsciiLong(cpioArchiveEntry.getSize(), 11, 8);
        writeCString(cpioArchiveEntry.getName());
    }

    private void writeOldBinaryEntry(CpioArchiveEntry cpioArchiveEntry, boolean z6) throws IOException {
        long inode = cpioArchiveEntry.getInode();
        long device = cpioArchiveEntry.getDevice();
        if (CpioConstants.CPIO_TRAILER.equals(cpioArchiveEntry.getName())) {
            inode = 0;
            device = 0;
        } else if (inode == 0 && device == 0) {
            long j6 = this.nextArtificalDeviceAndInode;
            long j10 = j6 & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            this.nextArtificalDeviceAndInode = j6 + 1;
            device = WebSocketProtocol.PAYLOAD_SHORT_MAX & (j6 >> 16);
            inode = j10;
        } else {
            this.nextArtificalDeviceAndInode = Math.max(this.nextArtificalDeviceAndInode, (PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH * device) + inode) + 1;
        }
        writeBinaryLong(device, 2, z6);
        writeBinaryLong(inode, 2, z6);
        writeBinaryLong(cpioArchiveEntry.getMode(), 2, z6);
        writeBinaryLong(cpioArchiveEntry.getUID(), 2, z6);
        writeBinaryLong(cpioArchiveEntry.getGID(), 2, z6);
        writeBinaryLong(cpioArchiveEntry.getNumberOfLinks(), 2, z6);
        writeBinaryLong(cpioArchiveEntry.getRemoteDevice(), 2, z6);
        writeBinaryLong(cpioArchiveEntry.getTime(), 4, z6);
        writeBinaryLong(((long) cpioArchiveEntry.getName().length()) + 1, 2, z6);
        writeBinaryLong(cpioArchiveEntry.getSize(), 4, z6);
        writeCString(cpioArchiveEntry.getName());
        pad(cpioArchiveEntry.getHeaderPadCount());
    }

    @Override // org.apache.commons.compress.archivers.ArchiveOutputStream
    public void finish() throws IOException {
        ensureOpen();
        if (!this.finished) {
            if (this.entry == null) {
                CpioArchiveEntry cpioArchiveEntry = new CpioArchiveEntry(this.entryFormat);
                this.entry = cpioArchiveEntry;
                cpioArchiveEntry.setName(CpioConstants.CPIO_TRAILER);
                this.entry.setNumberOfLinks(1L);
                writeHeader(this.entry);
                closeArchiveEntry();
                long bytesWritten = getBytesWritten();
                int i10 = this.blockSize;
                int i11 = (int) (bytesWritten % ((long) i10));
                if (i11 != 0) {
                    pad(i10 - i11);
                }
                this.finished = true;
                return;
            }
            throw new IOException("This archive contains unclosed entries.");
        }
        throw new IOException("This archive has already been finished");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        ensureOpen();
        if (i10 >= 0 && i11 >= 0 && i10 <= bArr.length - i11) {
            if (i11 == 0) {
                return;
            }
            CpioArchiveEntry cpioArchiveEntry = this.entry;
            if (cpioArchiveEntry != null) {
                long j6 = i11;
                if (this.written + j6 <= cpioArchiveEntry.getSize()) {
                    this.out.write(bArr, i10, i11);
                    this.written += j6;
                    if (this.entry.getFormat() == 2) {
                        for (int i12 = 0; i12 < i11; i12++) {
                            this.crc = (this.crc + ((long) (bArr[i12] & 255))) & 4294967295L;
                        }
                    }
                    count(i11);
                    return;
                }
                throw new IOException("attempt to write past end of STORED entry");
            }
            throw new IOException("no current CPIO entry");
        }
        throw new IndexOutOfBoundsException();
    }

    public CpioArchiveOutputStream(OutputStream outputStream) {
        this(outputStream, (short) 1);
    }

    public CpioArchiveOutputStream(OutputStream outputStream, String str) {
        this(outputStream, (short) 1, 512, str);
    }
}

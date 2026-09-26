package org.apache.commons.compress.archivers.tar;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes9.dex */
public class TarArchiveInputStream extends ArchiveInputStream {
    private static final int SMALL_BUFFER_SIZE = 256;
    private final int blockSize;
    private TarArchiveEntry currEntry;
    final String encoding;
    private long entryOffset;
    private long entrySize;
    private Map<String, String> globalPaxHeaders;
    private boolean hasHitEOF;
    private final InputStream is;
    private final int recordSize;
    private final byte[] smallBuf;
    private final ZipEncoding zipEncoding;

    public TarArchiveInputStream(InputStream inputStream) {
        this(inputStream, 10240, 512);
    }

    public TarArchiveEntry getCurrentEntry() {
        return this.currEntry;
    }

    public int getRecordSize() {
        return this.recordSize;
    }

    protected final boolean isAtEOF() {
        return this.hasHitEOF;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    protected final void setAtEOF(boolean z6) {
        this.hasHitEOF = z6;
    }

    protected final void setCurrentEntry(TarArchiveEntry tarArchiveEntry) {
        this.currEntry = tarArchiveEntry;
    }

    public TarArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, 10240, 512, str);
    }

    private void applyPaxHeadersToCurrentEntry(Map<String, String> map) {
        this.currEntry.updateEntryFromPaxHeaders(map);
    }

    private boolean isDirectory() {
        TarArchiveEntry tarArchiveEntry = this.currEntry;
        return tarArchiveEntry != null && tarArchiveEntry.isDirectory();
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 < 265) {
            return false;
        }
        if (ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_POSIX, bArr, TarConstants.VERSION_OFFSET, 2)) {
            return true;
        }
        if (ArchiveUtils.matchAsciiBuffer(TarConstants.MAGIC_GNU, bArr, 257, 6) && (ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_SPACE, bArr, TarConstants.VERSION_OFFSET, 2) || ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_GNU_ZERO, bArr, TarConstants.VERSION_OFFSET, 2))) {
            return true;
        }
        return ArchiveUtils.matchAsciiBuffer("ustar\u0000", bArr, 257, 6) && ArchiveUtils.matchAsciiBuffer(TarConstants.VERSION_ANT, bArr, TarConstants.VERSION_OFFSET, 2);
    }

    private void readOldGNUSparse() throws IOException {
        byte[] record;
        if (this.currEntry.isExtended()) {
            do {
                record = getRecord();
                if (record == null) {
                    this.currEntry = null;
                    return;
                }
            } while (new TarArchiveSparseEntry(record).isExtended());
        }
    }

    private void tryToConsumeSecondEOFRecord() throws IOException {
        boolean zMarkSupported = this.is.markSupported();
        if (zMarkSupported) {
            this.is.mark(this.recordSize);
        }
        try {
            if ((!isEOFRecord(readRecord())) && zMarkSupported) {
                pushedBackBytes(this.recordSize);
                this.is.reset();
            }
        } catch (Throwable th) {
            if (zMarkSupported) {
                pushedBackBytes(this.recordSize);
                this.is.reset();
            }
            throw th;
        }
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        if (archiveEntry instanceof TarArchiveEntry) {
            return !((TarArchiveEntry) archiveEntry).isSparse();
        }
        return false;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.is.close();
    }

    protected byte[] getLongNameData() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = read(this.smallBuf);
            if (i10 < 0) {
                break;
            }
            byteArrayOutputStream.write(this.smallBuf, 0, i10);
        }
        getNextEntry();
        if (this.currEntry == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        if (length == byteArray.length) {
            return byteArray;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 0, bArr, 0, length);
        return bArr;
    }

    protected boolean isEOFRecord(byte[] bArr) {
        return bArr == null || ArchiveUtils.isArrayZero(bArr, this.recordSize);
    }

    Map<String, String> parsePaxHeaders(InputStream inputStream) throws IOException {
        int i10;
        int i11;
        HashMap map = new HashMap(this.globalPaxHeaders);
        do {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                i10 = inputStream.read();
                if (i10 == -1) {
                    break;
                }
                i12++;
                if (i10 == 10) {
                    break;
                }
                if (i10 == 32) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        i11 = inputStream.read();
                        if (i11 == -1) {
                            break;
                        }
                        i12++;
                        if (i11 == 61) {
                            String string = byteArrayOutputStream.toString("UTF-8");
                            int i14 = i13 - i12;
                            if (i14 == 1) {
                                map.remove(string);
                                break;
                            }
                            byte[] bArr = new byte[i14];
                            int fully = IOUtils.readFully(inputStream, bArr);
                            if (fully == i14) {
                                map.put(string, new String(bArr, 0, i14 - 1, "UTF-8"));
                                break;
                            }
                            throw new IOException("Failed to read Paxheader. Expected " + i14 + " bytes, read " + fully);
                        }
                        byteArrayOutputStream.write((byte) i11);
                    }
                    i10 = i11;
                    break;
                }
                i13 = (i13 * 10) + (i10 - 48);
            }
        } while (i10 != -1);
        return map;
    }

    protected byte[] readRecord() throws IOException {
        byte[] bArr = new byte[this.recordSize];
        int fully = IOUtils.readFully(this.is, bArr);
        count(fully);
        if (fully != this.recordSize) {
            return null;
        }
        return bArr;
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        if (j6 <= 0 || isDirectory()) {
            return 0L;
        }
        long jSkip = this.is.skip(Math.min(j6, this.entrySize - this.entryOffset));
        count(jSkip);
        this.entryOffset += jSkip;
        return jSkip;
    }

    public TarArchiveInputStream(InputStream inputStream, int i10) {
        this(inputStream, i10, 512);
    }

    private void consumeRemainderOfLastBlock() throws IOException {
        long bytesRead = getBytesRead();
        int i10 = this.blockSize;
        long j6 = bytesRead % ((long) i10);
        if (j6 > 0) {
            count(IOUtils.skip(this.is, ((long) i10) - j6));
        }
    }

    private byte[] getRecord() throws IOException {
        byte[] record = readRecord();
        setAtEOF(isEOFRecord(record));
        if (isAtEOF() && record != null) {
            tryToConsumeSecondEOFRecord();
            consumeRemainderOfLastBlock();
            return null;
        }
        return record;
    }

    private void paxHeaders() throws IOException {
        Map<String, String> paxHeaders = parsePaxHeaders(this);
        getNextEntry();
        applyPaxHeadersToCurrentEntry(paxHeaders);
    }

    private void readGlobalPaxHeaders() throws IOException {
        this.globalPaxHeaders = parsePaxHeaders(this);
        getNextEntry();
    }

    private void skipRecordPadding() throws IOException {
        if (!isDirectory()) {
            long j6 = this.entrySize;
            if (j6 > 0) {
                int i10 = this.recordSize;
                if (j6 % ((long) i10) != 0) {
                    count(IOUtils.skip(this.is, (((j6 / ((long) i10)) + 1) * ((long) i10)) - j6));
                }
            }
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (isDirectory()) {
            return 0;
        }
        long j6 = this.entrySize;
        long j10 = this.entryOffset;
        if (j6 - j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j6 - j10);
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextTarEntry();
    }

    public TarArchiveEntry getNextTarEntry() throws IOException {
        if (isAtEOF()) {
            return null;
        }
        if (this.currEntry != null) {
            IOUtils.skip(this, Long.MAX_VALUE);
            skipRecordPadding();
        }
        byte[] record = getRecord();
        if (record == null) {
            this.currEntry = null;
            return null;
        }
        try {
            TarArchiveEntry tarArchiveEntry = new TarArchiveEntry(record, this.zipEncoding);
            this.currEntry = tarArchiveEntry;
            this.entryOffset = 0L;
            this.entrySize = tarArchiveEntry.getSize();
            if (this.currEntry.isGNULongLinkEntry()) {
                byte[] longNameData = getLongNameData();
                if (longNameData == null) {
                    return null;
                }
                this.currEntry.setLinkName(this.zipEncoding.decode(longNameData));
            }
            if (this.currEntry.isGNULongNameEntry()) {
                byte[] longNameData2 = getLongNameData();
                if (longNameData2 == null) {
                    return null;
                }
                this.currEntry.setName(this.zipEncoding.decode(longNameData2));
            }
            if (this.currEntry.isGlobalPaxHeader()) {
                readGlobalPaxHeaders();
            }
            if (this.currEntry.isPaxHeader()) {
                paxHeaders();
            } else if (!this.globalPaxHeaders.isEmpty()) {
                applyPaxHeadersToCurrentEntry(this.globalPaxHeaders);
            }
            if (this.currEntry.isOldGNUSparse()) {
                readOldGNUSparse();
            }
            this.entrySize = this.currEntry.getSize();
            return this.currEntry;
        } catch (IllegalArgumentException e) {
            throw new IOException("Error detected parsing the header", e);
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (isAtEOF() || isDirectory() || this.entryOffset >= this.entrySize) {
            return -1;
        }
        if (this.currEntry != null) {
            int iMin = Math.min(i11, available());
            int i12 = this.is.read(bArr, i10, iMin);
            if (i12 == -1) {
                if (iMin <= 0) {
                    setAtEOF(true);
                } else {
                    throw new IOException("Truncated TAR archive");
                }
            } else {
                count(i12);
                this.entryOffset += (long) i12;
            }
            return i12;
        }
        throw new IllegalStateException("No current tar entry");
    }

    public TarArchiveInputStream(InputStream inputStream, int i10, String str) {
        this(inputStream, i10, 512, str);
    }

    public TarArchiveInputStream(InputStream inputStream, int i10, int i11) {
        this(inputStream, i10, i11, null);
    }

    public TarArchiveInputStream(InputStream inputStream, int i10, int i11, String str) {
        this.smallBuf = new byte[256];
        this.globalPaxHeaders = new HashMap();
        this.is = inputStream;
        this.hasHitEOF = false;
        this.encoding = str;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.recordSize = i11;
        this.blockSize = i10;
    }
}

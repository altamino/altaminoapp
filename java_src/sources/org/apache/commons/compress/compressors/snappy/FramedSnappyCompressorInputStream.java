package org.apache.commons.compress.compressors.snappy;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes6.dex */
public class FramedSnappyCompressorInputStream extends CompressorInputStream {
    static final int COMPRESSED_CHUNK_TYPE = 0;
    static final long MASK_OFFSET = 2726488792L;
    private static final int MAX_SKIPPABLE_TYPE = 253;
    private static final int MAX_UNSKIPPABLE_TYPE = 127;
    private static final int MIN_UNSKIPPABLE_TYPE = 2;
    private static final int PADDING_CHUNK_TYPE = 254;
    private static final int STREAM_IDENTIFIER_TYPE = 255;
    static final byte[] SZ_SIGNATURE = {-1, 6, 0, 0, 115, 78, 97, 80, 112, 89};
    private static final int UNCOMPRESSED_CHUNK_TYPE = 1;
    private final int blockSize;
    private final PureJavaCrc32C checksum;
    private SnappyCompressorInputStream currentCompressedChunk;
    private final FramedSnappyDialect dialect;
    private boolean endReached;
    private long expectedChecksum;
    private final PushbackInputStream in;
    private boolean inUncompressedChunk;
    private final byte[] oneByte;
    private final ByteUtils.ByteSupplier supplier;
    private int uncompressedBytesRemaining;

    public FramedSnappyCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, FramedSnappyDialect.STANDARD);
    }

    private long readCrc() throws IOException {
        byte[] bArr = new byte[4];
        int fully = IOUtils.readFully(this.in, bArr);
        count(fully);
        if (fully == 4) {
            return ByteUtils.fromLittleEndian(bArr);
        }
        throw new IOException("premature end of stream");
    }

    static long unmask(long j6) {
        long j10 = (j6 - MASK_OFFSET) & 4294967295L;
        return ((j10 << 15) | (j10 >> 17)) & 4294967295L;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.oneByte, 0, 1) == -1) {
            return -1;
        }
        return this.oneByte[0] & 255;
    }

    public FramedSnappyCompressorInputStream(InputStream inputStream, FramedSnappyDialect framedSnappyDialect) throws IOException {
        this(inputStream, 32768, framedSnappyDialect);
    }

    public static boolean matches(byte[] bArr, int i10) {
        byte[] bArr2 = SZ_SIGNATURE;
        if (i10 < bArr2.length) {
            return false;
        }
        if (bArr.length > bArr2.length) {
            byte[] bArr3 = new byte[bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr2.length);
            bArr = bArr3;
        }
        return Arrays.equals(bArr, bArr2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0046  */
    private int readOnce(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13 = -1;
        if (!this.inUncompressedChunk) {
            SnappyCompressorInputStream snappyCompressorInputStream = this.currentCompressedChunk;
            if (snappyCompressorInputStream != null) {
                long bytesRead = snappyCompressorInputStream.getBytesRead();
                i12 = this.currentCompressedChunk.read(bArr, i10, i11);
                if (i12 == -1) {
                    this.currentCompressedChunk.close();
                    this.currentCompressedChunk = null;
                } else {
                    count(this.currentCompressedChunk.getBytesRead() - bytesRead);
                }
            }
            if (i13 > 0) {
                this.checksum.update(bArr, i10, i13);
            }
            return i13;
        }
        int iMin = Math.min(this.uncompressedBytesRemaining, i11);
        if (iMin == 0) {
            return -1;
        }
        i12 = this.in.read(bArr, i10, iMin);
        if (i12 != -1) {
            this.uncompressedBytesRemaining -= i12;
            count(i12);
        }
        i13 = i12;
        if (i13 > 0) {
            this.checksum.update(bArr, i10, i13);
        }
        return i13;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int readOneByte() throws IOException {
        int i10 = this.in.read();
        if (i10 == -1) {
            return -1;
        }
        count(1);
        return i10 & 255;
    }

    private int readSize() throws IOException {
        return (int) ByteUtils.fromLittleEndian(this.supplier, 3);
    }

    private void readStreamIdentifier() throws IOException {
        byte[] bArr = new byte[10];
        int fully = IOUtils.readFully(this.in, bArr);
        count(fully);
        if (10 != fully || !matches(bArr, 10)) {
            throw new IOException("Not a framed Snappy stream");
        }
    }

    private void verifyLastChecksumAndReset() throws IOException {
        long j6 = this.expectedChecksum;
        if (j6 >= 0 && j6 != this.checksum.getValue()) {
            throw new IOException("Checksum verification failed");
        }
        this.expectedChecksum = -1L;
        this.checksum.reset();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.inUncompressedChunk) {
            return Math.min(this.uncompressedBytesRemaining, this.in.available());
        }
        SnappyCompressorInputStream snappyCompressorInputStream = this.currentCompressedChunk;
        if (snappyCompressorInputStream != null) {
            return snappyCompressorInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SnappyCompressorInputStream snappyCompressorInputStream = this.currentCompressedChunk;
        if (snappyCompressorInputStream != null) {
            snappyCompressorInputStream.close();
            this.currentCompressedChunk = null;
        }
        this.in.close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int once = readOnce(bArr, i10, i11);
        if (once != -1) {
            return once;
        }
        readNextBlock();
        if (this.endReached) {
            return -1;
        }
        return readOnce(bArr, i10, i11);
    }

    public FramedSnappyCompressorInputStream(InputStream inputStream, int i10, FramedSnappyDialect framedSnappyDialect) throws IOException {
        this.oneByte = new byte[1];
        this.expectedChecksum = -1L;
        this.checksum = new PureJavaCrc32C();
        this.supplier = new ByteUtils.ByteSupplier() { // from class: org.apache.commons.compress.compressors.snappy.FramedSnappyCompressorInputStream.1
            @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
            public int getAsByte() throws IOException {
                return FramedSnappyCompressorInputStream.this.readOneByte();
            }
        };
        this.in = new PushbackInputStream(inputStream, 1);
        this.blockSize = i10;
        this.dialect = framedSnappyDialect;
        if (framedSnappyDialect.hasStreamIdentifier()) {
            readStreamIdentifier();
        }
    }

    private void readNextBlock() throws IOException {
        long j6;
        verifyLastChecksumAndReset();
        this.inUncompressedChunk = false;
        int oneByte = readOneByte();
        if (oneByte == -1) {
            this.endReached = true;
            return;
        }
        if (oneByte == 255) {
            this.in.unread(oneByte);
            pushedBackBytes(1L);
            readStreamIdentifier();
            readNextBlock();
            return;
        }
        if (oneByte != 254 && (oneByte <= 127 || oneByte > 253)) {
            if (oneByte >= 2 && oneByte <= 127) {
                throw new IOException("unskippable chunk with type " + oneByte + " (hex " + Integer.toHexString(oneByte) + ") detected.");
            }
            if (oneByte == 1) {
                this.inUncompressedChunk = true;
                this.uncompressedBytesRemaining = readSize() - 4;
                this.expectedChecksum = unmask(readCrc());
                return;
            }
            if (oneByte == 0) {
                boolean zUsesChecksumWithCompressedChunks = this.dialect.usesChecksumWithCompressedChunks();
                long size = readSize();
                if (zUsesChecksumWithCompressedChunks) {
                    j6 = 4;
                } else {
                    j6 = 0;
                }
                long j10 = size - j6;
                if (zUsesChecksumWithCompressedChunks) {
                    this.expectedChecksum = unmask(readCrc());
                } else {
                    this.expectedChecksum = -1L;
                }
                SnappyCompressorInputStream snappyCompressorInputStream = new SnappyCompressorInputStream(new BoundedInputStream(this.in, j10), this.blockSize);
                this.currentCompressedChunk = snappyCompressorInputStream;
                count(snappyCompressorInputStream.getBytesRead());
                return;
            }
            throw new IOException("unknown chunk type " + oneByte + " detected.");
        }
        skipBlock();
        readNextBlock();
    }

    private void skipBlock() throws IOException {
        long size = readSize();
        long jSkip = IOUtils.skip(this.in, size);
        count(jSkip);
        if (jSkip == size) {
        } else {
            throw new IOException("premature end of stream");
        }
    }
}

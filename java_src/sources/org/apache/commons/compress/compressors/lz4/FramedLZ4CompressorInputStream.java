package org.apache.commons.compress.compressors.lz4;

import com.google.common.base.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.ByteUtils;
import org.apache.commons.compress.utils.ChecksumCalculatingInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes7.dex */
public class FramedLZ4CompressorInputStream extends CompressorInputStream {
    static final int BLOCK_CHECKSUM_MASK = 16;
    static final int BLOCK_INDEPENDENCE_MASK = 32;
    static final int BLOCK_MAX_SIZE_MASK = 112;
    static final int CONTENT_CHECKSUM_MASK = 4;
    static final int CONTENT_SIZE_MASK = 8;
    private static final byte SKIPPABLE_FRAME_PREFIX_BYTE_MASK = 80;
    static final int SUPPORTED_VERSION = 64;
    static final int UNCOMPRESSED_FLAG_MASK = Integer.MIN_VALUE;
    static final int VERSION_MASK = 192;
    private byte[] blockDependencyBuffer;
    private final XXHash32 blockHash;
    private final XXHash32 contentHash;
    private InputStream currentBlock;
    private final boolean decompressConcatenated;
    private boolean endReached;
    private boolean expectBlockChecksum;
    private boolean expectBlockDependency;
    private boolean expectContentChecksum;
    private boolean expectContentSize;
    private final InputStream in;
    private boolean inUncompressed;
    private final byte[] oneByte;
    private final ByteUtils.ByteSupplier supplier;
    static final byte[] LZ4_SIGNATURE = {4, 34, 77, c.CAN};
    private static final byte[] SKIPPABLE_FRAME_TRAILER = {42, 77, c.CAN};

    public FramedLZ4CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    private static boolean isSkippableFrameSignature(byte[] bArr) {
        if ((bArr[0] & SKIPPABLE_FRAME_PREFIX_BYTE_MASK) != 80) {
            return false;
        }
        for (int i10 = 1; i10 < 4; i10++) {
            if (bArr[i10] != SKIPPABLE_FRAME_TRAILER[i10 - 1]) {
                return false;
            }
        }
        return true;
    }

    private int skipSkippableFrame(byte[] bArr) throws IOException {
        int fully = 4;
        while (fully == 4 && isSkippableFrameSignature(bArr)) {
            long jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
            long jSkip = IOUtils.skip(this.in, jFromLittleEndian);
            count(jSkip);
            if (jFromLittleEndian != jSkip) {
                throw new IOException("Premature end of stream while skipping frame");
            }
            fully = IOUtils.readFully(this.in, bArr);
            count(fully);
        }
        return fully;
    }

    private void verifyChecksum(XXHash32 xXHash32, String str) throws IOException {
        byte[] bArr = new byte[4];
        int fully = IOUtils.readFully(this.in, bArr);
        count(fully);
        if (4 != fully) {
            throw new IOException("Premature end of stream while reading " + str + " checksum");
        }
        if (xXHash32.getValue() == ByteUtils.fromLittleEndian(bArr)) {
            return;
        }
        throw new IOException(str + " checksum mismatch.");
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.oneByte, 0, 1) == -1) {
            return -1;
        }
        return this.oneByte[0] & 255;
    }

    public FramedLZ4CompressorInputStream(InputStream inputStream, boolean z6) throws IOException {
        this.oneByte = new byte[1];
        this.supplier = new ByteUtils.ByteSupplier() { // from class: org.apache.commons.compress.compressors.lz4.FramedLZ4CompressorInputStream.1
            @Override // org.apache.commons.compress.utils.ByteUtils.ByteSupplier
            public int getAsByte() throws IOException {
                return FramedLZ4CompressorInputStream.this.readOneByte();
            }
        };
        this.contentHash = new XXHash32();
        this.blockHash = new XXHash32();
        this.in = inputStream;
        this.decompressConcatenated = z6;
        init(true);
    }

    private void appendToBlockDependencyBuffer(byte[] bArr, int i10, int i11) {
        int iMin = Math.min(i11, this.blockDependencyBuffer.length);
        if (iMin > 0) {
            byte[] bArr2 = this.blockDependencyBuffer;
            int length = bArr2.length - iMin;
            if (length > 0) {
                System.arraycopy(bArr2, iMin, bArr2, 0, length);
            }
            System.arraycopy(bArr, i10, this.blockDependencyBuffer, length, iMin);
        }
    }

    public static boolean matches(byte[] bArr, int i10) {
        byte[] bArr2 = LZ4_SIGNATURE;
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

    private void maybeFinishCurrentBlock() throws IOException {
        InputStream inputStream = this.currentBlock;
        if (inputStream != null) {
            inputStream.close();
            this.currentBlock = null;
            if (this.expectBlockChecksum) {
                verifyChecksum(this.blockHash, "block");
                this.blockHash.reset();
            }
        }
    }

    private int readOnce(byte[] bArr, int i10, int i11) throws IOException {
        if (this.inUncompressed) {
            int i12 = this.currentBlock.read(bArr, i10, i11);
            count(i12);
            return i12;
        }
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = (BlockLZ4CompressorInputStream) this.currentBlock;
        long bytesRead = blockLZ4CompressorInputStream.getBytesRead();
        int i13 = this.currentBlock.read(bArr, i10, i11);
        count(blockLZ4CompressorInputStream.getBytesRead() - bytesRead);
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

    private boolean readSignature(boolean z6) throws IOException {
        String str = z6 ? "Not a LZ4 frame stream" : "LZ4 frame stream followed by garbage";
        byte[] bArr = new byte[4];
        int fully = IOUtils.readFully(this.in, bArr);
        count(fully);
        if (fully == 0 && !z6) {
            this.endReached = true;
            return false;
        }
        if (4 != fully) {
            throw new IOException(str);
        }
        int iSkipSkippableFrame = skipSkippableFrame(bArr);
        if (iSkipSkippableFrame == 0 && !z6) {
            this.endReached = true;
            return false;
        }
        if (4 == iSkipSkippableFrame && matches(bArr, 4)) {
            return true;
        }
        throw new IOException(str);
    }

    private void verifyContentChecksum() throws IOException {
        if (this.expectContentChecksum) {
            verifyChecksum(this.contentHash, "content");
        }
        this.contentHash.reset();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.currentBlock;
        if (inputStream != null) {
            inputStream.close();
            this.currentBlock = null;
        }
        this.in.close();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.endReached) {
            return -1;
        }
        int once = readOnce(bArr, i10, i11);
        if (once == -1) {
            nextBlock();
            if (!this.endReached) {
                once = readOnce(bArr, i10, i11);
            }
        }
        if (once != -1) {
            if (this.expectBlockDependency) {
                appendToBlockDependencyBuffer(bArr, i10, once);
            }
            if (this.expectContentChecksum) {
                this.contentHash.update(bArr, i10, once);
            }
        }
        return once;
    }

    private void init(boolean z6) throws IOException {
        if (readSignature(z6)) {
            readFrameDescriptor();
            nextBlock();
        }
    }

    private void nextBlock() throws IOException {
        boolean z6;
        maybeFinishCurrentBlock();
        long jFromLittleEndian = ByteUtils.fromLittleEndian(this.supplier, 4);
        if (((-2147483648L) & jFromLittleEndian) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        int i10 = (int) (jFromLittleEndian & 2147483647L);
        if (i10 == 0) {
            verifyContentChecksum();
            if (!this.decompressConcatenated) {
                this.endReached = true;
                return;
            } else {
                init(false);
                return;
            }
        }
        InputStream boundedInputStream = new BoundedInputStream(this.in, i10);
        if (this.expectBlockChecksum) {
            boundedInputStream = new ChecksumCalculatingInputStream(this.blockHash, boundedInputStream);
        }
        if (z6) {
            this.inUncompressed = true;
            this.currentBlock = boundedInputStream;
            return;
        }
        this.inUncompressed = false;
        BlockLZ4CompressorInputStream blockLZ4CompressorInputStream = new BlockLZ4CompressorInputStream(boundedInputStream);
        if (this.expectBlockDependency) {
            blockLZ4CompressorInputStream.prefill(this.blockDependencyBuffer);
        }
        this.currentBlock = blockLZ4CompressorInputStream;
    }

    private void readFrameDescriptor() throws IOException {
        boolean z6;
        boolean z10;
        boolean z11;
        int oneByte = readOneByte();
        if (oneByte != -1) {
            this.contentHash.update(oneByte);
            if ((oneByte & 192) == 64) {
                boolean z12 = true;
                if ((oneByte & 32) == 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.expectBlockDependency = z6;
                if (z6) {
                    if (this.blockDependencyBuffer == null) {
                        this.blockDependencyBuffer = new byte[65536];
                    }
                } else {
                    this.blockDependencyBuffer = null;
                }
                if ((oneByte & 16) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.expectBlockChecksum = z10;
                if ((oneByte & 8) != 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.expectContentSize = z11;
                if ((oneByte & 4) == 0) {
                    z12 = false;
                }
                this.expectContentChecksum = z12;
                int oneByte2 = readOneByte();
                if (oneByte2 != -1) {
                    this.contentHash.update(oneByte2);
                    if (this.expectContentSize) {
                        byte[] bArr = new byte[8];
                        int fully = IOUtils.readFully(this.in, bArr);
                        count(fully);
                        if (8 == fully) {
                            this.contentHash.update(bArr, 0, 8);
                        } else {
                            throw new IOException("Premature end of stream while reading content size");
                        }
                    }
                    int oneByte3 = readOneByte();
                    if (oneByte3 != -1) {
                        int value = (int) ((this.contentHash.getValue() >> 8) & 255);
                        this.contentHash.reset();
                        if (oneByte3 == value) {
                            return;
                        } else {
                            throw new IOException("frame header checksum mismatch.");
                        }
                    }
                    throw new IOException("Premature end of stream while reading frame header checksum");
                }
                throw new IOException("Premature end of stream while reading frame BD byte");
            }
            throw new IOException("Unsupported version " + (oneByte >> 6));
        }
        throw new IOException("Premature end of stream while reading frame flags");
    }
}

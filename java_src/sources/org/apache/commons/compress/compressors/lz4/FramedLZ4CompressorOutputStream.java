package org.apache.commons.compress.compressors.lz4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.compressors.CompressorOutputStream;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes9.dex */
public class FramedLZ4CompressorOutputStream extends CompressorOutputStream {
    private static final byte[] END_MARK = new byte[4];
    private final byte[] blockData;
    private byte[] blockDependencyBuffer;
    private final XXHash32 blockHash;
    private int collectedBlockDependencyBytes;
    private final XXHash32 contentHash;
    private int currentIndex;
    private boolean finished;
    private final byte[] oneByte;
    private final OutputStream out;
    private final Parameters params;

    public static class Parameters {
        public static final Parameters DEFAULT = new Parameters(BlockSize.M4, true, false, false);
        private final BlockSize blockSize;
        private final org.apache.commons.compress.compressors.lz77support.Parameters lz77params;
        private final boolean withBlockChecksum;
        private final boolean withBlockDependency;
        private final boolean withContentChecksum;

        public Parameters(BlockSize blockSize) {
            this(blockSize, true, false, false);
        }

        public Parameters(BlockSize blockSize, org.apache.commons.compress.compressors.lz77support.Parameters parameters) {
            this(blockSize, true, false, false, parameters);
        }

        public String toString() {
            return "LZ4 Parameters with BlockSize " + this.blockSize + ", withContentChecksum " + this.withContentChecksum + ", withBlockChecksum " + this.withBlockChecksum + ", withBlockDependency " + this.withBlockDependency;
        }

        public Parameters(BlockSize blockSize, boolean z6, boolean z10, boolean z11) {
            this(blockSize, z6, z10, z11, BlockLZ4CompressorOutputStream.createParameterBuilder().build());
        }

        public Parameters(BlockSize blockSize, boolean z6, boolean z10, boolean z11, org.apache.commons.compress.compressors.lz77support.Parameters parameters) {
            this.blockSize = blockSize;
            this.withContentChecksum = z6;
            this.withBlockChecksum = z10;
            this.withBlockDependency = z11;
            this.lz77params = parameters;
        }
    }

    public FramedLZ4CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, Parameters.DEFAULT);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) (i10 & 255);
        write(bArr);
    }

    public enum BlockSize {
        K64(65536, 4),
        K256(262144, 5),
        M1(1048576, 6),
        M4(4194304, 7);

        private final int index;
        private final int size;

        int getIndex() {
            return this.index;
        }

        int getSize() {
            return this.size;
        }

        BlockSize(int i10, int i11) {
            this.size = i10;
            this.index = i11;
        }
    }

    public FramedLZ4CompressorOutputStream(OutputStream outputStream, Parameters parameters) throws IOException {
        this.oneByte = new byte[1];
        this.finished = false;
        this.currentIndex = 0;
        this.contentHash = new XXHash32();
        this.params = parameters;
        this.blockData = new byte[parameters.blockSize.getSize()];
        this.out = outputStream;
        this.blockHash = parameters.withBlockChecksum ? new XXHash32() : null;
        outputStream.write(FramedLZ4CompressorInputStream.LZ4_SIGNATURE);
        writeFrameDescriptor();
        this.blockDependencyBuffer = parameters.withBlockDependency ? new byte[65536] : null;
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
            this.collectedBlockDependencyBytes = Math.min(this.collectedBlockDependencyBytes + iMin, this.blockDependencyBuffer.length);
        }
    }

    private void flushBlock() throws IOException {
        boolean z6 = this.params.withBlockDependency;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BlockLZ4CompressorOutputStream blockLZ4CompressorOutputStream = new BlockLZ4CompressorOutputStream(byteArrayOutputStream, this.params.lz77params);
        if (z6) {
            try {
                byte[] bArr = this.blockDependencyBuffer;
                int length = bArr.length;
                int i10 = this.collectedBlockDependencyBytes;
                blockLZ4CompressorOutputStream.prefill(bArr, length - i10, i10);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        blockLZ4CompressorOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        blockLZ4CompressorOutputStream.write(this.blockData, 0, this.currentIndex);
        blockLZ4CompressorOutputStream.close();
        if (z6) {
            appendToBlockDependencyBuffer(this.blockData, 0, this.currentIndex);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length2 = byteArray.length;
        int i11 = this.currentIndex;
        if (length2 > i11) {
            ByteUtils.toLittleEndian(this.out, Integer.MIN_VALUE | i11, 4);
            this.out.write(this.blockData, 0, this.currentIndex);
            if (this.params.withBlockChecksum) {
                this.blockHash.update(this.blockData, 0, this.currentIndex);
            }
        } else {
            ByteUtils.toLittleEndian(this.out, byteArray.length, 4);
            this.out.write(byteArray);
            if (this.params.withBlockChecksum) {
                this.blockHash.update(byteArray, 0, byteArray.length);
            }
        }
        if (this.params.withBlockChecksum) {
            ByteUtils.toLittleEndian(this.out, this.blockHash.getValue(), 4);
            this.blockHash.reset();
        }
        this.currentIndex = 0;
    }

    private void writeFrameDescriptor() throws IOException {
        int i10 = !this.params.withBlockDependency ? 96 : 64;
        if (this.params.withContentChecksum) {
            i10 |= 4;
        }
        if (this.params.withBlockChecksum) {
            i10 |= 16;
        }
        this.out.write(i10);
        this.contentHash.update(i10);
        int index = (this.params.blockSize.getIndex() << 4) & 112;
        this.out.write(index);
        this.contentHash.update(index);
        this.out.write((int) ((this.contentHash.getValue() >> 8) & 255));
        this.contentHash.reset();
    }

    private void writeTrailer() throws IOException {
        this.out.write(END_MARK);
        if (this.params.withContentChecksum) {
            ByteUtils.toLittleEndian(this.out, this.contentHash.getValue(), 4);
        }
    }

    public void finish() throws IOException {
        if (this.finished) {
            return;
        }
        if (this.currentIndex > 0) {
            flushBlock();
        }
        writeTrailer();
        this.finished = true;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        this.out.close();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.params.withContentChecksum) {
            this.contentHash.update(bArr, i10, i11);
        }
        if (this.currentIndex + i11 > this.blockData.length) {
            flushBlock();
            while (true) {
                byte[] bArr2 = this.blockData;
                if (i11 <= bArr2.length) {
                    break;
                }
                System.arraycopy(bArr, i10, bArr2, 0, bArr2.length);
                byte[] bArr3 = this.blockData;
                i10 += bArr3.length;
                i11 -= bArr3.length;
                this.currentIndex = bArr3.length;
                flushBlock();
            }
        }
        System.arraycopy(bArr, i10, this.blockData, this.currentIndex, i11);
        this.currentIndex += i11;
    }
}

package org.apache.commons.compress.compressors.deflate64;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.utils.BitInputStream;

/* JADX INFO: loaded from: classes2.dex */
class HuffmanDecoder implements Closeable {
    private static final int[] FIXED_DISTANCE;
    private static final int[] FIXED_LITERALS;
    private boolean finalBlock = false;
    private final InputStream in;
    private final DecodingMemory memory;
    private BitInputStream reader;
    private DecoderState state;
    private static final short[] RUN_LENGTH_TABLE = {96, 128, 160, 192, 224, 256, 288, 320, 353, 417, 481, 545, 610, 738, 866, 994, 1123, 1379, 1635, 1891, 2148, 2660, 3172, 3684, 4197, 5221, 6245, 7269, 112};
    private static final int[] DISTANCE_TABLE = {16, 32, 48, 64, 81, 113, 146, 210, 275, TypedValues.CycleType.TYPE_ALPHA, 532, 788, 1045, 1557, 2070, 3094, 4119, 6167, 8216, 12312, 16409, 24601, 32794, 49178, 65563, 98331, 131100, 196636, 262173, 393245, 524318, 786462};
    private static final int[] CODE_LENGTHS_ORDER = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

    private static class BinaryTreeNode {
        private final int bits;
        BinaryTreeNode leftNode;
        int literal;
        BinaryTreeNode rightNode;

        void leaf(int i10) {
            this.literal = i10;
            this.leftNode = null;
            this.rightNode = null;
        }

        private BinaryTreeNode(int i10) {
            this.literal = -1;
            this.bits = i10;
        }

        BinaryTreeNode left() {
            if (this.leftNode == null && this.literal == -1) {
                this.leftNode = new BinaryTreeNode(this.bits + 1);
            }
            return this.leftNode;
        }

        BinaryTreeNode right() {
            if (this.rightNode == null && this.literal == -1) {
                this.rightNode = new BinaryTreeNode(this.bits + 1);
            }
            return this.rightNode;
        }
    }

    private static abstract class DecoderState {
        private DecoderState() {
        }

        abstract int available() throws IOException;

        abstract boolean hasData();

        abstract int read(byte[] bArr, int i10, int i11) throws IOException;

        abstract HuffmanState state();
    }

    private static class DecodingMemory {
        private final int mask;
        private final byte[] memory;
        private int wHead;
        private boolean wrappedAround;

        private int incCounter(int i10) {
            int i11 = (i10 + 1) & this.mask;
            if (!this.wrappedAround && i11 < i10) {
                this.wrappedAround = true;
            }
            return i11;
        }

        byte add(byte b7) {
            byte[] bArr = this.memory;
            int i10 = this.wHead;
            bArr[i10] = b7;
            this.wHead = incCounter(i10);
            return b7;
        }

        private DecodingMemory() {
            this(16);
        }

        void recordToBuffer(int i10, int i11, byte[] bArr) {
            if (i10 > this.memory.length) {
                throw new IllegalStateException("Illegal distance parameter: " + i10);
            }
            int i12 = this.wHead;
            int iIncCounter = (i12 - i10) & this.mask;
            if (!this.wrappedAround && iIncCounter >= i12) {
                throw new IllegalStateException("Attempt to read beyond memory: dist=" + i10);
            }
            int i13 = 0;
            while (i13 < i11) {
                bArr[i13] = add(this.memory[iIncCounter]);
                i13++;
                iIncCounter = incCounter(iIncCounter);
            }
        }

        private DecodingMemory(int i10) {
            byte[] bArr = new byte[1 << i10];
            this.memory = bArr;
            this.mask = bArr.length - 1;
        }

        void add(byte[] bArr, int i10, int i11) {
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                add(bArr[i12]);
            }
        }
    }

    private class HuffmanCodes extends DecoderState {
        private final BinaryTreeNode distanceTree;
        private boolean endOfBlock;
        private final BinaryTreeNode lengthTree;
        private byte[] runBuffer;
        private int runBufferLength;
        private int runBufferPos;
        private final HuffmanState state;

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int available() {
            return this.runBufferLength - this.runBufferPos;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        boolean hasData() {
            return !this.endOfBlock;
        }

        HuffmanCodes(HuffmanState huffmanState, int[] iArr, int[] iArr2) {
            super();
            this.endOfBlock = false;
            this.runBufferPos = 0;
            this.runBuffer = new byte[0];
            this.runBufferLength = 0;
            this.state = huffmanState;
            this.lengthTree = HuffmanDecoder.buildTree(iArr);
            this.distanceTree = HuffmanDecoder.buildTree(iArr2);
        }

        private int copyFromRunBuffer(byte[] bArr, int i10, int i11) {
            int i12 = this.runBufferLength - this.runBufferPos;
            if (i12 <= 0) {
                return 0;
            }
            int iMin = Math.min(i11, i12);
            System.arraycopy(this.runBuffer, this.runBufferPos, bArr, i10, iMin);
            this.runBufferPos += iMin;
            return iMin;
        }

        private int decodeNext(byte[] bArr, int i10, int i11) throws IOException {
            if (this.endOfBlock) {
                return -1;
            }
            int iCopyFromRunBuffer = copyFromRunBuffer(bArr, i10, i11);
            while (iCopyFromRunBuffer < i11) {
                int iNextSymbol = HuffmanDecoder.nextSymbol(HuffmanDecoder.this.reader, this.lengthTree);
                if (iNextSymbol >= 256) {
                    if (iNextSymbol <= 256) {
                        this.endOfBlock = true;
                        break;
                    }
                    short s = HuffmanDecoder.RUN_LENGTH_TABLE[iNextSymbol - 257];
                    int bits = (int) (((long) (s >>> 5)) + HuffmanDecoder.this.readBits(s & 31));
                    int i12 = HuffmanDecoder.DISTANCE_TABLE[HuffmanDecoder.nextSymbol(HuffmanDecoder.this.reader, this.distanceTree)];
                    int bits2 = (int) (((long) (i12 >>> 4)) + HuffmanDecoder.this.readBits(i12 & 15));
                    if (this.runBuffer.length < bits) {
                        this.runBuffer = new byte[bits];
                    }
                    this.runBufferLength = bits;
                    this.runBufferPos = 0;
                    HuffmanDecoder.this.memory.recordToBuffer(bits2, bits, this.runBuffer);
                    iCopyFromRunBuffer += copyFromRunBuffer(bArr, i10 + iCopyFromRunBuffer, i11 - iCopyFromRunBuffer);
                } else {
                    bArr[iCopyFromRunBuffer + i10] = HuffmanDecoder.this.memory.add((byte) iNextSymbol);
                    iCopyFromRunBuffer++;
                }
            }
            return iCopyFromRunBuffer;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        HuffmanState state() {
            return this.endOfBlock ? HuffmanState.INITIAL : this.state;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int read(byte[] bArr, int i10, int i11) throws IOException {
            return decodeNext(bArr, i10, i11);
        }
    }

    private class InitialState extends DecoderState {
        private InitialState() {
            super();
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int available() {
            return 0;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        boolean hasData() {
            return false;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int read(byte[] bArr, int i10, int i11) throws IOException {
            throw new IllegalStateException("Cannot read in this state");
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        HuffmanState state() {
            return HuffmanState.INITIAL;
        }
    }

    private class UncompressedState extends DecoderState {
        private final long blockLength;
        private long read;

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        boolean hasData() {
            return this.read < this.blockLength;
        }

        private UncompressedState(long j6) {
            super();
            this.blockLength = j6;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int available() throws IOException {
            return (int) Math.min(this.blockLength - this.read, HuffmanDecoder.this.reader.bitsAvailable() / 8);
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        int read(byte[] bArr, int i10, int i11) throws IOException {
            int i12;
            int iMin = (int) Math.min(this.blockLength - this.read, i11);
            int i13 = 0;
            while (i13 < iMin) {
                if (HuffmanDecoder.this.reader.bitsCached() > 0) {
                    bArr[i10 + i13] = HuffmanDecoder.this.memory.add((byte) HuffmanDecoder.this.readBits(8));
                    i12 = 1;
                } else {
                    int i14 = i10 + i13;
                    i12 = HuffmanDecoder.this.in.read(bArr, i14, iMin - i13);
                    if (i12 == -1) {
                        throw new EOFException("Truncated Deflate64 Stream");
                    }
                    HuffmanDecoder.this.memory.add(bArr, i14, i12);
                }
                this.read += (long) i12;
                i13 += i12;
            }
            return iMin;
        }

        @Override // org.apache.commons.compress.compressors.deflate64.HuffmanDecoder.DecoderState
        HuffmanState state() {
            return this.read < this.blockLength ? HuffmanState.STORED : HuffmanState.INITIAL;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int nextSymbol(BitInputStream bitInputStream, BinaryTreeNode binaryTreeNode) throws IOException {
        while (binaryTreeNode != null && binaryTreeNode.literal == -1) {
            binaryTreeNode = readBits(bitInputStream, 1) == 0 ? binaryTreeNode.leftNode : binaryTreeNode.rightNode;
        }
        if (binaryTreeNode != null) {
            return binaryTreeNode.literal;
        }
        return -1;
    }

    private static void populateDynamicTables(BitInputStream bitInputStream, int[] iArr, int[] iArr2) throws IOException {
        long bits;
        int bits2 = (int) (readBits(bitInputStream, 4) + 4);
        int[] iArr3 = new int[19];
        for (int i10 = 0; i10 < bits2; i10++) {
            iArr3[CODE_LENGTHS_ORDER[i10]] = (int) readBits(bitInputStream, 3);
        }
        BinaryTreeNode binaryTreeNodeBuildTree = buildTree(iArr3);
        int length = iArr.length + iArr2.length;
        int[] iArr4 = new int[length];
        int i11 = -1;
        int i12 = 0;
        int bits3 = 0;
        while (i12 < length) {
            if (bits3 > 0) {
                iArr4[i12] = i11;
                bits3--;
                i12++;
            } else {
                int iNextSymbol = nextSymbol(bitInputStream, binaryTreeNodeBuildTree);
                if (iNextSymbol < 16) {
                    iArr4[i12] = iNextSymbol;
                    i12++;
                    i11 = iNextSymbol;
                } else if (iNextSymbol == 16) {
                    bits3 = (int) (readBits(bitInputStream, 2) + 3);
                } else {
                    if (iNextSymbol == 17) {
                        bits = readBits(bitInputStream, 3) + 3;
                    } else if (iNextSymbol == 18) {
                        bits = readBits(bitInputStream, 7) + 11;
                    }
                    bits3 = (int) bits;
                    i11 = 0;
                }
            }
        }
        System.arraycopy(iArr4, 0, iArr, 0, iArr.length);
        System.arraycopy(iArr4, iArr.length, iArr2, 0, iArr2.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long readBits(int i10) throws IOException {
        return readBits(this.reader, i10);
    }

    private int[][] readDynamicTables() throws IOException {
        int[] iArr = new int[(int) (readBits(5) + 1)];
        int[][] iArr2 = {new int[(int) (readBits(5) + 257)], iArr};
        populateDynamicTables(this.reader, iArr2[0], iArr);
        return iArr2;
    }

    public int decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length);
    }

    static {
        int[] iArr = new int[288];
        FIXED_LITERALS = iArr;
        Arrays.fill(iArr, 0, 144, 8);
        Arrays.fill(iArr, 144, 256, 9);
        Arrays.fill(iArr, 256, 280, 7);
        Arrays.fill(iArr, 280, 288, 8);
        int[] iArr2 = new int[32];
        FIXED_DISTANCE = iArr2;
        Arrays.fill(iArr2, 5);
    }

    private static int[] getCodes(int[] iArr) {
        int[] iArr2 = new int[65];
        int iMax = 0;
        for (int i10 : iArr) {
            iMax = Math.max(iMax, i10);
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iMax + 1;
        int[] iArrCopyOf = Arrays.copyOf(iArr2, i11);
        int[] iArr3 = new int[i11];
        int i12 = 0;
        for (int i13 = 0; i13 <= iMax; i13++) {
            i12 = (i12 + iArrCopyOf[i13]) << 1;
            iArr3[i13] = i12;
        }
        return iArr3;
    }

    private static long readBits(BitInputStream bitInputStream, int i10) throws IOException {
        long bits = bitInputStream.readBits(i10);
        if (bits != -1) {
            return bits;
        }
        throw new EOFException("Truncated Deflate64 Stream");
    }

    private void switchToUncompressedState() throws IOException {
        this.reader.alignWithByteBoundary();
        long bits = readBits(16);
        if ((WebSocketProtocol.PAYLOAD_SHORT_MAX & (bits ^ WebSocketProtocol.PAYLOAD_SHORT_MAX)) != readBits(16)) {
            throw new IllegalStateException("Illegal LEN / NLEN values");
        }
        this.state = new UncompressedState(bits);
    }

    int available() throws IOException {
        return this.state.available();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.state = new InitialState();
        this.reader = null;
    }

    public int decode(byte[] bArr, int i10, int i11) throws IOException {
        while (true) {
            if (this.finalBlock && !this.state.hasData()) {
                return -1;
            }
            if (this.state.state() != HuffmanState.INITIAL) {
                return this.state.read(bArr, i10, i11);
            }
            this.finalBlock = readBits(1) == 1;
            int bits = (int) readBits(2);
            if (bits == 0) {
                switchToUncompressedState();
            } else if (bits == 1) {
                this.state = new HuffmanCodes(HuffmanState.FIXED_CODES, FIXED_LITERALS, FIXED_DISTANCE);
            } else {
                if (bits != 2) {
                    throw new IllegalStateException("Unsupported compression: " + bits);
                }
                int[][] dynamicTables = readDynamicTables();
                this.state = new HuffmanCodes(HuffmanState.DYNAMIC_CODES, dynamicTables[0], dynamicTables[1]);
            }
        }
    }

    HuffmanDecoder(InputStream inputStream) {
        this.memory = new DecodingMemory();
        this.reader = new BitInputStream(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.in = inputStream;
        this.state = new InitialState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BinaryTreeNode buildTree(int[] iArr) {
        int[] codes = getCodes(iArr);
        int i10 = 0;
        BinaryTreeNode binaryTreeNode = new BinaryTreeNode(i10);
        while (i10 < iArr.length) {
            int i11 = iArr[i10];
            if (i11 != 0) {
                int i12 = i11 - 1;
                int i13 = codes[i12];
                BinaryTreeNode binaryTreeNodeRight = binaryTreeNode;
                for (int i14 = i12; i14 >= 0; i14--) {
                    if (((1 << i14) & i13) == 0) {
                        binaryTreeNodeRight = binaryTreeNodeRight.left();
                    } else {
                        binaryTreeNodeRight = binaryTreeNodeRight.right();
                    }
                }
                binaryTreeNodeRight.leaf(i10);
                codes[i12] = codes[i12] + 1;
            }
            i10++;
        }
        return binaryTreeNode;
    }
}

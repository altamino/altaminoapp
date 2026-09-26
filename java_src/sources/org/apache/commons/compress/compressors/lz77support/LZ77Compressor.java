package org.apache.commons.compress.compressors.lz77support;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class LZ77Compressor {
    private static final int HASH_MASK = 32767;
    private static final int HASH_SIZE = 32768;
    private static final int H_SHIFT = 5;
    private static final int NO_MATCH = -1;
    static final int NUMBER_OF_BYTES_IN_HASH = 3;
    private static final Block THE_EOD = new EOD();
    private final Callback callback;
    private int currentPosition;
    private final int[] head;
    private final Parameters params;
    private final int[] prev;
    private final int wMask;
    private final byte[] window;
    private boolean initialized = false;
    private int lookahead = 0;
    private int insertHash = 0;
    private int blockStart = 0;
    private int matchStart = -1;
    private int missedInserts = 0;

    public static final class BackReference extends Block {
        private final int length;
        private final int offset;

        public int getLength() {
            return this.length;
        }

        public int getOffset() {
            return this.offset;
        }

        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.BACK_REFERENCE;
        }

        public String toString() {
            return "BackReference with offset " + this.offset + " and length " + this.length;
        }

        public BackReference(int i10, int i11) {
            this.offset = i10;
            this.length = i11;
        }
    }

    public static abstract class Block {

        public enum BlockType {
            LITERAL,
            BACK_REFERENCE,
            EOD
        }

        public abstract BlockType getType();
    }

    public interface Callback {
        void accept(Block block) throws IOException;
    }

    public static final class EOD extends Block {
        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.EOD;
        }
    }

    public static final class LiteralBlock extends Block {
        private final byte[] data;
        private final int length;
        private final int offset;

        public byte[] getData() {
            return this.data;
        }

        public int getLength() {
            return this.length;
        }

        public int getOffset() {
            return this.offset;
        }

        @Override // org.apache.commons.compress.compressors.lz77support.LZ77Compressor.Block
        public Block.BlockType getType() {
            return Block.BlockType.LITERAL;
        }

        public String toString() {
            return "LiteralBlock starting at " + this.offset + " with length " + this.length;
        }

        public LiteralBlock(byte[] bArr, int i10, int i11) {
            this.data = bArr;
            this.offset = i10;
            this.length = i11;
        }
    }

    private void initialize() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.insertHash = nextHash(this.insertHash, this.window[i10]);
        }
        this.initialized = true;
    }

    private int nextHash(int i10, byte b7) {
        return ((i10 << 5) ^ (b7 & 255)) & HASH_MASK;
    }

    public void compress(byte[] bArr) throws IOException {
        compress(bArr, 0, bArr.length);
    }

    private void catchUpMissedInserts() {
        while (true) {
            int i10 = this.missedInserts;
            if (i10 <= 0) {
                return;
            }
            int i11 = this.currentPosition;
            this.missedInserts = i10 - 1;
            insertString(i11 - i10);
        }
    }

    private void doCompress(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 > (this.window.length - this.currentPosition) - this.lookahead) {
            slide();
        }
        System.arraycopy(bArr, i10, this.window, this.currentPosition + this.lookahead, i11);
        int i12 = this.lookahead + i11;
        this.lookahead = i12;
        if (!this.initialized && i12 >= this.params.getMinBackReferenceLength()) {
            initialize();
        }
        if (this.initialized) {
            compress();
        }
    }

    private void flushBackReference(int i10) throws IOException {
        this.callback.accept(new BackReference(this.currentPosition - this.matchStart, i10));
    }

    private void flushLiteralBlock() throws IOException {
        Callback callback = this.callback;
        byte[] bArr = this.window;
        int i10 = this.blockStart;
        callback.accept(new LiteralBlock(bArr, i10, this.currentPosition - i10));
    }

    private int insertString(int i10) {
        int iNextHash = nextHash(this.insertHash, this.window[i10 + 2]);
        this.insertHash = iNextHash;
        int[] iArr = this.head;
        int i11 = iArr[iNextHash];
        this.prev[this.wMask & i10] = i11;
        iArr[iNextHash] = i10;
        return i11;
    }

    private void insertStringsInMatch(int i10) {
        int iMin = Math.min(i10 - 1, this.lookahead - 3);
        for (int i11 = 1; i11 <= iMin; i11++) {
            insertString(this.currentPosition + i11);
        }
        this.missedInserts = (i10 - iMin) - 1;
    }

    private int longestMatch(int i10) {
        int minBackReferenceLength = this.params.getMinBackReferenceLength() - 1;
        int iMin = Math.min(this.params.getMaxBackReferenceLength(), this.lookahead);
        int iMax = Math.max(0, this.currentPosition - this.params.getMaxOffset());
        int iMin2 = Math.min(iMin, this.params.getNiceBackReferenceLength());
        int maxCandidates = this.params.getMaxCandidates();
        for (int i11 = 0; i11 < maxCandidates && i10 >= iMax; i11++) {
            int i12 = 0;
            for (int i13 = 0; i13 < iMin; i13++) {
                byte[] bArr = this.window;
                if (bArr[i10 + i13] != bArr[this.currentPosition + i13]) {
                    break;
                }
                i12++;
            }
            if (i12 > minBackReferenceLength) {
                this.matchStart = i10;
                minBackReferenceLength = i12;
                if (i12 >= iMin2) {
                    break;
                }
            }
            i10 = this.prev[i10 & this.wMask];
        }
        return minBackReferenceLength;
    }

    private int longestMatchForNextPosition(int i10) {
        int i11 = this.matchStart;
        int i12 = this.insertHash;
        this.lookahead--;
        int i13 = this.currentPosition + 1;
        this.currentPosition = i13;
        int iInsertString = insertString(i13);
        int i14 = this.prev[this.currentPosition & this.wMask];
        int iLongestMatch = longestMatch(iInsertString);
        if (iLongestMatch > i10) {
            return iLongestMatch;
        }
        this.matchStart = i11;
        this.head[this.insertHash] = i14;
        this.insertHash = i12;
        this.currentPosition--;
        this.lookahead++;
        return i10;
    }

    private void slide() throws IOException {
        int windowSize = this.params.getWindowSize();
        int i10 = this.blockStart;
        if (i10 != this.currentPosition && i10 < windowSize) {
            flushLiteralBlock();
            this.blockStart = this.currentPosition;
        }
        byte[] bArr = this.window;
        System.arraycopy(bArr, windowSize, bArr, 0, windowSize);
        this.currentPosition -= windowSize;
        this.matchStart -= windowSize;
        this.blockStart -= windowSize;
        int i11 = 0;
        while (true) {
            int i12 = -1;
            if (i11 >= 32768) {
                break;
            }
            int[] iArr = this.head;
            int i13 = iArr[i11];
            if (i13 >= windowSize) {
                i12 = i13 - windowSize;
            }
            iArr[i11] = i12;
            i11++;
        }
        for (int i14 = 0; i14 < windowSize; i14++) {
            int[] iArr2 = this.prev;
            int i15 = iArr2[i14];
            iArr2[i14] = i15 >= windowSize ? i15 - windowSize : -1;
        }
    }

    public void compress(byte[] bArr, int i10, int i11) throws IOException {
        int windowSize = this.params.getWindowSize();
        while (i11 > windowSize) {
            doCompress(bArr, i10, windowSize);
            i10 += windowSize;
            i11 -= windowSize;
        }
        if (i11 > 0) {
            doCompress(bArr, i10, i11);
        }
    }

    public void finish() throws IOException {
        int i10 = this.blockStart;
        int i11 = this.currentPosition;
        if (i10 != i11 || this.lookahead > 0) {
            this.currentPosition = i11 + this.lookahead;
            flushLiteralBlock();
        }
        this.callback.accept(THE_EOD);
    }

    public void prefill(byte[] bArr) {
        if (this.currentPosition != 0 || this.lookahead != 0) {
            throw new IllegalStateException("the compressor has already started to accept data, can't prefill anymore");
        }
        int iMin = Math.min(this.params.getWindowSize(), bArr.length);
        System.arraycopy(bArr, bArr.length - iMin, this.window, 0, iMin);
        if (iMin >= 3) {
            initialize();
            int i10 = iMin - 2;
            for (int i11 = 0; i11 < i10; i11++) {
                insertString(i11);
            }
            this.missedInserts = 2;
        } else {
            this.missedInserts = iMin;
        }
        this.currentPosition = iMin;
        this.blockStart = iMin;
    }

    public LZ77Compressor(Parameters parameters, Callback callback) {
        if (parameters != null) {
            if (callback != null) {
                this.params = parameters;
                this.callback = callback;
                int windowSize = parameters.getWindowSize();
                this.window = new byte[windowSize * 2];
                this.wMask = windowSize - 1;
                int[] iArr = new int[32768];
                this.head = iArr;
                Arrays.fill(iArr, -1);
                this.prev = new int[windowSize];
                return;
            }
            throw new NullPointerException("callback must not be null");
        }
        throw new NullPointerException("params must not be null");
    }

    private void compress() throws IOException {
        int iLongestMatch;
        int minBackReferenceLength = this.params.getMinBackReferenceLength();
        boolean lazyMatching = this.params.getLazyMatching();
        int lazyMatchingThreshold = this.params.getLazyMatchingThreshold();
        while (this.lookahead >= minBackReferenceLength) {
            catchUpMissedInserts();
            int iInsertString = insertString(this.currentPosition);
            if (iInsertString == -1 || iInsertString - this.currentPosition > this.params.getMaxOffset()) {
                iLongestMatch = 0;
            } else {
                iLongestMatch = longestMatch(iInsertString);
                if (lazyMatching && iLongestMatch <= lazyMatchingThreshold && this.lookahead > minBackReferenceLength) {
                    iLongestMatch = longestMatchForNextPosition(iLongestMatch);
                }
            }
            if (iLongestMatch >= minBackReferenceLength) {
                if (this.blockStart != this.currentPosition) {
                    flushLiteralBlock();
                    this.blockStart = -1;
                }
                flushBackReference(iLongestMatch);
                insertStringsInMatch(iLongestMatch);
                this.lookahead -= iLongestMatch;
                int i10 = this.currentPosition + iLongestMatch;
                this.currentPosition = i10;
                this.blockStart = i10;
            } else {
                this.lookahead--;
                int i11 = this.currentPosition + 1;
                this.currentPosition = i11;
                if (i11 - this.blockStart >= this.params.getMaxLiteralLength()) {
                    flushLiteralBlock();
                    this.blockStart = this.currentPosition;
                }
            }
        }
    }
}

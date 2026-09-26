package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
class ExplodingInputStream extends InputStream {
    private BitStream bits;
    private final CircularBuffer buffer = new CircularBuffer(32768);
    private final int dictionarySize;
    private BinaryTree distanceTree;
    private final InputStream in;
    private BinaryTree lengthTree;
    private BinaryTree literalTree;
    private final int minimumMatchLength;
    private final int numberOfTrees;

    private void init() throws IOException {
        if (this.bits == null) {
            if (this.numberOfTrees == 3) {
                this.literalTree = BinaryTree.decode(this.in, 256);
            }
            this.lengthTree = BinaryTree.decode(this.in, 64);
            this.distanceTree = BinaryTree.decode(this.in, 64);
            this.bits = new BitStream(this.in);
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.buffer.available()) {
            fillBuffer();
        }
        return this.buffer.get();
    }

    public ExplodingInputStream(int i10, int i11, InputStream inputStream) {
        if (i10 != 4096 && i10 != 8192) {
            throw new IllegalArgumentException("The dictionary size must be 4096 or 8192");
        }
        if (i11 != 2 && i11 != 3) {
            throw new IllegalArgumentException("The number of trees must be 2 or 3");
        }
        this.dictionarySize = i10;
        this.numberOfTrees = i11;
        this.minimumMatchLength = i11;
        this.in = inputStream;
    }

    private void fillBuffer() throws IOException {
        int i10;
        int iNextByte;
        init();
        int iNextBit = this.bits.nextBit();
        if (iNextBit == 1) {
            BinaryTree binaryTree = this.literalTree;
            if (binaryTree != null) {
                iNextByte = binaryTree.read(this.bits);
            } else {
                iNextByte = this.bits.nextByte();
            }
            if (iNextByte == -1) {
                return;
            }
            this.buffer.put(iNextByte);
            return;
        }
        if (iNextBit == 0) {
            if (this.dictionarySize == 4096) {
                i10 = 6;
            } else {
                i10 = 7;
            }
            int iNextBits = (int) this.bits.nextBits(i10);
            int i11 = this.distanceTree.read(this.bits);
            if (i11 == -1 && iNextBits <= 0) {
                return;
            }
            int i12 = (i11 << i10) | iNextBits;
            int iNextBits2 = this.lengthTree.read(this.bits);
            if (iNextBits2 == 63) {
                iNextBits2 = (int) (((long) iNextBits2) + this.bits.nextBits(8));
            }
            this.buffer.copy(i12 + 1, iNextBits2 + this.minimumMatchLength);
        }
    }
}

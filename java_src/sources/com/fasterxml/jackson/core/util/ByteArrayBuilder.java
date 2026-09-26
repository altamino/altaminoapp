package com.fasterxml.jackson.core.util;

import java.io.OutputStream;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes3.dex */
public final class ByteArrayBuilder extends OutputStream {
    static final int DEFAULT_BLOCK_ARRAY_SIZE = 40;
    private static final int INITIAL_BLOCK_SIZE = 500;
    private static final int MAX_BLOCK_SIZE = 262144;
    private static final byte[] NO_BYTES = new byte[0];
    private final BufferRecycler _bufferRecycler;
    private byte[] _currBlock;
    private int _currBlockPtr;
    private final LinkedList<byte[]> _pastBlocks;
    private int _pastLen;

    public ByteArrayBuilder() {
        this((BufferRecycler) null);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    public byte[] getCurrentSegment() {
        return this._currBlock;
    }

    public int getCurrentSegmentLength() {
        return this._currBlockPtr;
    }

    public void reset() {
        this._pastLen = 0;
        this._currBlockPtr = 0;
        if (this._pastBlocks.isEmpty()) {
            return;
        }
        this._pastBlocks.clear();
    }

    public void setCurrentSegmentLength(int i10) {
        this._currBlockPtr = i10;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler) {
        this(bufferRecycler, 500);
    }

    private void _allocMore() {
        int length = this._pastLen + this._currBlock.length;
        this._pastLen = length;
        int iMax = Math.max(length >> 1, 1000);
        if (iMax > 262144) {
            iMax = 262144;
        }
        this._pastBlocks.add(this._currBlock);
        this._currBlock = new byte[iMax];
        this._currBlockPtr = 0;
    }

    public void append(int i10) {
        if (this._currBlockPtr >= this._currBlock.length) {
            _allocMore();
        }
        byte[] bArr = this._currBlock;
        int i11 = this._currBlockPtr;
        this._currBlockPtr = i11 + 1;
        bArr[i11] = (byte) i10;
    }

    public void appendThreeBytes(int i10) {
        int i11 = this._currBlockPtr;
        int i12 = i11 + 2;
        byte[] bArr = this._currBlock;
        if (i12 >= bArr.length) {
            append(i10 >> 16);
            append(i10 >> 8);
            append(i10);
        } else {
            bArr[i11] = (byte) (i10 >> 16);
            bArr[i11 + 1] = (byte) (i10 >> 8);
            this._currBlockPtr = i11 + 3;
            bArr[i11 + 2] = (byte) i10;
        }
    }

    public void appendTwoBytes(int i10) {
        int i11 = this._currBlockPtr;
        int i12 = i11 + 1;
        byte[] bArr = this._currBlock;
        if (i12 >= bArr.length) {
            append(i10 >> 8);
            append(i10);
        } else {
            bArr[i11] = (byte) (i10 >> 8);
            this._currBlockPtr = i11 + 2;
            bArr[i11 + 1] = (byte) i10;
        }
    }

    public byte[] completeAndCoalesce(int i10) {
        this._currBlockPtr = i10;
        return toByteArray();
    }

    public byte[] toByteArray() {
        int i10 = this._pastLen + this._currBlockPtr;
        if (i10 == 0) {
            return NO_BYTES;
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        for (byte[] bArr2 : this._pastBlocks) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i11, length);
            i11 += length;
        }
        System.arraycopy(this._currBlock, 0, bArr, i11, this._currBlockPtr);
        int i12 = i11 + this._currBlockPtr;
        if (i12 == i10) {
            if (!this._pastBlocks.isEmpty()) {
                reset();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i10 + ", copied " + i12 + " bytes");
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        while (true) {
            int iMin = Math.min(this._currBlock.length - this._currBlockPtr, i11);
            if (iMin > 0) {
                System.arraycopy(bArr, i10, this._currBlock, this._currBlockPtr, iMin);
                i10 += iMin;
                this._currBlockPtr += iMin;
                i11 -= iMin;
            }
            if (i11 <= 0) {
                return;
            } else {
                _allocMore();
            }
        }
    }

    public ByteArrayBuilder(int i10) {
        this(null, i10);
    }

    public byte[] finishCurrentSegment() {
        _allocMore();
        return this._currBlock;
    }

    public void release() {
        byte[] bArr;
        reset();
        BufferRecycler bufferRecycler = this._bufferRecycler;
        if (bufferRecycler != null && (bArr = this._currBlock) != null) {
            bufferRecycler.releaseByteBuffer(BufferRecycler.ByteBufferType.WRITE_CONCAT_BUFFER, bArr);
            this._currBlock = null;
        }
    }

    public byte[] resetAndGetFirstSegment() {
        reset();
        return this._currBlock;
    }

    public ByteArrayBuilder(BufferRecycler bufferRecycler, int i10) {
        this._pastBlocks = new LinkedList<>();
        this._bufferRecycler = bufferRecycler;
        if (bufferRecycler == null) {
            this._currBlock = new byte[i10];
        } else {
            this._currBlock = bufferRecycler.allocByteBuffer(BufferRecycler.ByteBufferType.WRITE_CONCAT_BUFFER);
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        append(i10);
    }
}

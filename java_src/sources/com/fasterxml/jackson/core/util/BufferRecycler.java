package com.fasterxml.jackson.core.util;

/* JADX INFO: loaded from: classes8.dex */
public class BufferRecycler {
    public static final int DEFAULT_WRITE_CONCAT_BUFFER_LEN = 2000;
    protected final byte[][] _byteBuffers = new byte[ByteBufferType.values().length][];
    protected final char[][] _charBuffers = new char[CharBufferType.values().length][];

    public final byte[] allocByteBuffer(ByteBufferType byteBufferType) {
        return allocByteBuffer(byteBufferType, 0);
    }

    public final char[] allocCharBuffer(CharBufferType charBufferType) {
        return allocCharBuffer(charBufferType, 0);
    }

    public enum ByteBufferType {
        READ_IO_BUFFER(4000),
        WRITE_ENCODING_BUFFER(4000),
        WRITE_CONCAT_BUFFER(2000),
        BASE64_CODEC_BUFFER(2000);

        protected final int size;

        ByteBufferType(int i10) {
            this.size = i10;
        }
    }

    public enum CharBufferType {
        TOKEN_BUFFER(2000),
        CONCAT_BUFFER(2000),
        TEXT_BUFFER(200),
        NAME_COPY_BUFFER(200);

        protected final int size;

        CharBufferType(int i10) {
            this.size = i10;
        }
    }

    private byte[] balloc(int i10) {
        return new byte[i10];
    }

    private char[] calloc(int i10) {
        return new char[i10];
    }

    public final byte[] allocByteBuffer(ByteBufferType byteBufferType, int i10) {
        int iOrdinal = byteBufferType.ordinal();
        int i11 = byteBufferType.size;
        if (i10 < i11) {
            i10 = i11;
        }
        byte[][] bArr = this._byteBuffers;
        byte[] bArr2 = bArr[iOrdinal];
        if (bArr2 == null || bArr2.length < i10) {
            return balloc(i10);
        }
        bArr[iOrdinal] = null;
        return bArr2;
    }

    public final char[] allocCharBuffer(CharBufferType charBufferType, int i10) {
        int i11 = charBufferType.size;
        if (i11 > i10) {
            i10 = i11;
        }
        int iOrdinal = charBufferType.ordinal();
        char[][] cArr = this._charBuffers;
        char[] cArr2 = cArr[iOrdinal];
        if (cArr2 == null || cArr2.length < i10) {
            return calloc(i10);
        }
        cArr[iOrdinal] = null;
        return cArr2;
    }

    public final void releaseByteBuffer(ByteBufferType byteBufferType, byte[] bArr) {
        this._byteBuffers[byteBufferType.ordinal()] = bArr;
    }

    public final void releaseCharBuffer(CharBufferType charBufferType, char[] cArr) {
        this._charBuffers[charBufferType.ordinal()] = cArr;
    }
}

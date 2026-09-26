package androidx.emoji2.text.flatbuffer;

import com.google.common.base.c;

/* JADX INFO: loaded from: classes11.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {
    private byte[] buffer;
    private int writePos;

    public ArrayReadWriteBuf() {
        this(10);
    }

    public ArrayReadWriteBuf(int i10) {
        this(new byte[i10]);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String a(int i10, int i11) {
        return Utf8Safe.b(this.buffer, i10, i11);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i10) {
        return this.buffer[i10];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i10) {
        byte[] bArr = this.buffer;
        return (bArr[i10] & 255) | (bArr[i10 + 3] << c.CAN) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 1] & 255) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i10) {
        byte[] bArr = this.buffer;
        int i11 = i10 + 6;
        return (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i11]) & 255) << 48) | (((long) bArr[i10 + 7]) << 56);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i10) {
        byte[] bArr = this.buffer;
        return (short) ((bArr[i10] & 255) | (bArr[i10 + 1] << 8));
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.buffer = bArr;
        this.writePos = 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i10) {
        return Double.longBitsToDouble(getLong(i10));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i10) {
        return Float.intBitsToFloat(getInt(i10));
    }

    public ArrayReadWriteBuf(byte[] bArr, int i10) {
        this.buffer = bArr;
        this.writePos = i10;
    }
}

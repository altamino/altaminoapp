package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes9.dex */
public class ByteBufferReadWriteBuf implements ReadWriteBuf {
    private final ByteBuffer buffer;

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String a(int i10, int i11) {
        return Utf8Safe.c(this.buffer, i10, i11);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i10) {
        return this.buffer.get(i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i10) {
        return this.buffer.getDouble(i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i10) {
        return this.buffer.getFloat(i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i10) {
        return this.buffer.getInt(i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i10) {
        return this.buffer.getLong(i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i10) {
        return this.buffer.getShort(i10);
    }

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }
}

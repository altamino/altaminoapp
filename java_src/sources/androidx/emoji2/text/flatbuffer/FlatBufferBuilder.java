package androidx.emoji2.text.flatbuffer;

import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class FlatBufferBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    ByteBuffer bb;
    ByteBufferFactory bb_factory;
    boolean finished;
    boolean force_defaults;
    int minalign;
    boolean nested;
    int num_vtables;
    int object_start;
    int space;
    final Utf8 utf8;
    int vector_num_elems;
    int[] vtable;
    int vtable_in_use;
    int[] vtables;

    static class ByteBufferBackedInputStream extends InputStream {
        ByteBuffer buf;

        @Override // java.io.InputStream
        public int read() throws IOException {
            try {
                return this.buf.get() & 255;
            } catch (BufferUnderflowException unused) {
                return -1;
            }
        }

        public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
            this.buf = byteBuffer;
        }
    }

    public static abstract class ByteBufferFactory {
        public abstract ByteBuffer a(int i10);
    }

    public FlatBufferBuilder(int i10, ByteBufferFactory byteBufferFactory) {
        this(i10, byteBufferFactory, null, Utf8.a());
    }

    public static final class HeapByteBufferFactory extends ByteBufferFactory {
        public static final HeapByteBufferFactory INSTANCE = new HeapByteBufferFactory();

        @Override // androidx.emoji2.text.flatbuffer.FlatBufferBuilder.ByteBufferFactory
        public ByteBuffer a(int i10) {
            return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public FlatBufferBuilder(int i10, ByteBufferFactory byteBufferFactory, ByteBuffer byteBuffer, Utf8 utf8) {
        this.minalign = 1;
        this.vtable = null;
        this.vtable_in_use = 0;
        this.nested = false;
        this.finished = false;
        this.vtables = new int[16];
        this.num_vtables = 0;
        this.vector_num_elems = 0;
        this.force_defaults = false;
        i10 = i10 <= 0 ? 1 : i10;
        this.bb_factory = byteBufferFactory;
        if (byteBuffer != null) {
            this.bb = byteBuffer;
            byteBuffer.clear();
            this.bb.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.bb = byteBufferFactory.a(i10);
        }
        this.utf8 = utf8;
        this.space = this.bb.capacity();
    }

    public FlatBufferBuilder(int i10) {
        this(i10, HeapByteBufferFactory.INSTANCE, null, Utf8.a());
    }

    public FlatBufferBuilder() {
        this(1024);
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer, ByteBufferFactory byteBufferFactory) {
        this(byteBuffer.capacity(), byteBufferFactory, byteBuffer, Utf8.a());
    }

    public FlatBufferBuilder(ByteBuffer byteBuffer) {
        this(byteBuffer, new HeapByteBufferFactory());
    }
}

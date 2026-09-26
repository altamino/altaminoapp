package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
abstract class AllocatedBuffer {
    public static AllocatedBuffer j(byte[] bArr) {
        return l(bArr, 0, bArr.length);
    }

    public abstract byte[] a();

    public abstract int b();

    public abstract boolean c();

    public abstract boolean d();

    public abstract int e();

    public abstract ByteBuffer f();

    public abstract int g();

    public abstract AllocatedBuffer h(int i10);

    public static AllocatedBuffer i(final ByteBuffer byteBuffer) {
        Internal.b(byteBuffer, "buffer");
        return new AllocatedBuffer() { // from class: androidx.datastore.preferences.protobuf.AllocatedBuffer.1
            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public boolean d() {
                return true;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public ByteBuffer f() {
                return byteBuffer;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public byte[] a() {
                return byteBuffer.array();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int b() {
                return byteBuffer.arrayOffset();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public boolean c() {
                return byteBuffer.hasArray();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int e() {
                return byteBuffer.limit();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int g() {
                return byteBuffer.position();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public AllocatedBuffer h(int i10) {
                byteBuffer.position(i10);
                return this;
            }
        };
    }

    public static AllocatedBuffer k(byte[] bArr, int i10, int i11) {
        if (i10 < 0 || i11 < 0 || i10 + i11 > bArr.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        return l(bArr, i10, i11);
    }

    private static AllocatedBuffer l(final byte[] bArr, final int i10, final int i11) {
        return new AllocatedBuffer() { // from class: androidx.datastore.preferences.protobuf.AllocatedBuffer.2
            private int position;

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public byte[] a() {
                return bArr;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int b() {
                return i10;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public boolean c() {
                return true;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public boolean d() {
                return false;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int e() {
                return i11;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public int g() {
                return this.position;
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public ByteBuffer f() {
                throw new UnsupportedOperationException();
            }

            @Override // androidx.datastore.preferences.protobuf.AllocatedBuffer
            public AllocatedBuffer h(int i12) {
                if (i12 >= 0 && i12 <= i11) {
                    this.position = i12;
                    return this;
                }
                throw new IllegalArgumentException("Invalid position: " + i12);
            }
        };
    }

    AllocatedBuffer() {
    }
}

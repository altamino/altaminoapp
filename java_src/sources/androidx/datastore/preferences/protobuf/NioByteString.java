package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes10.dex */
final class NioByteString extends ByteString.LeafByteString {
    private final ByteBuffer buffer;

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.NioByteString$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 extends InputStream {
        private final ByteBuffer buf;
        final /* synthetic */ NioByteString this$0;

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.buf.hasRemaining()) {
                return this.buf.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.buf.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            this.buf.mark();
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            try {
                this.buf.reset();
            } catch (InvalidMarkException e) {
                throw new IOException(e);
            }
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!this.buf.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, this.buf.remaining());
            this.buf.get(bArr, i10, iMin);
            return iMin;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString.LeafByteString
    boolean O(ByteString byteString, int i10, int i11) {
        return D(0, i11).equals(byteString.D(i10, i11 + i10));
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (size() != byteString.size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof NioByteString) {
            return this.buffer.equals(((NioByteString) obj).buffer);
        }
        return obj instanceof RopeByteString ? obj.equals(this) : this.buffer.equals(byteString.c());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int z(int i10, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + this.buffer.get(i13);
        }
        return i10;
    }

    private ByteBuffer P(int i10, int i11) {
        if (i10 < this.buffer.position() || i11 > this.buffer.limit() || i10 > i11) {
            throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        ByteBuffer byteBufferSlice = this.buffer.slice();
        byteBufferSlice.position(i10 - this.buffer.position());
        byteBufferSlice.limit(i11 - this.buffer.position());
        return byteBufferSlice;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private Object writeReplace() {
        return ByteString.g(this.buffer.slice());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int A(int i10, int i11, int i12) {
        return Utf8.v(i10, this.buffer, i11, i12 + i11);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected String H(Charset charset) {
        byte[] bArrE;
        int length;
        int iArrayOffset;
        if (this.buffer.hasArray()) {
            bArrE = this.buffer.array();
            iArrayOffset = this.buffer.arrayOffset() + this.buffer.position();
            length = this.buffer.remaining();
        } else {
            bArrE = E();
            length = bArrE.length;
            iArrayOffset = 0;
        }
        return new String(bArrE, iArrayOffset, length, charset);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void M(ByteOutput byteOutput) throws IOException {
        byteOutput.h(this.buffer.slice());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteBuffer c() {
        return this.buffer.asReadOnlyBuffer();
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public byte d(int i10) {
        try {
            return this.buffer.get(i10);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new ArrayIndexOutOfBoundsException(e2.getMessage());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected void s(byte[] bArr, int i10, int i11, int i12) {
        ByteBuffer byteBufferSlice = this.buffer.slice();
        byteBufferSlice.position(i10);
        byteBufferSlice.get(bArr, i11, i12);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public int size() {
        return this.buffer.remaining();
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public boolean v() {
        return Utf8.s(this.buffer);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public CodedInputStream y() {
        return CodedInputStream.h(this.buffer, true);
    }

    NioByteString(ByteBuffer byteBuffer) {
        Internal.b(byteBuffer, "buffer");
        this.buffer = byteBuffer.slice().order(ByteOrder.nativeOrder());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteString D(int i10, int i11) {
        try {
            return new NioByteString(P(i10, i11));
        } catch (ArrayIndexOutOfBoundsException e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new ArrayIndexOutOfBoundsException(e2.getMessage());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public byte u(int i10) {
        return d(i10);
    }
}

package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    private static final int UNSIGNED_BYTE_MASK = 255;
    private static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    private static final ByteArrayCopier byteArrayCopier;
    private int hash = 0;

    static abstract class AbstractByteIterator implements ByteIterator {
        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        AbstractByteIterator() {
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }
    }

    private static final class ArraysByteArrayCopier implements ByteArrayCopier {
        private ArraysByteArrayCopier() {
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }
    }

    private static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString
        protected int P() {
            return this.bytesOffset;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        protected void s(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.bytes, P() + i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        byte u(int i10) {
            return this.bytes[this.bytesOffset + i10];
        }

        BoundedByteString(byte[] bArr, int i10, int i11) {
            super(bArr);
            ByteString.f(i10, i10 + i11, bArr.length);
            this.bytesOffset = i10;
            this.bytesLength = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public byte d(int i10) {
            ByteString.e(i10, size());
            return this.bytes[this.bytesOffset + i10];
        }

        Object writeReplace() {
            return ByteString.K(E());
        }
    }

    private interface ByteArrayCopier {
        byte[] copyFrom(byte[] bArr, int i10, int i11);
    }

    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    static final class CodedBuilder {
        private final byte[] buffer;
        private final CodedOutputStream output;

        public CodedOutputStream b() {
            return this.output;
        }

        private CodedBuilder(int i10) {
            byte[] bArr = new byte[i10];
            this.buffer = bArr;
            this.output = CodedOutputStream.o0(bArr);
        }

        public ByteString a() {
            this.output.k();
            return new LiteralByteString(this.buffer);
        }
    }

    private static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        protected int P() {
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int iB = B();
            int iB2 = literalByteString.B();
            if (iB == 0 || iB2 == 0 || iB == iB2) {
                return O(literalByteString, 0, size());
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        protected final String H(Charset charset) {
            return new String(this.bytes, P(), size(), charset);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        final void M(ByteOutput byteOutput) throws IOException {
            byteOutput.i(this.bytes, P(), size());
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final ByteBuffer c() {
            return ByteBuffer.wrap(this.bytes, P(), size()).asReadOnlyBuffer();
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte d(int i10) {
            return this.bytes[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        protected void s(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.bytes, i10, bArr, i11, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        byte u(int i10) {
            return this.bytes[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final CodedInputStream y() {
            return CodedInputStream.k(this.bytes, P(), size(), true);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        protected final int z(int i10, int i11, int i12) {
            return Internal.i(i10, this.bytes, P() + i11, i12);
        }

        LiteralByteString(byte[] bArr) {
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        protected final int A(int i10, int i11, int i12) {
            int iP = P() + i11;
            return Utf8.w(i10, this.bytes, iP, i12 + iP);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final ByteString D(int i10, int i11) {
            int iF = ByteString.f(i10, i11, size());
            if (iF == 0) {
                return ByteString.EMPTY;
            }
            return new BoundedByteString(this.bytes, P() + i10, iF);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LeafByteString
        final boolean O(ByteString byteString, int i10, int i11) {
            if (i11 <= byteString.size()) {
                int i12 = i10 + i11;
                if (i12 <= byteString.size()) {
                    if (byteString instanceof LiteralByteString) {
                        LiteralByteString literalByteString = (LiteralByteString) byteString;
                        byte[] bArr = this.bytes;
                        byte[] bArr2 = literalByteString.bytes;
                        int iP = P() + i11;
                        int iP2 = P();
                        int iP3 = literalByteString.P() + i10;
                        while (iP2 < iP) {
                            if (bArr[iP2] != bArr2[iP3]) {
                                return false;
                            }
                            iP2++;
                            iP3++;
                        }
                        return true;
                    }
                    return byteString.D(i10, i12).equals(D(0, i11));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + byteString.size());
            }
            throw new IllegalArgumentException("Length too large: " + i11 + size());
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean v() {
            int iP = P();
            return Utf8.u(this.bytes, iP, size() + iP);
        }
    }

    public static final class Output extends OutputStream {
        private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
        private byte[] buffer;
        private int bufferPos;
        private final ArrayList<ByteString> flushedBuffers;
        private int flushedBuffersTotalBytes;
        private final int initialCapacity;

        public synchronized int d() {
            return this.flushedBuffersTotalBytes + this.bufferPos;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(d()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i10) {
            try {
                if (this.bufferPos == this.buffer.length) {
                    a(1);
                }
                byte[] bArr = this.buffer;
                int i11 = this.bufferPos;
                this.bufferPos = i11 + 1;
                bArr[i11] = (byte) i10;
            } catch (Throwable th) {
                throw th;
            }
        }

        private void a(int i10) {
            this.flushedBuffers.add(new LiteralByteString(this.buffer));
            int length = this.flushedBuffersTotalBytes + this.buffer.length;
            this.flushedBuffersTotalBytes = length;
            this.buffer = new byte[Math.max(this.initialCapacity, Math.max(i10, length >>> 1))];
            this.bufferPos = 0;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i10, int i11) {
            try {
                byte[] bArr2 = this.buffer;
                int length = bArr2.length;
                int i12 = this.bufferPos;
                if (i11 <= length - i12) {
                    System.arraycopy(bArr, i10, bArr2, i12, i11);
                    this.bufferPos += i11;
                } else {
                    int length2 = bArr2.length - i12;
                    System.arraycopy(bArr, i10, bArr2, i12, length2);
                    int i13 = i11 - length2;
                    a(i13);
                    System.arraycopy(bArr, i10 + length2, this.buffer, 0, i13);
                    this.bufferPos = i13;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static final class SystemByteArrayCopier implements ByteArrayCopier {
        private SystemByteArrayCopier() {
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int F(byte b7) {
        return b7 & 255;
    }

    public static ByteString m(byte[] bArr) {
        return p(bArr, 0, bArr.length);
    }

    protected abstract int A(int i10, int i11, int i12);

    protected final int B() {
        return this.hash;
    }

    public abstract ByteString D(int i10, int i11);

    protected abstract String H(Charset charset);

    abstract void M(ByteOutput byteOutput) throws IOException;

    abstract void N(ByteOutput byteOutput) throws IOException;

    public abstract ByteBuffer c();

    public abstract byte d(int i10);

    public abstract boolean equals(Object obj);

    protected abstract void s(byte[] bArr, int i10, int i11, int i12);

    public abstract int size();

    protected abstract int t();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    abstract byte u(int i10);

    public abstract boolean v();

    public abstract CodedInputStream y();

    protected abstract int z(int i10, int i11, int i12);

    static abstract class LeafByteString extends ByteString {
        abstract boolean O(ByteString byteString, int i10, int i11);

        @Override // androidx.datastore.preferences.protobuf.ByteString
        protected final int t() {
            return 0;
        }

        LeafByteString() {
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        void N(ByteOutput byteOutput) throws IOException {
            M(byteOutput);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }
    }

    static {
        byteArrayCopier = Android.c() ? new SystemByteArrayCopier() : new ArraysByteArrayCopier();
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new Comparator<ByteString>() { // from class: androidx.datastore.preferences.protobuf.ByteString.2
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(ByteString byteString, ByteString byteString2) {
                ByteIterator it = byteString.iterator();
                ByteIterator it2 = byteString2.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    int iCompare = Integer.compare(ByteString.F(it.nextByte()), ByteString.F(it2.nextByte()));
                    if (iCompare != 0) {
                        return iCompare;
                    }
                }
                return Integer.compare(byteString.size(), byteString2.size());
            }
        };
    }

    static ByteString K(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    static ByteString L(byte[] bArr, int i10, int i11) {
        return new BoundedByteString(bArr, i10, i11);
    }

    static void e(int i10, int i11) {
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
    }

    static int f(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    public static ByteString p(byte[] bArr, int i10, int i11) {
        f(i10, i10 + i11, bArr.length);
        return new LiteralByteString(byteArrayCopier.copyFrom(bArr, i10, i11));
    }

    public static ByteString q(String str) {
        return new LiteralByteString(str.getBytes(Internal.UTF_8));
    }

    static CodedBuilder x(int i10) {
        return new CodedBuilder(i10);
    }

    public final String I() {
        return G(Internal.UTF_8);
    }

    public final int hashCode() {
        int iZ = this.hash;
        if (iZ == 0) {
            int size = size();
            iZ = z(size, 0, size);
            if (iZ == 0) {
                iZ = 1;
            }
            this.hash = iZ;
        }
        return iZ;
    }

    @Deprecated
    public final void r(byte[] bArr, int i10, int i11, int i12) {
        f(i10, i10 + i12, size());
        f(i11, i11 + i12, bArr.length);
        if (i12 > 0) {
            s(bArr, i10, i11, i12);
        }
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public ByteIterator iterator() {
        return new AbstractByteIterator() { // from class: androidx.datastore.preferences.protobuf.ByteString.1
            private final int limit;
            private int position = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.position < this.limit;
            }

            {
                this.limit = ByteString.this.size();
            }

            @Override // androidx.datastore.preferences.protobuf.ByteString.ByteIterator
            public byte nextByte() {
                int i10 = this.position;
                if (i10 >= this.limit) {
                    throw new NoSuchElementException();
                }
                this.position = i10 + 1;
                return ByteString.this.u(i10);
            }
        };
    }

    ByteString() {
    }

    static ByteString J(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return L(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
        }
        return new NioByteString(byteBuffer);
    }

    public static ByteString g(ByteBuffer byteBuffer) {
        return j(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString j(ByteBuffer byteBuffer, int i10) {
        f(0, i10, byteBuffer.remaining());
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr);
        return new LiteralByteString(bArr);
    }

    public final ByteString C(int i10) {
        return D(i10, size());
    }

    public final byte[] E() {
        int size = size();
        if (size == 0) {
            return Internal.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        s(bArr, 0, 0, size);
        return bArr;
    }

    public final String G(Charset charset) {
        if (size() == 0) {
            return "";
        }
        return H(charset);
    }

    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }
}

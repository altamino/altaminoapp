package androidx.datastore.preferences.protobuf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
final class RopeByteString extends ByteString {
    static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    private static final class PieceIterator implements Iterator<ByteString.LeafByteString> {
        private final ArrayDeque<RopeByteString> breadCrumbs;
        private ByteString.LeafByteString next;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        private PieceIterator(ByteString byteString) {
            if (!(byteString instanceof RopeByteString)) {
                this.breadCrumbs = null;
                this.next = (ByteString.LeafByteString) byteString;
                return;
            }
            RopeByteString ropeByteString = (RopeByteString) byteString;
            ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.t());
            this.breadCrumbs = arrayDeque;
            arrayDeque.push(ropeByteString);
            this.next = a(ropeByteString.left);
        }

        private ByteString.LeafByteString a(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.breadCrumbs.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        private ByteString.LeafByteString b() {
            ByteString.LeafByteString leafByteStringA;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.breadCrumbs;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                leafByteStringA = a(this.breadCrumbs.pop().right);
            } while (leafByteStringA.isEmpty());
            return leafByteStringA;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.next;
            if (leafByteString == null) {
                throw new NoSuchElementException();
            }
            this.next = b();
            return leafByteString;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private class RopeInputStream extends InputStream {
        private ByteString.LeafByteString currentPiece;
        private int currentPieceIndex;
        private int currentPieceOffsetInRope;
        private int currentPieceSize;
        private int mark;
        private PieceIterator pieceIterator;

        private int i(byte[] bArr, int i10, int i11) {
            int i12 = i11;
            while (i12 > 0) {
                d();
                if (this.currentPiece == null) {
                    if (i12 != i11) {
                        break;
                    }
                    return -1;
                }
                int iMin = Math.min(this.currentPieceSize - this.currentPieceIndex, i12);
                if (bArr != null) {
                    this.currentPiece.r(bArr, this.currentPieceIndex, i10, iMin);
                    i10 += iMin;
                }
                this.currentPieceIndex += iMin;
                i12 -= iMin;
            }
            return i11 - i12;
        }

        @Override // java.io.InputStream
        public void mark(int i10) {
            this.mark = this.currentPieceOffsetInRope + this.currentPieceIndex;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) {
            bArr.getClass();
            if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            return i(bArr, i10, i11);
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            h();
            i(null, 0, this.mark);
        }

        public RopeInputStream() {
            h();
        }

        private void d() {
            if (this.currentPiece != null) {
                int i10 = this.currentPieceIndex;
                int i11 = this.currentPieceSize;
                if (i10 == i11) {
                    this.currentPieceOffsetInRope += i11;
                    this.currentPieceIndex = 0;
                    if (!this.pieceIterator.hasNext()) {
                        this.currentPiece = null;
                        this.currentPieceSize = 0;
                    } else {
                        ByteString.LeafByteString next = this.pieceIterator.next();
                        this.currentPiece = next;
                        this.currentPieceSize = next.size();
                    }
                }
            }
        }

        private void h() {
            PieceIterator pieceIterator = new PieceIterator(RopeByteString.this);
            this.pieceIterator = pieceIterator;
            ByteString.LeafByteString next = pieceIterator.next();
            this.currentPiece = next;
            this.currentPieceSize = next.size();
            this.currentPieceIndex = 0;
            this.currentPieceOffsetInRope = 0;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return RopeByteString.this.size() - (this.currentPieceOffsetInRope + this.currentPieceIndex);
        }

        @Override // java.io.InputStream
        public long skip(long j6) {
            if (j6 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j6 > 2147483647L) {
                j6 = 2147483647L;
            }
            return i(null, 0, (int) j6);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            d();
            ByteString.LeafByteString leafByteString = this.currentPiece;
            if (leafByteString == null) {
                return -1;
            }
            int i10 = this.currentPieceIndex;
            this.currentPieceIndex = i10 + 1;
            return leafByteString.d(i10) & 255;
        }
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
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int iB = B();
        int iB2 = byteString.B();
        if (iB == 0 || iB2 == 0 || iB == iB2) {
            return Q(byteString);
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public int size() {
        return this.totalLength;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int t() {
        return this.treeDepth;
    }

    private static class Balancer {
        private final ArrayDeque<ByteString> prefixesStack = new ArrayDeque<>();

        private Balancer() {
        }
    }

    private boolean Q(ByteString byteString) {
        ByteString.LeafByteString next;
        PieceIterator pieceIterator = new PieceIterator(this);
        ByteString.LeafByteString next2 = pieceIterator.next();
        PieceIterator pieceIterator2 = new PieceIterator(byteString);
        ByteString.LeafByteString next3 = pieceIterator2.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int size = next2.size() - i10;
            int size2 = next3.size() - i11;
            int iMin = Math.min(size, size2);
            if (!(i10 == 0 ? next2.O(next3, i11, iMin) : next3.O(next2, i10, iMin))) {
                return false;
            }
            i12 += iMin;
            int i13 = this.totalLength;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                next = pieceIterator.next();
                i10 = 0;
            } else {
                i10 += iMin;
            }
            if (iMin == size2) {
                next2 = next2;
                next2 = next;
                next3 = pieceIterator2.next();
                i11 = 0;
            } else {
                next2 = next2;
                next2 = next;
                i11 += iMin;
            }
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int A(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            return this.left.A(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.right.A(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.right.A(this.left.A(i10, i11, i15), 0, i12 - i15);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteString D(int i10, int i11) {
        int iF = ByteString.f(i10, i11, this.totalLength);
        if (iF == 0) {
            return ByteString.EMPTY;
        }
        if (iF == this.totalLength) {
            return this;
        }
        int i12 = this.leftLength;
        if (i11 <= i12) {
            return this.left.D(i10, i11);
        }
        return i10 >= i12 ? this.right.D(i10 - i12, i11 - i12) : new RopeByteString(this.left.C(i10), this.right.D(0, i11 - this.leftLength));
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected String H(Charset charset) {
        return new String(E(), charset);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void M(ByteOutput byteOutput) throws IOException {
        this.left.M(byteOutput);
        this.right.M(byteOutput);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    void N(ByteOutput byteOutput) throws IOException {
        this.right.N(byteOutput);
        this.left.N(byteOutput);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public byte d(int i10) {
        ByteString.e(i10, this.totalLength);
        return u(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected void s(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            this.left.s(bArr, i10, i11, i12);
        } else {
            if (i10 >= i14) {
                this.right.s(bArr, i10 - i14, i11, i12);
                return;
            }
            int i15 = i14 - i10;
            this.left.s(bArr, i10, i11, i15);
            this.right.s(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    byte u(int i10) {
        int i11 = this.leftLength;
        return i10 < i11 ? this.left.u(i10) : this.right.u(i10 - i11);
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public boolean v() {
        int iA = this.left.A(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.A(iA, 0, byteString.size()) == 0;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString, java.lang.Iterable
    /* JADX INFO: renamed from: w */
    public ByteString.ByteIterator iterator() {
        return new ByteString.AbstractByteIterator() { // from class: androidx.datastore.preferences.protobuf.RopeByteString.1
            ByteString.ByteIterator current = b();
            final PieceIterator pieces;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.current != null;
            }

            {
                this.pieces = new PieceIterator(RopeByteString.this);
            }

            private ByteString.ByteIterator b() {
                if (this.pieces.hasNext()) {
                    return this.pieces.next().iterator();
                }
                return null;
            }

            @Override // androidx.datastore.preferences.protobuf.ByteString.ByteIterator
            public byte nextByte() {
                ByteString.ByteIterator byteIterator = this.current;
                if (byteIterator == null) {
                    throw new NoSuchElementException();
                }
                byte bNextByte = byteIterator.nextByte();
                if (!this.current.hasNext()) {
                    this.current = b();
                }
                return bNextByte;
            }
        };
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public CodedInputStream y() {
        return CodedInputStream.f(new RopeInputStream());
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    protected int z(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            return this.left.z(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.right.z(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.right.z(this.left.z(i10, i11, i15), 0, i12 - i15);
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.t(), byteString2.t()) + 1;
    }

    @Override // androidx.datastore.preferences.protobuf.ByteString
    public ByteBuffer c() {
        return ByteBuffer.wrap(E()).asReadOnlyBuffer();
    }

    Object writeReplace() {
        return ByteString.K(E());
    }
}

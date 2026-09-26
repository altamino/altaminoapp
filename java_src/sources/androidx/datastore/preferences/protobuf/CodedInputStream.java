package androidx.datastore.preferences.protobuf;

import com.google.common.base.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CodedInputStream {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    private static final int DEFAULT_RECURSION_LIMIT = 100;
    private static final int DEFAULT_SIZE_LIMIT = Integer.MAX_VALUE;
    int recursionDepth;
    int recursionLimit;
    private boolean shouldDiscardUnknownFields;
    int sizeLimit;
    CodedInputStreamReader wrapper;

    private static final class ArrayDecoder extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private int limit;
        private int pos;
        private int startPos;

        private void N() {
            int i10 = this.limit + this.bufferSizeAfterLimit;
            this.limit = i10;
            int i11 = i10 - this.startPos;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterLimit = i13;
            this.limit = i10 - i13;
        }

        private void R() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        private void S() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (G() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int d() {
            return this.pos - this.startPos;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean e() throws IOException {
            return this.pos == this.limit;
        }

        private ArrayDecoder(byte[] bArr, int i10, int i11, boolean z6) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = bArr;
            this.limit = i11 + i10;
            this.pos = i10;
            this.startPos = i10;
            this.immutable = z6;
        }

        private void Q() throws IOException {
            if (this.limit - this.pos >= 10) {
                R();
            } else {
                S();
            }
        }

        public byte G() throws IOException {
            int i10 = this.pos;
            if (i10 == this.limit) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        public byte[] H(int i10) throws IOException {
            if (i10 > 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.pos = i13;
                    return Arrays.copyOfRange(this.buffer, i12, i13);
                }
            }
            if (i10 > 0) {
                throw InvalidProtocolBufferException.k();
            }
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            throw InvalidProtocolBufferException.f();
        }

        public int I() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 < 4) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long J() throws IOException {
            int i10 = this.pos;
            if (this.limit - i10 < 8) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        public int K() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.limit;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b7 = bArr[i11];
                if (b7 >= 0) {
                    this.pos = i13;
                    return b7;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b7;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << c.SO) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << c.NAK);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b10 = bArr[i18];
                                int i20 = (i19 ^ (b10 << c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) M();
        }

        public long L() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10 = this.pos;
            int i11 = this.limit;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b7 = bArr[i10];
                if (b7 >= 0) {
                    this.pos = i12;
                    return b7;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b7;
                    if (i14 < 0) {
                        j6 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << c.SO) ^ i14;
                        if (i16 >= 0) {
                            j6 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << c.NAK);
                            if (i18 < 0) {
                                long j12 = (-2080896) ^ i18;
                                i13 = i17;
                                j6 = j12;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (((long) bArr[i17]) << 28);
                                if (j14 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (((long) bArr[i13]) << 35);
                                    if (j15 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (((long) bArr[i19]) << 42);
                                        if (j14 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (((long) bArr[i13]) << 49);
                                            if (j15 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j6 = j16;
                                            }
                                        }
                                    }
                                    j6 = j15 ^ j10;
                                    i13 = i19;
                                }
                                j6 = j14 ^ j11;
                            }
                        }
                    }
                    this.pos = i13;
                    return j6;
                }
            }
            return M();
        }

        long M() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bG = G();
                j6 |= ((long) (bG & 127)) << i10;
                if ((bG & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        public void P(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.limit;
                int i12 = this.pos;
                if (i10 <= i11 - i12) {
                    this.pos = i12 + i10;
                    return;
                }
            }
            if (i10 >= 0) {
                throw InvalidProtocolBufferException.k();
            }
            throw InvalidProtocolBufferException.f();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void l(int i10) {
            this.currentLimit = i10;
            N();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int m(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int iD = i10 + d();
            int i11 = this.currentLimit;
            if (iD > i11) {
                throw InvalidProtocolBufferException.k();
            }
            this.currentLimit = iD;
            N();
            return i11;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String A() throws IOException {
            int iK = K();
            if (iK > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (iK <= i10 - i11) {
                    String str = new String(this.buffer, i11, iK, Internal.UTF_8);
                    this.pos += iK;
                    return str;
                }
            }
            if (iK == 0) {
                return "";
            }
            if (iK < 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String B() throws IOException {
            int iK = K();
            if (iK > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (iK <= i10 - i11) {
                    String strH = Utf8.h(this.buffer, i11, iK);
                    this.pos += iK;
                    return strH;
                }
            }
            if (iK == 0) {
                return "";
            }
            if (iK <= 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int C() throws IOException {
            if (e()) {
                this.lastTag = 0;
                return 0;
            }
            int iK = K();
            this.lastTag = iK;
            if (WireFormat.a(iK) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.b();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int D() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long E() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean F(int i10) throws IOException {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB != 4) {
                                if (iB == 5) {
                                    P(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.d();
                            }
                            return false;
                        }
                        O();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    P(K());
                    return true;
                }
                P(8);
                return true;
            }
            Q();
            return true;
        }

        public void O() throws IOException {
            int iC;
            do {
                iC = C();
                if (iC == 0) {
                    return;
                }
            } while (F(iC));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean n() throws IOException {
            if (L() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public ByteString o() throws IOException {
            ByteString byteStringP;
            int iK = K();
            if (iK > 0) {
                int i10 = this.limit;
                int i11 = this.pos;
                if (iK <= i10 - i11) {
                    if (this.immutable && this.enableAliasing) {
                        byteStringP = ByteString.L(this.buffer, i11, iK);
                    } else {
                        byteStringP = ByteString.p(this.buffer, i11, iK);
                    }
                    this.pos += iK;
                    return byteStringP;
                }
            }
            if (iK == 0) {
                return ByteString.EMPTY;
            }
            return ByteString.K(H(iK));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public double p() throws IOException {
            return Double.longBitsToDouble(J());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int q() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int r() throws IOException {
            return I();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long s() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public float t() throws IOException {
            return Float.intBitsToFloat(I());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int u() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long v() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int w() throws IOException {
            return I();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long x() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int y() throws IOException {
            return CodedInputStream.b(K());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long z() throws IOException {
            return CodedInputStream.c(L());
        }
    }

    private static final class IterableDirectByteBufferDecoder extends CodedInputStream {
        private int bufferSizeAfterCurrentLimit;
        private long currentAddress;
        private ByteBuffer currentByteBuffer;
        private long currentByteBufferLimit;
        private long currentByteBufferPos;
        private long currentByteBufferStartPos;
        private int currentLimit;
        private boolean enableAliasing;
        private boolean immutable;
        private Iterable<ByteBuffer> input;
        private Iterator<ByteBuffer> iterator;
        private int lastTag;
        private int startOffset;
        private int totalBufferSize;
        private int totalBytesRead;

        private long G() {
            return this.currentByteBufferLimit - this.currentByteBufferPos;
        }

        private void P() {
            int i10 = this.totalBufferSize + this.bufferSizeAfterCurrentLimit;
            this.totalBufferSize = i10;
            int i11 = i10 - this.startOffset;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterCurrentLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterCurrentLimit = i13;
            this.totalBufferSize = i10 - i13;
        }

        private int Q() {
            return (int) ((((long) (this.totalBufferSize - this.totalBytesRead)) - this.currentByteBufferPos) + this.currentByteBufferStartPos);
        }

        private void T() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (I() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int d() {
            return (int) ((((long) (this.totalBytesRead - this.startOffset)) + this.currentByteBufferPos) - this.currentByteBufferStartPos);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean e() throws IOException {
            return (((long) this.totalBytesRead) + this.currentByteBufferPos) - this.currentByteBufferStartPos == ((long) this.totalBufferSize);
        }

        private void H() throws InvalidProtocolBufferException {
            if (!this.iterator.hasNext()) {
                throw InvalidProtocolBufferException.k();
            }
            V();
        }

        private void J(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 < 0 || i11 > Q()) {
                if (i11 > 0) {
                    throw InvalidProtocolBufferException.k();
                }
                if (i11 != 0) {
                    throw InvalidProtocolBufferException.f();
                }
                return;
            }
            int i12 = i11;
            while (i12 > 0) {
                if (G() == 0) {
                    H();
                }
                int iMin = Math.min(i12, (int) G());
                long j6 = iMin;
                UnsafeUtil.n(this.currentByteBufferPos, bArr, (i11 - i12) + i10, j6);
                i12 -= iMin;
                this.currentByteBufferPos += j6;
            }
        }

        private ByteBuffer U(int i10, int i11) throws IOException {
            int iPosition = this.currentByteBuffer.position();
            int iLimit = this.currentByteBuffer.limit();
            try {
                try {
                    this.currentByteBuffer.position(i10);
                    this.currentByteBuffer.limit(i11);
                    ByteBuffer byteBufferSlice = this.currentByteBuffer.slice();
                    this.currentByteBuffer.position(iPosition);
                    this.currentByteBuffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.k();
                }
            } catch (Throwable th) {
                this.currentByteBuffer.position(iPosition);
                this.currentByteBuffer.limit(iLimit);
                throw th;
            }
        }

        private void V() {
            ByteBuffer next = this.iterator.next();
            this.currentByteBuffer = next;
            this.totalBytesRead += (int) (this.currentByteBufferPos - this.currentByteBufferStartPos);
            long jPosition = next.position();
            this.currentByteBufferPos = jPosition;
            this.currentByteBufferStartPos = jPosition;
            this.currentByteBufferLimit = this.currentByteBuffer.limit();
            long jI = UnsafeUtil.i(this.currentByteBuffer);
            this.currentAddress = jI;
            this.currentByteBufferPos += jI;
            this.currentByteBufferStartPos += jI;
            this.currentByteBufferLimit += jI;
        }

        public long L() throws IOException {
            long jI;
            byte bI;
            if (G() >= 8) {
                long j6 = this.currentByteBufferPos;
                this.currentByteBufferPos = 8 + j6;
                jI = (((long) UnsafeUtil.v(j6)) & 255) | ((((long) UnsafeUtil.v(1 + j6)) & 255) << 8) | ((((long) UnsafeUtil.v(2 + j6)) & 255) << 16) | ((((long) UnsafeUtil.v(3 + j6)) & 255) << 24) | ((((long) UnsafeUtil.v(4 + j6)) & 255) << 32) | ((((long) UnsafeUtil.v(5 + j6)) & 255) << 40) | ((((long) UnsafeUtil.v(6 + j6)) & 255) << 48);
                bI = UnsafeUtil.v(j6 + 7);
            } else {
                jI = (((long) I()) & 255) | ((((long) I()) & 255) << 8) | ((((long) I()) & 255) << 16) | ((((long) I()) & 255) << 24) | ((((long) I()) & 255) << 32) | ((((long) I()) & 255) << 40) | ((((long) I()) & 255) << 48);
                bI = I();
            }
            return ((((long) bI) & 255) << 56) | jI;
        }

        public int M() throws IOException {
            int i10;
            long j6 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j6) {
                long j10 = j6 + 1;
                byte bV = UnsafeUtil.v(j6);
                if (bV >= 0) {
                    this.currentByteBufferPos++;
                    return bV;
                }
                if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j11 = 2 + j6;
                    int iV = (UnsafeUtil.v(j10) << 7) ^ bV;
                    if (iV < 0) {
                        i10 = iV ^ (-128);
                    } else {
                        long j12 = 3 + j6;
                        int iV2 = (UnsafeUtil.v(j11) << c.SO) ^ iV;
                        if (iV2 >= 0) {
                            i10 = iV2 ^ 16256;
                        } else {
                            long j13 = 4 + j6;
                            int iV3 = iV2 ^ (UnsafeUtil.v(j12) << c.NAK);
                            if (iV3 < 0) {
                                i10 = (-2080896) ^ iV3;
                            } else {
                                j12 = 5 + j6;
                                byte bV2 = UnsafeUtil.v(j13);
                                int i11 = (iV3 ^ (bV2 << c.FS)) ^ 266354560;
                                if (bV2 < 0) {
                                    j13 = 6 + j6;
                                    if (UnsafeUtil.v(j12) < 0) {
                                        j12 = 7 + j6;
                                        if (UnsafeUtil.v(j13) < 0) {
                                            j13 = 8 + j6;
                                            if (UnsafeUtil.v(j12) < 0) {
                                                j12 = 9 + j6;
                                                if (UnsafeUtil.v(j13) < 0) {
                                                    long j14 = j6 + 10;
                                                    if (UnsafeUtil.v(j12) >= 0) {
                                                        i10 = i11;
                                                        j11 = j14;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                            j11 = j13;
                        }
                        j11 = j12;
                    }
                    this.currentByteBufferPos = j11;
                    return i10;
                }
            }
            return (int) O();
        }

        public long N() throws IOException {
            long j6;
            long j10;
            long j11;
            long j12 = this.currentByteBufferPos;
            if (this.currentByteBufferLimit != j12) {
                long j13 = j12 + 1;
                byte bV = UnsafeUtil.v(j12);
                if (bV >= 0) {
                    this.currentByteBufferPos++;
                    return bV;
                }
                if (this.currentByteBufferLimit - this.currentByteBufferPos >= 10) {
                    long j14 = 2 + j12;
                    int iV = (UnsafeUtil.v(j13) << 7) ^ bV;
                    if (iV < 0) {
                        j6 = iV ^ (-128);
                    } else {
                        long j15 = 3 + j12;
                        int iV2 = (UnsafeUtil.v(j14) << c.SO) ^ iV;
                        if (iV2 >= 0) {
                            j6 = iV2 ^ 16256;
                            j14 = j15;
                        } else {
                            long j16 = 4 + j12;
                            int iV3 = iV2 ^ (UnsafeUtil.v(j15) << c.NAK);
                            if (iV3 < 0) {
                                j6 = (-2080896) ^ iV3;
                                j14 = j16;
                            } else {
                                long j17 = 5 + j12;
                                long jV = (((long) UnsafeUtil.v(j16)) << 28) ^ ((long) iV3);
                                if (jV >= 0) {
                                    j11 = 266354560;
                                } else {
                                    long j18 = 6 + j12;
                                    long jV2 = jV ^ (((long) UnsafeUtil.v(j17)) << 35);
                                    if (jV2 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j17 = 7 + j12;
                                        jV = jV2 ^ (((long) UnsafeUtil.v(j18)) << 42);
                                        if (jV >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j18 = 8 + j12;
                                            jV2 = jV ^ (((long) UnsafeUtil.v(j17)) << 49);
                                            if (jV2 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                j17 = 9 + j12;
                                                long jV3 = (jV2 ^ (((long) UnsafeUtil.v(j18)) << 56)) ^ 71499008037633920L;
                                                if (jV3 < 0) {
                                                    long j19 = j12 + 10;
                                                    if (UnsafeUtil.v(j17) >= 0) {
                                                        j6 = jV3;
                                                        j14 = j19;
                                                    }
                                                } else {
                                                    j6 = jV3;
                                                    j14 = j17;
                                                }
                                            }
                                        }
                                    }
                                    j6 = j10 ^ jV2;
                                    j14 = j18;
                                }
                                j6 = j11 ^ jV;
                                j14 = j17;
                            }
                        }
                    }
                    this.currentByteBufferPos = j14;
                    return j6;
                }
            }
            return O();
        }

        long O() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bI = I();
                j6 |= ((long) (bI & 127)) << i10;
                if ((bI & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        public void S(int i10) throws IOException {
            if (i10 < 0 || i10 > (((long) (this.totalBufferSize - this.totalBytesRead)) - this.currentByteBufferPos) + this.currentByteBufferStartPos) {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.k();
                }
                throw InvalidProtocolBufferException.f();
            }
            while (i10 > 0) {
                if (G() == 0) {
                    H();
                }
                int iMin = Math.min(i10, (int) G());
                i10 -= iMin;
                this.currentByteBufferPos += (long) iMin;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void l(int i10) {
            this.currentLimit = i10;
            P();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int m(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int iD = i10 + d();
            int i11 = this.currentLimit;
            if (iD > i11) {
                throw InvalidProtocolBufferException.k();
            }
            this.currentLimit = iD;
            P();
            return i11;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String A() throws IOException {
            int iM = M();
            if (iM > 0) {
                long j6 = iM;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    byte[] bArr = new byte[iM];
                    UnsafeUtil.n(j11, bArr, 0L, j6);
                    String str = new String(bArr, Internal.UTF_8);
                    this.currentByteBufferPos += j6;
                    return str;
                }
            }
            if (iM > 0 && iM <= Q()) {
                byte[] bArr2 = new byte[iM];
                J(bArr2, 0, iM);
                return new String(bArr2, Internal.UTF_8);
            }
            if (iM == 0) {
                return "";
            }
            if (iM < 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String B() throws IOException {
            int iM = M();
            if (iM > 0) {
                long j6 = iM;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    String strG = Utf8.g(this.currentByteBuffer, (int) (j11 - this.currentByteBufferStartPos), iM);
                    this.currentByteBufferPos += j6;
                    return strG;
                }
            }
            if (iM >= 0 && iM <= Q()) {
                byte[] bArr = new byte[iM];
                J(bArr, 0, iM);
                return Utf8.h(bArr, 0, iM);
            }
            if (iM == 0) {
                return "";
            }
            if (iM <= 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int C() throws IOException {
            if (e()) {
                this.lastTag = 0;
                return 0;
            }
            int iM = M();
            this.lastTag = iM;
            if (WireFormat.a(iM) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.b();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int D() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long E() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean F(int i10) throws IOException {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB != 4) {
                                if (iB == 5) {
                                    S(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.d();
                            }
                            return false;
                        }
                        R();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    S(M());
                    return true;
                }
                S(8);
                return true;
            }
            T();
            return true;
        }

        public byte I() throws IOException {
            if (G() == 0) {
                H();
            }
            long j6 = this.currentByteBufferPos;
            this.currentByteBufferPos = 1 + j6;
            return UnsafeUtil.v(j6);
        }

        public int K() throws IOException {
            if (G() >= 4) {
                long j6 = this.currentByteBufferPos;
                this.currentByteBufferPos = 4 + j6;
                return ((UnsafeUtil.v(j6 + 3) & 255) << 24) | (UnsafeUtil.v(j6) & 255) | ((UnsafeUtil.v(1 + j6) & 255) << 8) | ((UnsafeUtil.v(2 + j6) & 255) << 16);
            }
            return (I() & 255) | ((I() & 255) << 8) | ((I() & 255) << 16) | ((I() & 255) << 24);
        }

        public void R() throws IOException {
            int iC;
            do {
                iC = C();
                if (iC == 0) {
                    return;
                }
            } while (F(iC));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean n() throws IOException {
            if (N() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public ByteString o() throws IOException {
            int iM = M();
            if (iM > 0) {
                long j6 = iM;
                long j10 = this.currentByteBufferLimit;
                long j11 = this.currentByteBufferPos;
                if (j6 <= j10 - j11) {
                    if (this.immutable && this.enableAliasing) {
                        int i10 = (int) (j11 - this.currentAddress);
                        ByteString byteStringJ = ByteString.J(U(i10, iM + i10));
                        this.currentByteBufferPos += j6;
                        return byteStringJ;
                    }
                    byte[] bArr = new byte[iM];
                    UnsafeUtil.n(j11, bArr, 0L, j6);
                    this.currentByteBufferPos += j6;
                    return ByteString.K(bArr);
                }
            }
            if (iM > 0 && iM <= Q()) {
                byte[] bArr2 = new byte[iM];
                J(bArr2, 0, iM);
                return ByteString.K(bArr2);
            }
            if (iM == 0) {
                return ByteString.EMPTY;
            }
            if (iM < 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public double p() throws IOException {
            return Double.longBitsToDouble(L());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int q() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int r() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long s() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public float t() throws IOException {
            return Float.intBitsToFloat(K());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int u() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long v() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int w() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long x() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int y() throws IOException {
            return CodedInputStream.b(M());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long z() throws IOException {
            return CodedInputStream.c(N());
        }
    }

    private static final class StreamDecoder extends CodedInputStream {
        private final byte[] buffer;
        private int bufferSize;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private final InputStream input;
        private int lastTag;
        private int pos;
        private RefillCallback refillCallback;
        private int totalBytesRetired;

        private interface RefillCallback {
            void onRefill();
        }

        private class SkippedDataSink implements RefillCallback {
            private ByteArrayOutputStream byteArrayStream;
            private int lastPos;
            final /* synthetic */ StreamDecoder this$0;

            @Override // androidx.datastore.preferences.protobuf.CodedInputStream.StreamDecoder.RefillCallback
            public void onRefill() {
                if (this.byteArrayStream == null) {
                    this.byteArrayStream = new ByteArrayOutputStream();
                }
                this.byteArrayStream.write(this.this$0.buffer, this.lastPos, this.this$0.pos - this.lastPos);
                this.lastPos = 0;
            }
        }

        private void S() {
            int i10 = this.bufferSize + this.bufferSizeAfterLimit;
            this.bufferSize = i10;
            int i11 = this.totalBytesRetired + i10;
            int i12 = this.currentLimit;
            if (i11 <= i12) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i13 = i11 - i12;
            this.bufferSizeAfterLimit = i13;
            this.bufferSize = i10 - i13;
        }

        private void Y() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.buffer;
                int i11 = this.pos;
                this.pos = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        private void Z() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (J() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int d() {
            return this.totalBytesRetired + this.pos;
        }

        private StreamDecoder(InputStream inputStream, int i10) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.refillCallback = null;
            Internal.b(inputStream, "input");
            this.input = inputStream;
            this.buffer = new byte[i10];
            this.bufferSize = 0;
            this.pos = 0;
            this.totalBytesRetired = 0;
        }

        private byte[] L(int i10) throws IOException {
            if (i10 == 0) {
                return Internal.EMPTY_BYTE_ARRAY;
            }
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int i11 = this.totalBytesRetired;
            int i12 = this.pos;
            int i13 = i11 + i12 + i10;
            if (i13 - this.sizeLimit > 0) {
                throw InvalidProtocolBufferException.j();
            }
            int i14 = this.currentLimit;
            if (i13 > i14) {
                V((i14 - i11) - i12);
                throw InvalidProtocolBufferException.k();
            }
            int i15 = this.bufferSize - i12;
            int i16 = i10 - i15;
            if (i16 >= 4096 && i16 > this.input.available()) {
                return null;
            }
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, this.pos, bArr, 0, i15);
            this.totalBytesRetired += this.bufferSize;
            this.pos = 0;
            this.bufferSize = 0;
            while (i15 < i10) {
                int i17 = this.input.read(bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw InvalidProtocolBufferException.k();
                }
                this.totalBytesRetired += i17;
                i15 += i17;
            }
            return bArr;
        }

        private List<byte[]> M(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int iMin = Math.min(i10, 4096);
                byte[] bArr = new byte[iMin];
                int i11 = 0;
                while (i11 < iMin) {
                    int i12 = this.input.read(bArr, i11, iMin - i11);
                    if (i12 == -1) {
                        throw InvalidProtocolBufferException.k();
                    }
                    this.totalBytesRetired += i12;
                    i11 += i12;
                }
                i10 -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void W(int i10) throws IOException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int i11 = this.totalBytesRetired;
            int i12 = this.pos;
            int i13 = i11 + i12 + i10;
            int i14 = this.currentLimit;
            if (i13 > i14) {
                V((i14 - i11) - i12);
                throw InvalidProtocolBufferException.k();
            }
            int i15 = 0;
            if (this.refillCallback == null) {
                this.totalBytesRetired = i11 + i12;
                int i16 = this.bufferSize - i12;
                this.bufferSize = 0;
                this.pos = 0;
                i15 = i16;
                while (i15 < i10) {
                    try {
                        long j6 = i10 - i15;
                        long jSkip = this.input.skip(j6);
                        if (jSkip < 0 || jSkip > j6) {
                            throw new IllegalStateException(this.input.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i15 += (int) jSkip;
                        }
                    } finally {
                        this.totalBytesRetired += i15;
                        S();
                    }
                }
            }
            if (i15 >= i10) {
                return;
            }
            int i17 = this.bufferSize;
            int i18 = i17 - this.pos;
            this.pos = i17;
            T(1);
            while (true) {
                int i19 = i10 - i18;
                int i20 = this.bufferSize;
                if (i19 <= i20) {
                    this.pos = i19;
                    return;
                } else {
                    i18 += i20;
                    this.pos = i20;
                    T(1);
                }
            }
        }

        private void X() throws IOException {
            if (this.bufferSize - this.pos >= 10) {
                Y();
            } else {
                Z();
            }
        }

        private boolean a0(int i10) throws IOException {
            int i11 = this.pos;
            if (i11 + i10 <= this.bufferSize) {
                throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
            }
            int i12 = this.sizeLimit;
            int i13 = this.totalBytesRetired;
            if (i10 > (i12 - i13) - i11 || i13 + i11 + i10 > this.currentLimit) {
                return false;
            }
            RefillCallback refillCallback = this.refillCallback;
            if (refillCallback != null) {
                refillCallback.onRefill();
            }
            int i14 = this.pos;
            if (i14 > 0) {
                int i15 = this.bufferSize;
                if (i15 > i14) {
                    byte[] bArr = this.buffer;
                    System.arraycopy(bArr, i14, bArr, 0, i15 - i14);
                }
                this.totalBytesRetired += i14;
                this.bufferSize -= i14;
                this.pos = 0;
            }
            InputStream inputStream = this.input;
            byte[] bArr2 = this.buffer;
            int i16 = this.bufferSize;
            int i17 = inputStream.read(bArr2, i16, Math.min(bArr2.length - i16, (this.sizeLimit - this.totalBytesRetired) - i16));
            if (i17 == 0 || i17 < -1 || i17 > this.buffer.length) {
                throw new IllegalStateException(this.input.getClass() + "#read(byte[]) returned invalid result: " + i17 + "\nThe InputStream implementation is buggy.");
            }
            if (i17 <= 0) {
                return false;
            }
            this.bufferSize += i17;
            S();
            if (this.bufferSize >= i10) {
                return true;
            }
            return a0(i10);
        }

        public byte J() throws IOException {
            if (this.pos == this.bufferSize) {
                T(1);
            }
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        public int N() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 4) {
                T(4);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        public long O() throws IOException {
            int i10 = this.pos;
            if (this.bufferSize - i10 < 8) {
                T(8);
                i10 = this.pos;
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        public int P() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.bufferSize;
            if (i12 != i11) {
                byte[] bArr = this.buffer;
                int i13 = i11 + 1;
                byte b7 = bArr[i11];
                if (b7 >= 0) {
                    this.pos = i13;
                    return b7;
                }
                if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b7;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << c.SO) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << c.NAK);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b10 = bArr[i18];
                                int i20 = (i19 ^ (b10 << c.FS)) ^ 266354560;
                                if (b10 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.pos = i14;
                    return i10;
                }
            }
            return (int) R();
        }

        public long Q() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (i11 != i10) {
                byte[] bArr = this.buffer;
                int i12 = i10 + 1;
                byte b7 = bArr[i10];
                if (b7 >= 0) {
                    this.pos = i12;
                    return b7;
                }
                if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b7;
                    if (i14 < 0) {
                        j6 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << c.SO) ^ i14;
                        if (i16 >= 0) {
                            j6 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << c.NAK);
                            if (i18 < 0) {
                                long j12 = (-2080896) ^ i18;
                                i13 = i17;
                                j6 = j12;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (((long) bArr[i17]) << 28);
                                if (j14 >= 0) {
                                    j11 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (((long) bArr[i13]) << 35);
                                    if (j15 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (((long) bArr[i19]) << 42);
                                        if (j14 >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (((long) bArr[i13]) << 49);
                                            if (j15 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j6 = j16;
                                            }
                                        }
                                    }
                                    j6 = j15 ^ j10;
                                    i13 = i19;
                                }
                                j6 = j14 ^ j11;
                            }
                        }
                    }
                    this.pos = i13;
                    return j6;
                }
            }
            return R();
        }

        long R() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bJ = J();
                j6 |= ((long) (bJ & 127)) << i10;
                if ((bJ & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        public void V(int i10) throws IOException {
            int i11 = this.bufferSize;
            int i12 = this.pos;
            if (i10 > i11 - i12 || i10 < 0) {
                W(i10);
            } else {
                this.pos = i12 + i10;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean e() throws IOException {
            return this.pos == this.bufferSize && !a0(1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void l(int i10) {
            this.currentLimit = i10;
            S();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int m(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int i11 = i10 + this.totalBytesRetired + this.pos;
            int i12 = this.currentLimit;
            if (i11 > i12) {
                throw InvalidProtocolBufferException.k();
            }
            this.currentLimit = i11;
            S();
            return i12;
        }

        private ByteString I(int i10) throws IOException {
            byte[] bArrL = L(i10);
            if (bArrL != null) {
                return ByteString.m(bArrL);
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int length = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> listM = M(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, length);
            for (byte[] bArr2 : listM) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return ByteString.K(bArr);
        }

        private byte[] K(int i10, boolean z6) throws IOException {
            byte[] bArrL = L(i10);
            if (bArrL != null) {
                if (z6) {
                    return (byte[]) bArrL.clone();
                }
                return bArrL;
            }
            int i11 = this.pos;
            int i12 = this.bufferSize;
            int length = i12 - i11;
            this.totalBytesRetired += i12;
            this.pos = 0;
            this.bufferSize = 0;
            List<byte[]> listM = M(i10 - length);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.buffer, i11, bArr, 0, length);
            for (byte[] bArr2 : listM) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private void T(int i10) throws IOException {
            if (!a0(i10)) {
                if (i10 > (this.sizeLimit - this.totalBytesRetired) - this.pos) {
                    throw InvalidProtocolBufferException.j();
                }
                throw InvalidProtocolBufferException.k();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String A() throws IOException {
            int iP = P();
            if (iP > 0) {
                int i10 = this.bufferSize;
                int i11 = this.pos;
                if (iP <= i10 - i11) {
                    String str = new String(this.buffer, i11, iP, Internal.UTF_8);
                    this.pos += iP;
                    return str;
                }
            }
            if (iP == 0) {
                return "";
            }
            if (iP <= this.bufferSize) {
                T(iP);
                String str2 = new String(this.buffer, this.pos, iP, Internal.UTF_8);
                this.pos += iP;
                return str2;
            }
            return new String(K(iP, false), Internal.UTF_8);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String B() throws IOException {
            byte[] bArrK;
            int iP = P();
            int i10 = this.pos;
            int i11 = this.bufferSize;
            if (iP <= i11 - i10 && iP > 0) {
                bArrK = this.buffer;
                this.pos = i10 + iP;
            } else {
                if (iP == 0) {
                    return "";
                }
                i10 = 0;
                if (iP <= i11) {
                    T(iP);
                    bArrK = this.buffer;
                    this.pos = iP;
                } else {
                    bArrK = K(iP, false);
                }
            }
            return Utf8.h(bArrK, i10, iP);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int C() throws IOException {
            if (e()) {
                this.lastTag = 0;
                return 0;
            }
            int iP = P();
            this.lastTag = iP;
            if (WireFormat.a(iP) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.b();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int D() throws IOException {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long E() throws IOException {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean F(int i10) throws IOException {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB != 4) {
                                if (iB == 5) {
                                    V(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.d();
                            }
                            return false;
                        }
                        U();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    V(P());
                    return true;
                }
                V(8);
                return true;
            }
            X();
            return true;
        }

        public void U() throws IOException {
            int iC;
            do {
                iC = C();
                if (iC == 0) {
                    return;
                }
            } while (F(iC));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean n() throws IOException {
            if (Q() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public ByteString o() throws IOException {
            int iP = P();
            int i10 = this.bufferSize;
            int i11 = this.pos;
            if (iP <= i10 - i11 && iP > 0) {
                ByteString byteStringP = ByteString.p(this.buffer, i11, iP);
                this.pos += iP;
                return byteStringP;
            }
            if (iP == 0) {
                return ByteString.EMPTY;
            }
            return I(iP);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public double p() throws IOException {
            return Double.longBitsToDouble(O());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int q() throws IOException {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int r() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long s() throws IOException {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public float t() throws IOException {
            return Float.intBitsToFloat(N());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int u() throws IOException {
            return P();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long v() throws IOException {
            return Q();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int w() throws IOException {
            return N();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long x() throws IOException {
            return O();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int y() throws IOException {
            return CodedInputStream.b(P());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long z() throws IOException {
            return CodedInputStream.c(Q());
        }
    }

    private static final class UnsafeDirectNioDecoder extends CodedInputStream {
        private final long address;
        private final ByteBuffer buffer;
        private int bufferSizeAfterLimit;
        private int currentLimit;
        private boolean enableAliasing;
        private final boolean immutable;
        private int lastTag;
        private long limit;
        private long pos;
        private long startPos;

        private int G(long j6) {
            return (int) (j6 - this.address);
        }

        private void O() {
            long j6 = this.limit + ((long) this.bufferSizeAfterLimit);
            this.limit = j6;
            int i10 = (int) (j6 - this.startPos);
            int i11 = this.currentLimit;
            if (i10 <= i11) {
                this.bufferSizeAfterLimit = 0;
                return;
            }
            int i12 = i10 - i11;
            this.bufferSizeAfterLimit = i12;
            this.limit = j6 - ((long) i12);
        }

        private int P() {
            return (int) (this.limit - this.pos);
        }

        private void T() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j6 = this.pos;
                this.pos = 1 + j6;
                if (UnsafeUtil.v(j6) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        private void U() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (I() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int d() {
            return (int) (this.pos - this.startPos);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean e() throws IOException {
            return this.pos == this.limit;
        }

        private UnsafeDirectNioDecoder(ByteBuffer byteBuffer, boolean z6) {
            super();
            this.currentLimit = Integer.MAX_VALUE;
            this.buffer = byteBuffer;
            long jI = UnsafeUtil.i(byteBuffer);
            this.address = jI;
            this.limit = ((long) byteBuffer.limit()) + jI;
            long jPosition = jI + ((long) byteBuffer.position());
            this.pos = jPosition;
            this.startPos = jPosition;
            this.immutable = z6;
        }

        private ByteBuffer V(long j6, long j10) throws IOException {
            int iPosition = this.buffer.position();
            int iLimit = this.buffer.limit();
            try {
                try {
                    this.buffer.position(G(j6));
                    this.buffer.limit(G(j10));
                    ByteBuffer byteBufferSlice = this.buffer.slice();
                    this.buffer.position(iPosition);
                    this.buffer.limit(iLimit);
                    return byteBufferSlice;
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.k();
                }
            } catch (Throwable th) {
                this.buffer.position(iPosition);
                this.buffer.limit(iLimit);
                throw th;
            }
        }

        public byte I() throws IOException {
            long j6 = this.pos;
            if (j6 == this.limit) {
                throw InvalidProtocolBufferException.k();
            }
            this.pos = 1 + j6;
            return UnsafeUtil.v(j6);
        }

        public int J() throws IOException {
            long j6 = this.pos;
            if (this.limit - j6 < 4) {
                throw InvalidProtocolBufferException.k();
            }
            this.pos = 4 + j6;
            return ((UnsafeUtil.v(j6 + 3) & 255) << 24) | (UnsafeUtil.v(j6) & 255) | ((UnsafeUtil.v(1 + j6) & 255) << 8) | ((UnsafeUtil.v(2 + j6) & 255) << 16);
        }

        public long K() throws IOException {
            long j6 = this.pos;
            if (this.limit - j6 < 8) {
                throw InvalidProtocolBufferException.k();
            }
            this.pos = 8 + j6;
            return ((((long) UnsafeUtil.v(j6 + 7)) & 255) << 56) | (((long) UnsafeUtil.v(j6)) & 255) | ((((long) UnsafeUtil.v(1 + j6)) & 255) << 8) | ((((long) UnsafeUtil.v(2 + j6)) & 255) << 16) | ((((long) UnsafeUtil.v(3 + j6)) & 255) << 24) | ((((long) UnsafeUtil.v(4 + j6)) & 255) << 32) | ((((long) UnsafeUtil.v(5 + j6)) & 255) << 40) | ((((long) UnsafeUtil.v(6 + j6)) & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
        
            if (androidx.datastore.preferences.protobuf.UnsafeUtil.v(r3) < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public int L() throws IOException {
            int i10;
            long j6 = this.pos;
            if (this.limit != j6) {
                long j10 = 1 + j6;
                byte bV = UnsafeUtil.v(j6);
                if (bV >= 0) {
                    this.pos = j10;
                    return bV;
                }
                if (this.limit - j10 >= 9) {
                    long j11 = 2 + j6;
                    int iV = (UnsafeUtil.v(j10) << 7) ^ bV;
                    if (iV < 0) {
                        i10 = iV ^ (-128);
                    } else {
                        long j12 = 3 + j6;
                        int iV2 = iV ^ (UnsafeUtil.v(j11) << c.SO);
                        if (iV2 >= 0) {
                            i10 = iV2 ^ 16256;
                        } else {
                            j11 = 4 + j6;
                            int iV3 = iV2 ^ (UnsafeUtil.v(j12) << c.NAK);
                            if (iV3 < 0) {
                                i10 = (-2080896) ^ iV3;
                            } else {
                                j12 = 5 + j6;
                                byte bV2 = UnsafeUtil.v(j11);
                                int i11 = (iV3 ^ (bV2 << c.FS)) ^ 266354560;
                                if (bV2 < 0) {
                                    j11 = 6 + j6;
                                    if (UnsafeUtil.v(j12) < 0) {
                                        j12 = 7 + j6;
                                        if (UnsafeUtil.v(j11) < 0) {
                                            j11 = 8 + j6;
                                            if (UnsafeUtil.v(j12) < 0) {
                                                j12 = j6 + 9;
                                                if (UnsafeUtil.v(j11) < 0) {
                                                    j11 = 10 + j6;
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                        }
                        j11 = j12;
                    }
                    this.pos = j11;
                    return i10;
                }
            }
            return (int) N();
        }

        public long M() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10;
            long j12 = this.pos;
            if (this.limit != j12) {
                long j13 = 1 + j12;
                byte bV = UnsafeUtil.v(j12);
                if (bV >= 0) {
                    this.pos = j13;
                    return bV;
                }
                if (this.limit - j13 >= 9) {
                    long j14 = 2 + j12;
                    int iV = (UnsafeUtil.v(j13) << 7) ^ bV;
                    if (iV >= 0) {
                        long j15 = 3 + j12;
                        int iV2 = iV ^ (UnsafeUtil.v(j14) << c.SO);
                        if (iV2 >= 0) {
                            j6 = iV2 ^ 16256;
                            j14 = j15;
                        } else {
                            j14 = 4 + j12;
                            int iV3 = iV2 ^ (UnsafeUtil.v(j15) << c.NAK);
                            if (iV3 < 0) {
                                i10 = (-2080896) ^ iV3;
                            } else {
                                long j16 = 5 + j12;
                                long jV = ((long) iV3) ^ (((long) UnsafeUtil.v(j14)) << 28);
                                if (jV >= 0) {
                                    j11 = 266354560;
                                } else {
                                    long j17 = 6 + j12;
                                    long jV2 = jV ^ (((long) UnsafeUtil.v(j16)) << 35);
                                    if (jV2 < 0) {
                                        j10 = -34093383808L;
                                    } else {
                                        j16 = 7 + j12;
                                        jV = jV2 ^ (((long) UnsafeUtil.v(j17)) << 42);
                                        if (jV >= 0) {
                                            j11 = 4363953127296L;
                                        } else {
                                            j17 = 8 + j12;
                                            jV2 = jV ^ (((long) UnsafeUtil.v(j16)) << 49);
                                            if (jV2 < 0) {
                                                j10 = -558586000294016L;
                                            } else {
                                                long j18 = j12 + 9;
                                                long jV3 = (jV2 ^ (((long) UnsafeUtil.v(j17)) << 56)) ^ 71499008037633920L;
                                                if (jV3 < 0) {
                                                    long j19 = j12 + 10;
                                                    if (UnsafeUtil.v(j18) >= 0) {
                                                        j14 = j19;
                                                        j6 = jV3;
                                                    }
                                                } else {
                                                    j6 = jV3;
                                                    j14 = j18;
                                                }
                                            }
                                        }
                                    }
                                    j6 = j10 ^ jV2;
                                    j14 = j17;
                                }
                                j6 = j11 ^ jV;
                                j14 = j16;
                            }
                        }
                        this.pos = j14;
                        return j6;
                    }
                    i10 = iV ^ (-128);
                    j6 = i10;
                    this.pos = j14;
                    return j6;
                }
            }
            return N();
        }

        long N() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bI = I();
                j6 |= ((long) (bI & 127)) << i10;
                if ((bI & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        public void R(int i10) throws IOException {
            if (i10 >= 0 && i10 <= P()) {
                this.pos += (long) i10;
            } else {
                if (i10 >= 0) {
                    throw InvalidProtocolBufferException.k();
                }
                throw InvalidProtocolBufferException.f();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.lastTag != i10) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public void l(int i10) {
            this.currentLimit = i10;
            O();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int m(int i10) throws InvalidProtocolBufferException {
            if (i10 < 0) {
                throw InvalidProtocolBufferException.f();
            }
            int iD = i10 + d();
            int i11 = this.currentLimit;
            if (iD > i11) {
                throw InvalidProtocolBufferException.k();
            }
            this.currentLimit = iD;
            O();
            return i11;
        }

        static boolean H() {
            return UnsafeUtil.I();
        }

        private void S() throws IOException {
            if (P() >= 10) {
                T();
            } else {
                U();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String A() throws IOException {
            int iL = L();
            if (iL > 0 && iL <= P()) {
                byte[] bArr = new byte[iL];
                long j6 = iL;
                UnsafeUtil.n(this.pos, bArr, 0L, j6);
                String str = new String(bArr, Internal.UTF_8);
                this.pos += j6;
                return str;
            }
            if (iL == 0) {
                return "";
            }
            if (iL < 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public String B() throws IOException {
            int iL = L();
            if (iL > 0 && iL <= P()) {
                String strG = Utf8.g(this.buffer, G(this.pos), iL);
                this.pos += (long) iL;
                return strG;
            }
            if (iL == 0) {
                return "";
            }
            if (iL <= 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int C() throws IOException {
            if (e()) {
                this.lastTag = 0;
                return 0;
            }
            int iL = L();
            this.lastTag = iL;
            if (WireFormat.a(iL) != 0) {
                return this.lastTag;
            }
            throw InvalidProtocolBufferException.b();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int D() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long E() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean F(int i10) throws IOException {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB != 4) {
                                if (iB == 5) {
                                    R(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.d();
                            }
                            return false;
                        }
                        Q();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    R(L());
                    return true;
                }
                R(8);
                return true;
            }
            S();
            return true;
        }

        public void Q() throws IOException {
            int iC;
            do {
                iC = C();
                if (iC == 0) {
                    return;
                }
            } while (F(iC));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public boolean n() throws IOException {
            if (M() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public ByteString o() throws IOException {
            int iL = L();
            if (iL > 0 && iL <= P()) {
                if (this.immutable && this.enableAliasing) {
                    long j6 = this.pos;
                    long j10 = iL;
                    ByteBuffer byteBufferV = V(j6, j6 + j10);
                    this.pos += j10;
                    return ByteString.J(byteBufferV);
                }
                byte[] bArr = new byte[iL];
                long j11 = iL;
                UnsafeUtil.n(this.pos, bArr, 0L, j11);
                this.pos += j11;
                return ByteString.K(bArr);
            }
            if (iL == 0) {
                return ByteString.EMPTY;
            }
            if (iL < 0) {
                throw InvalidProtocolBufferException.f();
            }
            throw InvalidProtocolBufferException.k();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public double p() throws IOException {
            return Double.longBitsToDouble(K());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int q() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int r() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long s() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public float t() throws IOException {
            return Float.intBitsToFloat(J());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int u() throws IOException {
            return L();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long v() throws IOException {
            return M();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int w() throws IOException {
            return J();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long x() throws IOException {
            return K();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public int y() throws IOException {
            return CodedInputStream.b(L());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public long z() throws IOException {
            return CodedInputStream.c(M());
        }
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long c(long j6) {
        return (-(j6 & 1)) ^ (j6 >>> 1);
    }

    public static CodedInputStream i(byte[] bArr) {
        return j(bArr, 0, bArr.length);
    }

    public static CodedInputStream j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10, i11, false);
    }

    public abstract String A() throws IOException;

    public abstract String B() throws IOException;

    public abstract int C() throws IOException;

    public abstract int D() throws IOException;

    public abstract long E() throws IOException;

    public abstract boolean F(int i10) throws IOException;

    public abstract void a(int i10) throws InvalidProtocolBufferException;

    public abstract int d();

    public abstract boolean e() throws IOException;

    public abstract void l(int i10);

    public abstract int m(int i10) throws InvalidProtocolBufferException;

    public abstract boolean n() throws IOException;

    public abstract ByteString o() throws IOException;

    public abstract double p() throws IOException;

    public abstract int q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract float t() throws IOException;

    public abstract int u() throws IOException;

    public abstract long v() throws IOException;

    public abstract int w() throws IOException;

    public abstract long x() throws IOException;

    public abstract int y() throws IOException;

    public abstract long z() throws IOException;

    private CodedInputStream() {
        this.recursionLimit = 100;
        this.sizeLimit = Integer.MAX_VALUE;
        this.shouldDiscardUnknownFields = false;
    }

    public static CodedInputStream f(InputStream inputStream) {
        return g(inputStream, 4096);
    }

    public static CodedInputStream g(InputStream inputStream, int i10) {
        if (i10 > 0) {
            return inputStream == null ? i(Internal.EMPTY_BYTE_ARRAY) : new StreamDecoder(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    static CodedInputStream k(byte[] bArr, int i10, int i11, boolean z6) {
        ArrayDecoder arrayDecoder = new ArrayDecoder(bArr, i10, i11, z6);
        try {
            arrayDecoder.m(i11);
            return arrayDecoder;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    static CodedInputStream h(ByteBuffer byteBuffer, boolean z6) {
        if (byteBuffer.hasArray()) {
            return k(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z6);
        }
        if (byteBuffer.isDirect() && UnsafeDirectNioDecoder.H()) {
            return new UnsafeDirectNioDecoder(byteBuffer, z6);
        }
        int iRemaining = byteBuffer.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBuffer.duplicate().get(bArr);
        return k(bArr, 0, iRemaining, true);
    }
}

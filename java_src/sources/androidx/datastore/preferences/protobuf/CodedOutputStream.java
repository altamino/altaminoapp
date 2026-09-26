package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CodedOutputStream extends ByteOutput {
    public static final int DEFAULT_BUFFER_SIZE = 4096;

    @Deprecated
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    private boolean serializationDeterministic;
    CodedOutputStreamWriter wrapper;
    private static final Logger logger = Logger.getLogger(CodedOutputStream.class.getName());
    private static final boolean HAS_UNSAFE_ARRAY_OPERATIONS = UnsafeUtil.H();

    private static abstract class AbstractBufferedEncoder extends CodedOutputStream {
        final byte[] buffer;
        final int limit;
        int position;
        int totalBytesWritten;

        AbstractBufferedEncoder(int i10) {
            super();
            if (i10 < 0) {
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            byte[] bArr = new byte[Math.max(i10, 20)];
            this.buffer = bArr;
            this.limit = bArr.length;
        }

        final void U0(byte b7) {
            byte[] bArr = this.buffer;
            int i10 = this.position;
            this.position = i10 + 1;
            bArr[i10] = b7;
            this.totalBytesWritten++;
        }

        final void V0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.position;
            bArr[i11] = (byte) (i10 & 255);
            bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
            bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
            this.position = i11 + 4;
            bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
            this.totalBytesWritten += 4;
        }

        final void W0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.position;
            bArr[i10] = (byte) (j6 & 255);
            bArr[i10 + 1] = (byte) ((j6 >> 8) & 255);
            bArr[i10 + 2] = (byte) ((j6 >> 16) & 255);
            bArr[i10 + 3] = (byte) (255 & (j6 >> 24));
            bArr[i10 + 4] = (byte) (((int) (j6 >> 32)) & 255);
            bArr[i10 + 5] = (byte) (((int) (j6 >> 40)) & 255);
            bArr[i10 + 6] = (byte) (((int) (j6 >> 48)) & 255);
            this.position = i10 + 8;
            bArr[i10 + 7] = (byte) (((int) (j6 >> 56)) & 255);
            this.totalBytesWritten += 8;
        }

        final void X0(int i10) {
            if (i10 >= 0) {
                Z0(i10);
            } else {
                a1(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final int q0() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        final void Y0(int i10, int i11) {
            Z0(WireFormat.c(i10, i11));
        }

        final void Z0(int i10) {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                long j6 = this.position;
                while ((i10 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i11 = this.position;
                    this.position = i11 + 1;
                    UnsafeUtil.O(bArr, i11, (byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i12 = this.position;
                this.position = i12 + 1;
                UnsafeUtil.O(bArr2, i12, (byte) i10);
                this.totalBytesWritten += (int) (((long) this.position) - j6);
                return;
            }
            while ((i10 & (-128)) != 0) {
                byte[] bArr3 = this.buffer;
                int i13 = this.position;
                this.position = i13 + 1;
                bArr3[i13] = (byte) ((i10 & 127) | 128);
                this.totalBytesWritten++;
                i10 >>>= 7;
            }
            byte[] bArr4 = this.buffer;
            int i14 = this.position;
            this.position = i14 + 1;
            bArr4[i14] = (byte) i10;
            this.totalBytesWritten++;
        }

        final void a1(long j6) {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS) {
                long j10 = this.position;
                while ((j6 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i10 = this.position;
                    this.position = i10 + 1;
                    UnsafeUtil.O(bArr, i10, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                UnsafeUtil.O(bArr2, i11, (byte) j6);
                this.totalBytesWritten += (int) (((long) this.position) - j10);
                return;
            }
            while ((j6 & (-128)) != 0) {
                byte[] bArr3 = this.buffer;
                int i12 = this.position;
                this.position = i12 + 1;
                bArr3[i12] = (byte) ((((int) j6) & 127) | 128);
                this.totalBytesWritten++;
                j6 >>>= 7;
            }
            byte[] bArr4 = this.buffer;
            int i13 = this.position;
            this.position = i13 + 1;
            bArr4[i13] = (byte) j6;
            this.totalBytesWritten++;
        }
    }

    private static class ArrayEncoder extends CodedOutputStream {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        ArrayEncoder(byte[] bArr, int i10, int i11) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i12 = i10 + i11;
            if ((i10 | i11 | (bArr.length - i12)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            this.buffer = bArr;
            this.offset = i10;
            this.position = i10;
            this.limit = i12;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void H0(int i10, MessageLite messageLite) throws IOException {
            R0(i10, 2);
            J0(messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        final void I0(int i10, MessageLite messageLite, Schema schema) throws IOException {
            R0(i10, 2);
            S0(((AbstractMessageLite) messageLite).e(schema));
            schema.a(messageLite, this.wrapper);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void K0(int i10, MessageLite messageLite) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            H0(3, messageLite);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void L0(int i10, ByteString byteString) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            a(3, byteString);
            R0(1, 4);
        }

        public final int U0() {
            return this.position - this.offset;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void a(int i10, ByteString byteString) throws IOException {
            R0(i10, 2);
            v0(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() {
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final int q0() {
            return this.limit - this.position;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeBool(int i10, boolean z6) throws IOException {
            R0(i10, 0);
            r0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeFixed32(int i10, int i11) throws IOException {
            R0(i10, 5);
            y0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeFixed64(int i10, long j6) throws IOException {
            R0(i10, 1);
            z0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            F0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeString(int i10, String str) throws IOException {
            R0(i10, 2);
            Q0(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeUInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            S0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void writeUInt64(int i10, long j6) throws IOException {
            R0(i10, 0);
            T0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void F0(int i10) throws IOException {
            if (i10 >= 0) {
                S0(i10);
            } else {
                T0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void Q0(String str) throws IOException {
            int i10 = this.position;
            try {
                int iF0 = CodedOutputStream.f0(str.length() * 3);
                int iF1 = CodedOutputStream.f0(str.length());
                if (iF1 == iF0) {
                    int i11 = i10 + iF1;
                    this.position = i11;
                    int i12 = Utf8.i(str, this.buffer, i11, q0());
                    this.position = i10;
                    S0((i12 - i10) - iF1);
                    this.position = i12;
                } else {
                    S0(Utf8.k(str));
                    this.position = Utf8.i(str, this.buffer, this.position, q0());
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.position = i10;
                l0(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public final void g(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.buffer, this.position, i11);
                this.position += i11;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i11)), e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void r0(byte b7) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i10 = this.position;
                this.position = i10 + 1;
                bArr[i10] = b7;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void y0(int i10) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i11 = this.position;
                bArr[i11] = (byte) (i10 & 255);
                bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
                bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
                this.position = i11 + 4;
                bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void z0(long j6) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i10 = this.position;
                bArr[i10] = (byte) (((int) j6) & 255);
                bArr[i10 + 1] = (byte) (((int) (j6 >> 8)) & 255);
                bArr[i10 + 2] = (byte) (((int) (j6 >> 16)) & 255);
                bArr[i10 + 3] = (byte) (((int) (j6 >> 24)) & 255);
                bArr[i10 + 4] = (byte) (((int) (j6 >> 32)) & 255);
                bArr[i10 + 5] = (byte) (((int) (j6 >> 40)) & 255);
                bArr[i10 + 6] = (byte) (((int) (j6 >> 48)) & 255);
                this.position = i10 + 8;
                bArr[i10 + 7] = (byte) (((int) (j6 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void J0(MessageLite messageLite) throws IOException {
            S0(messageLite.getSerializedSize());
            messageLite.b(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void R0(int i10, int i11) throws IOException {
            S0(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void S0(int i10) throws IOException {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS && !Android.c() && q0() >= 5) {
                if ((i10 & (-128)) == 0) {
                    byte[] bArr = this.buffer;
                    int i11 = this.position;
                    this.position = i11 + 1;
                    UnsafeUtil.O(bArr, i11, (byte) i10);
                    return;
                }
                byte[] bArr2 = this.buffer;
                int i12 = this.position;
                this.position = i12 + 1;
                UnsafeUtil.O(bArr2, i12, (byte) (i10 | 128));
                int i13 = i10 >>> 7;
                if ((i13 & (-128)) == 0) {
                    byte[] bArr3 = this.buffer;
                    int i14 = this.position;
                    this.position = i14 + 1;
                    UnsafeUtil.O(bArr3, i14, (byte) i13);
                    return;
                }
                byte[] bArr4 = this.buffer;
                int i15 = this.position;
                this.position = i15 + 1;
                UnsafeUtil.O(bArr4, i15, (byte) (i13 | 128));
                int i16 = i10 >>> 14;
                if ((i16 & (-128)) == 0) {
                    byte[] bArr5 = this.buffer;
                    int i17 = this.position;
                    this.position = i17 + 1;
                    UnsafeUtil.O(bArr5, i17, (byte) i16);
                    return;
                }
                byte[] bArr6 = this.buffer;
                int i18 = this.position;
                this.position = i18 + 1;
                UnsafeUtil.O(bArr6, i18, (byte) (i16 | 128));
                int i19 = i10 >>> 21;
                if ((i19 & (-128)) == 0) {
                    byte[] bArr7 = this.buffer;
                    int i20 = this.position;
                    this.position = i20 + 1;
                    UnsafeUtil.O(bArr7, i20, (byte) i19);
                    return;
                }
                byte[] bArr8 = this.buffer;
                int i21 = this.position;
                this.position = i21 + 1;
                UnsafeUtil.O(bArr8, i21, (byte) (i19 | 128));
                byte[] bArr9 = this.buffer;
                int i22 = this.position;
                this.position = i22 + 1;
                UnsafeUtil.O(bArr9, i22, (byte) (i10 >>> 28));
                return;
            }
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.buffer;
                    int i23 = this.position;
                    this.position = i23 + 1;
                    bArr10[i23] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr11 = this.buffer;
            int i24 = this.position;
            this.position = i24 + 1;
            bArr11[i24] = (byte) i10;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void T0(long j6) throws IOException {
            if (CodedOutputStream.HAS_UNSAFE_ARRAY_OPERATIONS && q0() >= 10) {
                while ((j6 & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i10 = this.position;
                    this.position = i10 + 1;
                    UnsafeUtil.O(bArr, i10, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                UnsafeUtil.O(bArr2, i11, (byte) j6);
                return;
            }
            while ((j6 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i12 = this.position;
                    this.position = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j6) & 127) | 128);
                    j6 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i13 = this.position;
            this.position = i13 + 1;
            bArr4[i13] = (byte) j6;
        }

        public final void V0(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.buffer, this.position, iRemaining);
                this.position += iRemaining;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(iRemaining)), e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public final void h(ByteBuffer byteBuffer) throws IOException {
            V0(byteBuffer);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream, androidx.datastore.preferences.protobuf.ByteOutput
        public final void i(byte[] bArr, int i10, int i11) throws IOException {
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void u0(byte[] bArr, int i10, int i11) throws IOException {
            S0(i11);
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void v0(ByteString byteString) throws IOException {
            S0(byteString.size());
            byteString.M(this);
        }
    }

    private static final class ByteOutputEncoder extends AbstractBufferedEncoder {
        private final ByteOutput out;

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void H0(int i10, MessageLite messageLite) throws IOException {
            R0(i10, 2);
            J0(messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        void I0(int i10, MessageLite messageLite, Schema schema) throws IOException {
            R0(i10, 2);
            d1(messageLite, schema);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void K0(int i10, MessageLite messageLite) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            H0(3, messageLite);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void L0(int i10, ByteString byteString) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            a(3, byteString);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void S0(int i10) throws IOException {
            c1(5);
            Z0(i10);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void a(int i10, ByteString byteString) throws IOException {
            R0(i10, 2);
            v0(byteString);
        }

        void d1(MessageLite messageLite, Schema schema) throws IOException {
            S0(((AbstractMessageLite) messageLite).e(schema));
            schema.a(messageLite, this.wrapper);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeString(int i10, String str) throws IOException {
            R0(i10, 2);
            Q0(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void y0(int i10) throws IOException {
            c1(4);
            V0(i10);
        }

        private void b1() throws IOException {
            this.out.g(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void c1(int i10) throws IOException {
            if (this.limit - this.position < i10) {
                b1();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void F0(int i10) throws IOException {
            if (i10 >= 0) {
                S0(i10);
            } else {
                T0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void T0(long j6) throws IOException {
            c1(10);
            a1(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() throws IOException {
            if (this.position > 0) {
                b1();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void r0(byte b7) throws IOException {
            if (this.position == this.limit) {
                b1();
            }
            U0(b7);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeBool(int i10, boolean z6) throws IOException {
            c1(11);
            Y0(i10, 0);
            U0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed32(int i10, int i11) throws IOException {
            c1(14);
            Y0(i10, 5);
            V0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed64(int i10, long j6) throws IOException {
            c1(18);
            Y0(i10, 1);
            W0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeInt32(int i10, int i11) throws IOException {
            c1(20);
            Y0(i10, 0);
            X0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt32(int i10, int i11) throws IOException {
            c1(20);
            Y0(i10, 0);
            Z0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt64(int i10, long j6) throws IOException {
            c1(20);
            Y0(i10, 0);
            a1(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void z0(long j6) throws IOException {
            c1(8);
            W0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void J0(MessageLite messageLite) throws IOException {
            S0(messageLite.getSerializedSize());
            messageLite.b(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void Q0(String str) throws IOException {
            int length = str.length() * 3;
            int iF0 = CodedOutputStream.f0(length);
            int i10 = iF0 + length;
            int i11 = this.limit;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int i12 = Utf8.i(str, bArr, 0, length);
                S0(i12);
                i(bArr, 0, i12);
                return;
            }
            if (i10 > i11 - this.position) {
                b1();
            }
            int i13 = this.position;
            try {
                int iF1 = CodedOutputStream.f0(str.length());
                if (iF1 == iF0) {
                    int i14 = i13 + iF1;
                    this.position = i14;
                    int i15 = Utf8.i(str, this.buffer, i14, this.limit - i14);
                    this.position = i13;
                    int i16 = (i15 - i13) - iF1;
                    Z0(i16);
                    this.position = i15;
                    this.totalBytesWritten += i16;
                } else {
                    int iK = Utf8.k(str);
                    Z0(iK);
                    this.position = Utf8.i(str, this.buffer, this.position, iK);
                    this.totalBytesWritten += iK;
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.totalBytesWritten -= this.position - i13;
                this.position = i13;
                l0(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void R0(int i10, int i11) throws IOException {
            S0(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) throws IOException {
            k0();
            this.out.g(bArr, i10, i11);
            this.totalBytesWritten += i11;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) throws IOException {
            k0();
            int iRemaining = byteBuffer.remaining();
            this.out.h(byteBuffer);
            this.totalBytesWritten += iRemaining;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream, androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) throws IOException {
            k0();
            this.out.i(bArr, i10, i11);
            this.totalBytesWritten += i11;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void u0(byte[] bArr, int i10, int i11) throws IOException {
            S0(i11);
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void v0(ByteString byteString) throws IOException {
            S0(byteString.size());
            byteString.M(this);
        }
    }

    private static final class HeapNioEncoder extends ArrayEncoder {
        private final ByteBuffer byteBuffer;
        private int initialPosition;

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream.ArrayEncoder, androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() {
            this.byteBuffer.position(this.initialPosition + U0());
        }
    }

    public static class OutOfSpaceException extends IOException {
        private static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super(MESSAGE);
        }

        OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        OutOfSpaceException(Throwable th) {
            super(MESSAGE, th);
        }

        OutOfSpaceException(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }
    }

    private static final class OutputStreamEncoder extends AbstractBufferedEncoder {
        private final OutputStream out;

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void H0(int i10, MessageLite messageLite) throws IOException {
            R0(i10, 2);
            J0(messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        void I0(int i10, MessageLite messageLite, Schema schema) throws IOException {
            R0(i10, 2);
            e1(messageLite, schema);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void K0(int i10, MessageLite messageLite) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            H0(3, messageLite);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void L0(int i10, ByteString byteString) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            a(3, byteString);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void S0(int i10) throws IOException {
            c1(5);
            Z0(i10);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void a(int i10, ByteString byteString) throws IOException {
            R0(i10, 2);
            v0(byteString);
        }

        void e1(MessageLite messageLite, Schema schema) throws IOException {
            S0(((AbstractMessageLite) messageLite).e(schema));
            schema.a(messageLite, this.wrapper);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeString(int i10, String str) throws IOException {
            R0(i10, 2);
            Q0(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void y0(int i10) throws IOException {
            c1(4);
            V0(i10);
        }

        private void b1() throws IOException {
            this.out.write(this.buffer, 0, this.position);
            this.position = 0;
        }

        private void c1(int i10) throws IOException {
            if (this.limit - this.position < i10) {
                b1();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void F0(int i10) throws IOException {
            if (i10 >= 0) {
                S0(i10);
            } else {
                T0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void T0(long j6) throws IOException {
            c1(10);
            a1(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.limit;
            int i13 = this.position;
            if (i12 - i13 >= i11) {
                System.arraycopy(bArr, i10, this.buffer, i13, i11);
                this.position += i11;
                this.totalBytesWritten += i11;
                return;
            }
            int i14 = i12 - i13;
            System.arraycopy(bArr, i10, this.buffer, i13, i14);
            int i15 = i10 + i14;
            int i16 = i11 - i14;
            this.position = this.limit;
            this.totalBytesWritten += i14;
            b1();
            if (i16 <= this.limit) {
                System.arraycopy(bArr, i15, this.buffer, 0, i16);
                this.position = i16;
            } else {
                this.out.write(bArr, i15, i16);
            }
            this.totalBytesWritten += i16;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() throws IOException {
            if (this.position > 0) {
                b1();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void r0(byte b7) throws IOException {
            if (this.position == this.limit) {
                b1();
            }
            U0(b7);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeBool(int i10, boolean z6) throws IOException {
            c1(11);
            Y0(i10, 0);
            U0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed32(int i10, int i11) throws IOException {
            c1(14);
            Y0(i10, 5);
            V0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed64(int i10, long j6) throws IOException {
            c1(18);
            Y0(i10, 1);
            W0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeInt32(int i10, int i11) throws IOException {
            c1(20);
            Y0(i10, 0);
            X0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt32(int i10, int i11) throws IOException {
            c1(20);
            Y0(i10, 0);
            Z0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt64(int i10, long j6) throws IOException {
            c1(20);
            Y0(i10, 0);
            a1(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void z0(long j6) throws IOException {
            c1(8);
            W0(j6);
        }

        OutputStreamEncoder(OutputStream outputStream, int i10) {
            super(i10);
            if (outputStream != null) {
                this.out = outputStream;
                return;
            }
            throw new NullPointerException("out");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void J0(MessageLite messageLite) throws IOException {
            S0(messageLite.getSerializedSize());
            messageLite.b(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void Q0(String str) throws IOException {
            int iK;
            try {
                int length = str.length() * 3;
                int iF0 = CodedOutputStream.f0(length);
                int i10 = iF0 + length;
                int i11 = this.limit;
                if (i10 > i11) {
                    byte[] bArr = new byte[length];
                    int i12 = Utf8.i(str, bArr, 0, length);
                    S0(i12);
                    i(bArr, 0, i12);
                    return;
                }
                if (i10 > i11 - this.position) {
                    b1();
                }
                int iF1 = CodedOutputStream.f0(str.length());
                int i13 = this.position;
                try {
                    if (iF1 == iF0) {
                        int i14 = i13 + iF1;
                        this.position = i14;
                        int i15 = Utf8.i(str, this.buffer, i14, this.limit - i14);
                        this.position = i13;
                        iK = (i15 - i13) - iF1;
                        Z0(iK);
                        this.position = i15;
                    } else {
                        iK = Utf8.k(str);
                        Z0(iK);
                        this.position = Utf8.i(str, this.buffer, this.position, iK);
                    }
                    this.totalBytesWritten += iK;
                } catch (Utf8.UnpairedSurrogateException e) {
                    this.totalBytesWritten -= this.position - i13;
                    this.position = i13;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new OutOfSpaceException(e2);
                }
            } catch (Utf8.UnpairedSurrogateException e6) {
                l0(str, e6);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void R0(int i10, int i11) throws IOException {
            S0(WireFormat.c(i10, i11));
        }

        public void d1(ByteBuffer byteBuffer) throws IOException {
            int iRemaining = byteBuffer.remaining();
            int i10 = this.limit;
            int i11 = this.position;
            if (i10 - i11 >= iRemaining) {
                byteBuffer.get(this.buffer, i11, iRemaining);
                this.position += iRemaining;
                this.totalBytesWritten += iRemaining;
                return;
            }
            int i12 = i10 - i11;
            byteBuffer.get(this.buffer, i11, i12);
            int i13 = iRemaining - i12;
            this.position = this.limit;
            this.totalBytesWritten += i12;
            b1();
            while (true) {
                int i14 = this.limit;
                if (i13 > i14) {
                    byteBuffer.get(this.buffer, 0, i14);
                    this.out.write(this.buffer, 0, this.limit);
                    int i15 = this.limit;
                    i13 -= i15;
                    this.totalBytesWritten += i15;
                } else {
                    byteBuffer.get(this.buffer, 0, i13);
                    this.position = i13;
                    this.totalBytesWritten += i13;
                    return;
                }
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) throws IOException {
            d1(byteBuffer);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream, androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) throws IOException {
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void u0(byte[] bArr, int i10, int i11) throws IOException {
            S0(i11);
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void v0(ByteString byteString) throws IOException {
            S0(byteString.size());
            byteString.M(this);
        }
    }

    private static final class SafeDirectNioEncoder extends CodedOutputStream {
        private final ByteBuffer buffer;
        private final int initialPosition;
        private final ByteBuffer originalBuffer;

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void H0(int i10, MessageLite messageLite) throws IOException {
            R0(i10, 2);
            J0(messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        void I0(int i10, MessageLite messageLite, Schema schema) throws IOException {
            R0(i10, 2);
            W0(messageLite, schema);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void K0(int i10, MessageLite messageLite) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            H0(3, messageLite);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void L0(int i10, ByteString byteString) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            a(3, byteString);
            R0(1, 4);
        }

        void W0(MessageLite messageLite, Schema schema) throws IOException {
            S0(((AbstractMessageLite) messageLite).e(schema));
            schema.a(messageLite, this.wrapper);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void a(int i10, ByteString byteString) throws IOException {
            R0(i10, 2);
            v0(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeBool(int i10, boolean z6) throws IOException {
            R0(i10, 0);
            r0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed32(int i10, int i11) throws IOException {
            R0(i10, 5);
            y0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed64(int i10, long j6) throws IOException {
            R0(i10, 1);
            z0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            F0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeString(int i10, String str) throws IOException {
            R0(i10, 2);
            Q0(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            S0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt64(int i10, long j6) throws IOException {
            R0(i10, 0);
            T0(j6);
        }

        private void U0(String str) throws IOException {
            try {
                Utf8.j(str, this.buffer);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void F0(int i10) throws IOException {
            if (i10 >= 0) {
                S0(i10);
            } else {
                T0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void Q0(String str) throws IOException {
            int iPosition = this.buffer.position();
            try {
                int iF0 = CodedOutputStream.f0(str.length() * 3);
                int iF1 = CodedOutputStream.f0(str.length());
                if (iF1 == iF0) {
                    int iPosition2 = this.buffer.position() + iF1;
                    this.buffer.position(iPosition2);
                    U0(str);
                    int iPosition3 = this.buffer.position();
                    this.buffer.position(iPosition);
                    S0(iPosition3 - iPosition2);
                    this.buffer.position(iPosition3);
                } else {
                    S0(Utf8.k(str));
                    U0(str);
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.buffer.position(iPosition);
                l0(str, e);
            } catch (IllegalArgumentException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void S0(int i10) throws IOException {
            while ((i10 & (-128)) != 0) {
                try {
                    this.buffer.put((byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new OutOfSpaceException(e);
                }
            }
            this.buffer.put((byte) i10);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void T0(long j6) throws IOException {
            while (((-128) & j6) != 0) {
                try {
                    this.buffer.put((byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new OutOfSpaceException(e);
                }
            }
            this.buffer.put((byte) j6);
        }

        public void V0(ByteBuffer byteBuffer) throws IOException {
            try {
                this.buffer.put(byteBuffer);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) throws IOException {
            try {
                this.buffer.put(bArr, i10, i11);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(e);
            } catch (BufferOverflowException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() {
            this.originalBuffer.position(this.buffer.position());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public int q0() {
            return this.buffer.remaining();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void r0(byte b7) throws IOException {
            try {
                this.buffer.put(b7);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void y0(int i10) throws IOException {
            try {
                this.buffer.putInt(i10);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void z0(long j6) throws IOException {
            try {
                this.buffer.putLong(j6);
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void J0(MessageLite messageLite) throws IOException {
            S0(messageLite.getSerializedSize());
            messageLite.b(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void R0(int i10, int i11) throws IOException {
            S0(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) throws IOException {
            V0(byteBuffer);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream, androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) throws IOException {
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void u0(byte[] bArr, int i10, int i11) throws IOException {
            S0(i11);
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void v0(ByteString byteString) throws IOException {
            S0(byteString.size());
            byteString.M(this);
        }
    }

    private static final class UnsafeDirectNioEncoder extends CodedOutputStream {
        private final long address;
        private final ByteBuffer buffer;
        private final long initialPosition;
        private final long limit;
        private final long oneVarintLimit;
        private final ByteBuffer originalBuffer;
        private long position;

        private int U0(long j6) {
            return (int) (j6 - this.address);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void H0(int i10, MessageLite messageLite) throws IOException {
            R0(i10, 2);
            J0(messageLite);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        void I0(int i10, MessageLite messageLite, Schema schema) throws IOException {
            R0(i10, 2);
            X0(messageLite, schema);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void K0(int i10, MessageLite messageLite) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            H0(3, messageLite);
            R0(1, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void L0(int i10, ByteString byteString) throws IOException {
            R0(1, 3);
            writeUInt32(2, i10);
            a(3, byteString);
            R0(1, 4);
        }

        void X0(MessageLite messageLite, Schema schema) throws IOException {
            S0(((AbstractMessageLite) messageLite).e(schema));
            schema.a(messageLite, this.wrapper);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void a(int i10, ByteString byteString) throws IOException {
            R0(i10, 2);
            v0(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public int q0() {
            return (int) (this.limit - this.position);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeBool(int i10, boolean z6) throws IOException {
            R0(i10, 0);
            r0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed32(int i10, int i11) throws IOException {
            R0(i10, 5);
            y0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeFixed64(int i10, long j6) throws IOException {
            R0(i10, 1);
            z0(j6);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            F0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeString(int i10, String str) throws IOException {
            R0(i10, 2);
            Q0(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt32(int i10, int i11) throws IOException {
            R0(i10, 0);
            S0(i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void writeUInt64(int i10, long j6) throws IOException {
            R0(i10, 0);
            T0(j6);
        }

        private void V0(long j6) {
            this.buffer.position(U0(j6));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void F0(int i10) throws IOException {
            if (i10 >= 0) {
                S0(i10);
            } else {
                T0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void Q0(String str) throws IOException {
            long j6 = this.position;
            try {
                int iF0 = CodedOutputStream.f0(str.length() * 3);
                int iF1 = CodedOutputStream.f0(str.length());
                if (iF1 == iF0) {
                    int iU0 = U0(this.position) + iF1;
                    this.buffer.position(iU0);
                    Utf8.j(str, this.buffer);
                    int iPosition = this.buffer.position() - iU0;
                    S0(iPosition);
                    this.position += (long) iPosition;
                } else {
                    int iK = Utf8.k(str);
                    S0(iK);
                    V0(this.position);
                    Utf8.j(str, this.buffer);
                    this.position += (long) iK;
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.position = j6;
                V0(j6);
                l0(str, e);
            } catch (IllegalArgumentException e2) {
                throw new OutOfSpaceException(e2);
            } catch (IndexOutOfBoundsException e6) {
                throw new OutOfSpaceException(e6);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void S0(int i10) throws IOException {
            if (this.position <= this.oneVarintLimit) {
                while ((i10 & (-128)) != 0) {
                    long j6 = this.position;
                    this.position = j6 + 1;
                    UnsafeUtil.N(j6, (byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                }
                long j10 = this.position;
                this.position = 1 + j10;
                UnsafeUtil.N(j10, (byte) i10);
                return;
            }
            while (true) {
                long j11 = this.position;
                if (j11 >= this.limit) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
                }
                if ((i10 & (-128)) == 0) {
                    this.position = 1 + j11;
                    UnsafeUtil.N(j11, (byte) i10);
                    return;
                } else {
                    this.position = j11 + 1;
                    UnsafeUtil.N(j11, (byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                }
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void T0(long j6) throws IOException {
            if (this.position <= this.oneVarintLimit) {
                while ((j6 & (-128)) != 0) {
                    long j10 = this.position;
                    this.position = j10 + 1;
                    UnsafeUtil.N(j10, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                }
                long j11 = this.position;
                this.position = 1 + j11;
                UnsafeUtil.N(j11, (byte) j6);
                return;
            }
            while (true) {
                long j12 = this.position;
                if (j12 >= this.limit) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
                }
                if ((j6 & (-128)) == 0) {
                    this.position = 1 + j12;
                    UnsafeUtil.N(j12, (byte) j6);
                    return;
                } else {
                    this.position = j12 + 1;
                    UnsafeUtil.N(j12, (byte) ((((int) j6) & 127) | 128));
                    j6 >>>= 7;
                }
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) throws IOException {
            if (bArr != null && i10 >= 0 && i11 >= 0 && bArr.length - i11 >= i10) {
                long j6 = i11;
                long j10 = this.limit - j6;
                long j11 = this.position;
                if (j10 >= j11) {
                    UnsafeUtil.o(bArr, i10, j11, j6);
                    this.position += j6;
                    return;
                }
            }
            if (bArr != null) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), Integer.valueOf(i11)));
            }
            throw new NullPointerException("value");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void k0() {
            this.originalBuffer.position(U0(this.position));
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void r0(byte b7) throws IOException {
            long j6 = this.position;
            if (j6 >= this.limit) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.position), Long.valueOf(this.limit), 1));
            }
            this.position = 1 + j6;
            UnsafeUtil.N(j6, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void y0(int i10) throws IOException {
            this.buffer.putInt(U0(this.position), i10);
            this.position += 4;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void z0(long j6) throws IOException {
            this.buffer.putLong(U0(this.position), j6);
            this.position += 8;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void J0(MessageLite messageLite) throws IOException {
            S0(messageLite.getSerializedSize());
            messageLite.b(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void R0(int i10, int i11) throws IOException {
            S0(WireFormat.c(i10, i11));
        }

        public void W0(ByteBuffer byteBuffer) throws IOException {
            try {
                int iRemaining = byteBuffer.remaining();
                V0(this.position);
                this.buffer.put(byteBuffer);
                this.position += (long) iRemaining;
            } catch (BufferOverflowException e) {
                throw new OutOfSpaceException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) throws IOException {
            W0(byteBuffer);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream, androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) throws IOException {
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void u0(byte[] bArr, int i10, int i11) throws IOException {
            S0(i11);
            g(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public void v0(ByteString byteString) throws IOException {
            S0(byteString.size());
            byteString.M(this);
        }
    }

    public static int H(int i10, LazyFieldLite lazyFieldLite) {
        return (d0(1) * 2) + e0(2, i10) + I(3, lazyFieldLite);
    }

    public static int L(int i10, MessageLite messageLite) {
        return (d0(1) * 2) + e0(2, i10) + M(3, messageLite);
    }

    static int Q(int i10) {
        if (i10 > 4096) {
            return 4096;
        }
        return i10;
    }

    public static int R(int i10, ByteString byteString) {
        return (d0(1) * 2) + e0(2, i10) + o(3, byteString);
    }

    public static int U(int i10) {
        return 4;
    }

    public static int W(long j6) {
        return 8;
    }

    public static int d0(int i10) {
        return f0(WireFormat.c(i10, 0));
    }

    public static int f0(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int h0(long j6) {
        int i10;
        if (((-128) & j6) == 0) {
            return 1;
        }
        if (j6 < 0) {
            return 10;
        }
        if (((-34359738368L) & j6) != 0) {
            j6 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j6) != 0) {
            i10 += 2;
            j6 >>>= 14;
        }
        return (j6 & (-16384)) != 0 ? i10 + 1 : i10;
    }

    public static int i0(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static long j0(long j6) {
        return (j6 >> 63) ^ (j6 << 1);
    }

    public static int m(boolean z6) {
        return 1;
    }

    public static int n(byte[] bArr) {
        return K(bArr.length);
    }

    public static CodedOutputStream o0(byte[] bArr) {
        return p0(bArr, 0, bArr.length);
    }

    public static int r(double d) {
        return 8;
    }

    public static int v(int i10) {
        return 4;
    }

    public static int x(long j6) {
        return 8;
    }

    public static int z(float f) {
        return 4;
    }

    @Deprecated
    public final void B0(int i10, MessageLite messageLite) throws IOException {
        R0(i10, 3);
        D0(messageLite);
        R0(i10, 4);
    }

    @Deprecated
    final void C0(int i10, MessageLite messageLite, Schema schema) throws IOException {
        R0(i10, 3);
        E0(messageLite, schema);
        R0(i10, 4);
    }

    public abstract void F0(int i10) throws IOException;

    public abstract void H0(int i10, MessageLite messageLite) throws IOException;

    abstract void I0(int i10, MessageLite messageLite, Schema schema) throws IOException;

    public abstract void J0(MessageLite messageLite) throws IOException;

    public abstract void K0(int i10, MessageLite messageLite) throws IOException;

    public abstract void L0(int i10, ByteString byteString) throws IOException;

    public abstract void Q0(String str) throws IOException;

    public abstract void R0(int i10, int i11) throws IOException;

    public abstract void S0(int i10) throws IOException;

    public abstract void T0(long j6) throws IOException;

    public abstract void a(int i10, ByteString byteString) throws IOException;

    @Override // androidx.datastore.preferences.protobuf.ByteOutput
    public abstract void i(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void k0() throws IOException;

    boolean m0() {
        return this.serializationDeterministic;
    }

    public abstract int q0();

    public abstract void r0(byte b7) throws IOException;

    public final void s0(boolean z6) throws IOException {
        r0(z6 ? (byte) 1 : (byte) 0);
    }

    public final void t0(byte[] bArr) throws IOException {
        u0(bArr, 0, bArr.length);
    }

    abstract void u0(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void v0(ByteString byteString) throws IOException;

    public abstract void writeBool(int i10, boolean z6) throws IOException;

    public abstract void writeFixed32(int i10, int i11) throws IOException;

    public abstract void writeFixed64(int i10, long j6) throws IOException;

    public abstract void writeInt32(int i10, int i11) throws IOException;

    public abstract void writeString(int i10, String str) throws IOException;

    public abstract void writeUInt32(int i10, int i11) throws IOException;

    public abstract void writeUInt64(int i10, long j6) throws IOException;

    public abstract void y0(int i10) throws IOException;

    public abstract void z0(long j6) throws IOException;

    private CodedOutputStream() {
    }

    @Deprecated
    static int C(MessageLite messageLite, Schema schema) {
        return ((AbstractMessageLite) messageLite).e(schema);
    }

    public static int E(int i10) {
        if (i10 >= 0) {
            return f0(i10);
        }
        return 10;
    }

    static int P(MessageLite messageLite, Schema schema) {
        return K(((AbstractMessageLite) messageLite).e(schema));
    }

    public static CodedOutputStream n0(OutputStream outputStream, int i10) {
        return new OutputStreamEncoder(outputStream, i10);
    }

    public static CodedOutputStream p0(byte[] bArr, int i10, int i11) {
        return new ArrayEncoder(bArr, i10, i11);
    }

    @Deprecated
    final void E0(MessageLite messageLite, Schema schema) throws IOException {
        schema.a(messageLite, this.wrapper);
    }

    final void l0(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws IOException {
        logger.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(Internal.UTF_8);
        try {
            S0(bytes.length);
            i(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new OutOfSpaceException(e2);
        }
    }

    @Deprecated
    static int A(int i10, MessageLite messageLite, Schema schema) {
        return (d0(i10) * 2) + C(messageLite, schema);
    }

    @Deprecated
    public static int B(MessageLite messageLite) {
        return messageLite.getSerializedSize();
    }

    public static int D(int i10, int i11) {
        return d0(i10) + E(i11);
    }

    public static int F(int i10, long j6) {
        return d0(i10) + G(j6);
    }

    public static int G(long j6) {
        return h0(j6);
    }

    public static int I(int i10, LazyFieldLite lazyFieldLite) {
        return d0(i10) + J(lazyFieldLite);
    }

    public static int J(LazyFieldLite lazyFieldLite) {
        return K(lazyFieldLite.c());
    }

    static int K(int i10) {
        return f0(i10) + i10;
    }

    public static int M(int i10, MessageLite messageLite) {
        return d0(i10) + O(messageLite);
    }

    static int N(int i10, MessageLite messageLite, Schema schema) {
        return d0(i10) + P(messageLite, schema);
    }

    public static int O(MessageLite messageLite) {
        return K(messageLite.getSerializedSize());
    }

    @Deprecated
    public static int S(int i10) {
        return f0(i10);
    }

    public static int T(int i10, int i11) {
        return d0(i10) + U(i11);
    }

    public static int V(int i10, long j6) {
        return d0(i10) + W(j6);
    }

    public static int X(int i10, int i11) {
        return d0(i10) + Y(i11);
    }

    public static int Y(int i10) {
        return f0(i0(i10));
    }

    public static int Z(int i10, long j6) {
        return d0(i10) + a0(j6);
    }

    public static int a0(long j6) {
        return h0(j0(j6));
    }

    public static int b0(int i10, String str) {
        return d0(i10) + c0(str);
    }

    public static int c0(String str) {
        int length;
        try {
            length = Utf8.k(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.UTF_8).length;
        }
        return K(length);
    }

    public static int e0(int i10, int i11) {
        return d0(i10) + f0(i11);
    }

    public static int g0(int i10, long j6) {
        return d0(i10) + h0(j6);
    }

    public static int l(int i10, boolean z6) {
        return d0(i10) + m(z6);
    }

    public static int o(int i10, ByteString byteString) {
        return d0(i10) + p(byteString);
    }

    public static int p(ByteString byteString) {
        return K(byteString.size());
    }

    public static int q(int i10, double d) {
        return d0(i10) + r(d);
    }

    public static int s(int i10, int i11) {
        return d0(i10) + t(i11);
    }

    public static int t(int i10) {
        return E(i10);
    }

    public static int u(int i10, int i11) {
        return d0(i10) + v(i11);
    }

    public static int w(int i10, long j6) {
        return d0(i10) + x(j6);
    }

    public static int y(int i10, float f) {
        return d0(i10) + z(f);
    }

    public final void A0(float f) throws IOException {
        y0(Float.floatToRawIntBits(f));
    }

    @Deprecated
    public final void D0(MessageLite messageLite) throws IOException {
        messageLite.b(this);
    }

    public final void G0(long j6) throws IOException {
        T0(j6);
    }

    public final void M0(int i10) throws IOException {
        y0(i10);
    }

    public final void N0(long j6) throws IOException {
        z0(j6);
    }

    public final void O0(int i10) throws IOException {
        S0(i0(i10));
    }

    public final void P0(long j6) throws IOException {
        T0(j0(j6));
    }

    public final void k() {
        if (q0() == 0) {
        } else {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void w0(double d) throws IOException {
        z0(Double.doubleToRawLongBits(d));
    }

    public final void writeDouble(int i10, double d) throws IOException {
        writeFixed64(i10, Double.doubleToRawLongBits(d));
    }

    public final void writeEnum(int i10, int i11) throws IOException {
        writeInt32(i10, i11);
    }

    public final void writeFloat(int i10, float f) throws IOException {
        writeFixed32(i10, Float.floatToRawIntBits(f));
    }

    public final void writeInt64(int i10, long j6) throws IOException {
        writeUInt64(i10, j6);
    }

    public final void writeSFixed32(int i10, int i11) throws IOException {
        writeFixed32(i10, i11);
    }

    public final void writeSFixed64(int i10, long j6) throws IOException {
        writeFixed64(i10, j6);
    }

    public final void writeSInt32(int i10, int i11) throws IOException {
        writeUInt32(i10, i0(i11));
    }

    public final void writeSInt64(int i10, long j6) throws IOException {
        writeUInt64(i10, j0(j6));
    }

    public final void x0(int i10) throws IOException {
        F0(i10);
    }
}

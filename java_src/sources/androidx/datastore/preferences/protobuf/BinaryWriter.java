package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class BinaryWriter extends ByteOutput implements Writer {
    public static final int DEFAULT_CHUNK_SIZE = 4096;
    private static final int MAP_KEY_NUMBER = 1;
    private static final int MAP_VALUE_NUMBER = 2;
    private final BufferAllocator alloc;
    final ArrayDeque<AllocatedBuffer> buffers;
    private final int chunkSize;
    int totalDoneBytes;

    private static final class SafeDirectWriter extends BinaryWriter {
        private ByteBuffer buffer;
        private int limitMinusOne;
        private int pos;

        private int W() {
            return this.limitMinusOne - this.pos;
        }

        private int b0() {
            return this.pos + 1;
        }

        private void m0(long j6) {
            f0((int) j6);
        }

        private void o0(long j6) {
            g0((int) j6);
        }

        private void s0(long j6) {
            h0((int) j6);
        }

        private void t0(long j6) {
            i0((int) j6);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void e(int i10, Object obj, Schema schema) throws IOException {
            P(i10, 4);
            schema.a(obj, this);
            P(i10, 3);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void r(boolean z6) {
            c0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeBool(int i10, boolean z6) {
            q(6);
            c0(z6 ? (byte) 1 : (byte) 0);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeEndGroup(int i10) {
            P(i10, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeStartGroup(int i10) {
            P(i10, 3);
        }

        private void e0(int i10) {
            ByteBuffer byteBuffer = this.buffer;
            int i11 = this.pos;
            this.pos = i11 - 1;
            byteBuffer.put(i11, (byte) (i10 >>> 28));
            int i12 = this.pos;
            this.pos = i12 - 4;
            this.buffer.putInt(i12 - 3, (i10 & 127) | 128 | ((((i10 >>> 21) & 127) | 128) << 24) | ((((i10 >>> 14) & 127) | 128) << 16) | ((((i10 >>> 7) & 127) | 128) << 8));
        }

        private void f0(int i10) {
            int i11 = this.pos;
            this.pos = i11 - 4;
            this.buffer.putInt(i11 - 3, (i10 & 127) | 128 | ((266338304 & i10) << 3) | (((2080768 & i10) | 2097152) << 2) | (((i10 & 16256) | 16384) << 1));
        }

        private void g0(int i10) {
            ByteBuffer byteBuffer = this.buffer;
            int i11 = this.pos;
            this.pos = i11 - 1;
            byteBuffer.put(i11, (byte) i10);
        }

        private void h0(int i10) {
            int i11 = this.pos - 3;
            this.pos = i11;
            this.buffer.putInt(i11, (((i10 & 127) | 128) << 8) | ((2080768 & i10) << 10) | (((i10 & 16256) | 16384) << 9));
        }

        private void i0(int i10) {
            int i11 = this.pos;
            this.pos = i11 - 2;
            this.buffer.putShort(i11 - 1, (short) ((i10 & 127) | 128 | ((i10 & 16256) << 1)));
        }

        private void j0(long j6) {
            int i10 = this.pos;
            this.pos = i10 - 8;
            this.buffer.putLong(i10 - 7, (j6 & 127) | 128 | ((71494644084506624L & j6) << 7) | (((558551906910208L & j6) | 562949953421312L) << 6) | (((4363686772736L & j6) | 4398046511104L) << 5) | (((34091302912L & j6) | 34359738368L) << 4) | (((266338304 & j6) | 268435456) << 3) | (((2080768 & j6) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j6) | 16384) << 1));
        }

        private void k0(long j6) {
            int i10 = this.pos;
            this.pos = i10 - 8;
            this.buffer.putLong(i10 - 7, (j6 & 127) | 128 | (((71494644084506624L & j6) | 72057594037927936L) << 7) | (((558551906910208L & j6) | 562949953421312L) << 6) | (((4363686772736L & j6) | 4398046511104L) << 5) | (((34091302912L & j6) | 34359738368L) << 4) | (((266338304 & j6) | 268435456) << 3) | (((2080768 & j6) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 2) | (((16256 & j6) | 16384) << 1));
        }

        private void l0(long j6) {
            int i10 = this.pos;
            this.pos = i10 - 5;
            this.buffer.putLong(i10 - 7, (((j6 & 127) | 128) << 24) | ((34091302912L & j6) << 28) | (((266338304 & j6) | 268435456) << 27) | (((2080768 & j6) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 26) | (((16256 & j6) | 16384) << 25));
        }

        private void n0(long j6) {
            ByteBuffer byteBuffer = this.buffer;
            int i10 = this.pos;
            this.pos = i10 - 1;
            byteBuffer.put(i10, (byte) (j6 >>> 56));
            k0(j6 & 72057594037927935L);
        }

        private void p0(long j6) {
            int i10 = this.pos - 7;
            this.pos = i10;
            this.buffer.putLong(i10, (((j6 & 127) | 128) << 8) | ((558551906910208L & j6) << 14) | (((4363686772736L & j6) | 4398046511104L) << 13) | (((34091302912L & j6) | 34359738368L) << 12) | (((266338304 & j6) | 268435456) << 11) | (((2080768 & j6) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 10) | (((16256 & j6) | 16384) << 9));
        }

        private void q0(long j6) {
            int i10 = this.pos;
            this.pos = i10 - 6;
            this.buffer.putLong(i10 - 7, (((j6 & 127) | 128) << 16) | ((4363686772736L & j6) << 21) | (((34091302912L & j6) | 34359738368L) << 20) | (((266338304 & j6) | 268435456) << 19) | (((2080768 & j6) | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) << 18) | (((16256 & j6) | 16384) << 17));
        }

        private void r0(long j6) {
            ByteBuffer byteBuffer = this.buffer;
            int i10 = this.pos;
            this.pos = i10 - 1;
            byteBuffer.put(i10, (byte) (j6 >>> 63));
            ByteBuffer byteBuffer2 = this.buffer;
            int i11 = this.pos;
            this.pos = i11 - 1;
            byteBuffer2.put(i11, (byte) (((j6 >>> 56) & 127) | 128));
            k0(j6 & 72057594037927935L);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void E(int i10) {
            if (i10 >= 0) {
                U(i10);
            } else {
                V(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void U(int i10) {
            if ((i10 & (-128)) == 0) {
                g0(i10);
                return;
            }
            if ((i10 & (-16384)) == 0) {
                i0(i10);
                return;
            }
            if (((-2097152) & i10) == 0) {
                h0(i10);
            } else if (((-268435456) & i10) == 0) {
                f0(i10);
            } else {
                e0(i10);
            }
        }

        void X() {
            if (this.buffer != null) {
                this.totalDoneBytes += W();
                this.buffer.position(this.pos + 1);
                this.buffer = null;
                this.pos = 0;
                this.limitMinusOne = 0;
            }
        }

        public void c0(byte b7) {
            ByteBuffer byteBuffer = this.buffer;
            int i10 = this.pos;
            this.pos = i10 - 1;
            byteBuffer.put(i10, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        public int l() {
            return this.totalDoneBytes + W();
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void w(int i10) {
            int i11 = this.pos;
            this.pos = i11 - 4;
            this.buffer.putInt(i11 - 3, i10);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed32(int i10, int i11) {
            q(9);
            w(i11);
            P(i10, 5);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed64(int i10, long j6) {
            q(13);
            z(j6);
            P(i10, 1);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeInt32(int i10, int i11) {
            q(15);
            E(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt32(int i10, int i11) {
            q(10);
            J(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt64(int i10, long j6) {
            q(15);
            M(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt32(int i10, int i11) {
            q(10);
            U(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt64(int i10, long j6) {
            q(15);
            V(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void z(long j6) {
            int i10 = this.pos;
            this.pos = i10 - 8;
            this.buffer.putLong(i10 - 7, j6);
        }

        private void Y() {
            a0(m());
        }

        private void Z(int i10) {
            a0(n(i10));
        }

        private void a0(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.d()) {
                ByteBuffer byteBufferF = allocatedBuffer.f();
                if (byteBufferF.isDirect()) {
                    X();
                    this.buffers.addFirst(allocatedBuffer);
                    this.buffer = byteBufferF;
                    byteBufferF.limit(byteBufferF.capacity());
                    this.buffer.position(0);
                    this.buffer.order(ByteOrder.LITTLE_ENDIAN);
                    int iLimit = this.buffer.limit() - 1;
                    this.limitMinusOne = iLimit;
                    this.pos = iLimit;
                    return;
                }
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            throw new RuntimeException("Allocated buffer does not have NIO buffer");
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void J(int i10) {
            U(CodedOutputStream.i0(i10));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void M(long j6) {
            V(CodedOutputStream.j0(j6));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void P(int i10, int i11) {
            U(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void V(long j6) {
            switch (BinaryWriter.k(j6)) {
                case 1:
                    o0(j6);
                    break;
                case 2:
                    t0(j6);
                    break;
                case 3:
                    s0(j6);
                    break;
                case 4:
                    m0(j6);
                    break;
                case 5:
                    l0(j6);
                    break;
                case 6:
                    q0(j6);
                    break;
                case 7:
                    p0(j6);
                    break;
                case 8:
                    j0(j6);
                    break;
                case 9:
                    n0(j6);
                    break;
                case 10:
                    r0(j6);
                    break;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void a(int i10, ByteString byteString) {
            try {
                byteString.N(this);
                q(10);
                U(byteString.size());
                P(i10, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void b(int i10, Object obj, Schema schema) throws IOException {
            int iL = l();
            schema.a(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        void d0(String str) {
            int i10;
            int i11;
            int i12;
            char cCharAt;
            q(str.length());
            int length = str.length() - 1;
            this.pos -= length;
            while (length >= 0 && (cCharAt = str.charAt(length)) < 128) {
                this.buffer.put(this.pos + length, (byte) cCharAt);
                length--;
            }
            if (length == -1) {
                this.pos--;
                return;
            }
            this.pos += length;
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128 && (i12 = this.pos) >= 0) {
                    ByteBuffer byteBuffer = this.buffer;
                    this.pos = i12 - 1;
                    byteBuffer.put(i12, (byte) cCharAt2);
                } else if (cCharAt2 < 2048 && (i11 = this.pos) > 0) {
                    ByteBuffer byteBuffer2 = this.buffer;
                    this.pos = i11 - 1;
                    byteBuffer2.put(i11, (byte) ((cCharAt2 & '?') | 128));
                    ByteBuffer byteBuffer3 = this.buffer;
                    int i13 = this.pos;
                    this.pos = i13 - 1;
                    byteBuffer3.put(i13, (byte) ((cCharAt2 >>> 6) | 960));
                } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && (i10 = this.pos) > 1) {
                    ByteBuffer byteBuffer4 = this.buffer;
                    this.pos = i10 - 1;
                    byteBuffer4.put(i10, (byte) ((cCharAt2 & '?') | 128));
                    ByteBuffer byteBuffer5 = this.buffer;
                    int i14 = this.pos;
                    this.pos = i14 - 1;
                    byteBuffer5.put(i14, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    ByteBuffer byteBuffer6 = this.buffer;
                    int i15 = this.pos;
                    this.pos = i15 - 1;
                    byteBuffer6.put(i15, (byte) ((cCharAt2 >>> '\f') | 480));
                } else {
                    if (this.pos > 2) {
                        if (length != 0) {
                            char cCharAt3 = str.charAt(length - 1);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                ByteBuffer byteBuffer7 = this.buffer;
                                int i16 = this.pos;
                                this.pos = i16 - 1;
                                byteBuffer7.put(i16, (byte) ((codePoint & 63) | 128));
                                ByteBuffer byteBuffer8 = this.buffer;
                                int i17 = this.pos;
                                this.pos = i17 - 1;
                                byteBuffer8.put(i17, (byte) (((codePoint >>> 6) & 63) | 128));
                                ByteBuffer byteBuffer9 = this.buffer;
                                int i18 = this.pos;
                                this.pos = i18 - 1;
                                byteBuffer9.put(i18, (byte) (((codePoint >>> 12) & 63) | 128));
                                ByteBuffer byteBuffer10 = this.buffer;
                                int i19 = this.pos;
                                this.pos = i19 - 1;
                                byteBuffer10.put(i19, (byte) ((codePoint >>> 18) | 240));
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    q(length);
                    length++;
                }
                length--;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) {
            if (b0() < i11) {
                Z(i11);
            }
            int i12 = this.pos - i11;
            this.pos = i12;
            this.buffer.position(i12 + 1);
            this.buffer.put(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (b0() < iRemaining) {
                this.totalDoneBytes += iRemaining;
                this.buffers.addFirst(AllocatedBuffer.i(byteBuffer));
                Y();
            } else {
                int i10 = this.pos - iRemaining;
                this.pos = i10;
                this.buffer.position(i10 + 1);
                this.buffer.put(byteBuffer);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) {
            if (b0() < i11) {
                this.totalDoneBytes += i11;
                this.buffers.addFirst(AllocatedBuffer.k(bArr, i10, i11));
                Y();
            } else {
                int i12 = this.pos - i11;
                this.pos = i12;
                this.buffer.position(i12 + 1);
                this.buffer.put(bArr, i10, i11);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void q(int i10) {
            if (b0() < i10) {
                Z(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeMessage(int i10, Object obj) throws IOException {
            int iL = l();
            Protobuf.a().f(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeString(int i10, String str) {
            int iL = l();
            d0(str);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }
    }

    private static final class SafeHeapWriter extends BinaryWriter {
        private AllocatedBuffer allocatedBuffer;
        private byte[] buffer;
        private int limit;
        private int limitMinusOne;
        private int offset;
        private int offsetMinusOne;
        private int pos;

        int W() {
            return this.limitMinusOne - this.pos;
        }

        int b0() {
            return this.pos - this.offsetMinusOne;
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void e(int i10, Object obj, Schema schema) throws IOException {
            P(i10, 4);
            schema.a(obj, this);
            P(i10, 3);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void r(boolean z6) {
            c0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeBool(int i10, boolean z6) throws IOException {
            q(6);
            c0(z6 ? (byte) 1 : (byte) 0);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeEndGroup(int i10) {
            P(i10, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeStartGroup(int i10) {
            P(i10, 3);
        }

        private void e0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            bArr[i11] = (byte) (i10 >>> 28);
            bArr[i11 - 1] = (byte) (((i10 >>> 21) & 127) | 128);
            bArr[i11 - 2] = (byte) (((i10 >>> 14) & 127) | 128);
            bArr[i11 - 3] = (byte) (((i10 >>> 7) & 127) | 128);
            this.pos = i11 - 5;
            bArr[i11 - 4] = (byte) ((i10 & 127) | 128);
        }

        private void f0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            bArr[i11] = (byte) (i10 >>> 21);
            bArr[i11 - 1] = (byte) (((i10 >>> 14) & 127) | 128);
            bArr[i11 - 2] = (byte) (((i10 >>> 7) & 127) | 128);
            this.pos = i11 - 4;
            bArr[i11 - 3] = (byte) ((i10 & 127) | 128);
        }

        private void g0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            this.pos = i11 - 1;
            bArr[i11] = (byte) i10;
        }

        private void h0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            bArr[i11] = (byte) (i10 >>> 14);
            bArr[i11 - 1] = (byte) (((i10 >>> 7) & 127) | 128);
            this.pos = i11 - 3;
            bArr[i11 - 2] = (byte) ((i10 & 127) | 128);
        }

        private void i0(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            bArr[i11] = (byte) (i10 >>> 7);
            this.pos = i11 - 2;
            bArr[i11 - 1] = (byte) ((i10 & 127) | 128);
        }

        private void j0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 49);
            bArr[i10 - 1] = (byte) (((j6 >>> 42) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 35) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 28) & 127) | 128);
            bArr[i10 - 4] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 5] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 6] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 8;
            bArr[i10 - 7] = (byte) ((j6 & 127) | 128);
        }

        private void k0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 28);
            bArr[i10 - 1] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 5;
            bArr[i10 - 4] = (byte) ((j6 & 127) | 128);
        }

        private void l0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 21);
            bArr[i10 - 1] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 4;
            bArr[i10 - 3] = (byte) ((j6 & 127) | 128);
        }

        private void m0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 56);
            bArr[i10 - 1] = (byte) (((j6 >>> 49) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 42) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 35) & 127) | 128);
            bArr[i10 - 4] = (byte) (((j6 >>> 28) & 127) | 128);
            bArr[i10 - 5] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 6] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 7] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 9;
            bArr[i10 - 8] = (byte) ((j6 & 127) | 128);
        }

        private void n0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            this.pos = i10 - 1;
            bArr[i10] = (byte) j6;
        }

        private void o0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 42);
            bArr[i10 - 1] = (byte) (((j6 >>> 35) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 28) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 4] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 5] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 7;
            bArr[i10 - 6] = (byte) ((j6 & 127) | 128);
        }

        private void p0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 35);
            bArr[i10 - 1] = (byte) (((j6 >>> 28) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 4] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 6;
            bArr[i10 - 5] = (byte) ((j6 & 127) | 128);
        }

        private void q0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 63);
            bArr[i10 - 1] = (byte) (((j6 >>> 56) & 127) | 128);
            bArr[i10 - 2] = (byte) (((j6 >>> 49) & 127) | 128);
            bArr[i10 - 3] = (byte) (((j6 >>> 42) & 127) | 128);
            bArr[i10 - 4] = (byte) (((j6 >>> 35) & 127) | 128);
            bArr[i10 - 5] = (byte) (((j6 >>> 28) & 127) | 128);
            bArr[i10 - 6] = (byte) (((j6 >>> 21) & 127) | 128);
            bArr[i10 - 7] = (byte) (((j6 >>> 14) & 127) | 128);
            bArr[i10 - 8] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 10;
            bArr[i10 - 9] = (byte) ((j6 & 127) | 128);
        }

        private void r0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (((int) j6) >>> 14);
            bArr[i10 - 1] = (byte) (((j6 >>> 7) & 127) | 128);
            this.pos = i10 - 3;
            bArr[i10 - 2] = (byte) ((j6 & 127) | 128);
        }

        private void s0(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (j6 >>> 7);
            this.pos = i10 - 2;
            bArr[i10 - 1] = (byte) ((((int) j6) & 127) | 128);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void E(int i10) {
            if (i10 >= 0) {
                U(i10);
            } else {
                V(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void U(int i10) {
            if ((i10 & (-128)) == 0) {
                g0(i10);
                return;
            }
            if ((i10 & (-16384)) == 0) {
                i0(i10);
                return;
            }
            if (((-2097152) & i10) == 0) {
                h0(i10);
            } else if (((-268435456) & i10) == 0) {
                f0(i10);
            } else {
                e0(i10);
            }
        }

        void X() {
            if (this.allocatedBuffer != null) {
                this.totalDoneBytes += W();
                AllocatedBuffer allocatedBuffer = this.allocatedBuffer;
                allocatedBuffer.h((this.pos - allocatedBuffer.b()) + 1);
                this.allocatedBuffer = null;
                this.pos = 0;
                this.limitMinusOne = 0;
            }
        }

        public void c0(byte b7) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            this.pos = i10 - 1;
            bArr[i10] = b7;
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        public int l() {
            return this.totalDoneBytes + W();
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void w(int i10) {
            byte[] bArr = this.buffer;
            int i11 = this.pos;
            bArr[i11] = (byte) ((i10 >> 24) & 255);
            bArr[i11 - 1] = (byte) ((i10 >> 16) & 255);
            bArr[i11 - 2] = (byte) ((i10 >> 8) & 255);
            this.pos = i11 - 4;
            bArr[i11 - 3] = (byte) (i10 & 255);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed32(int i10, int i11) throws IOException {
            q(9);
            w(i11);
            P(i10, 5);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed64(int i10, long j6) throws IOException {
            q(13);
            z(j6);
            P(i10, 1);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeInt32(int i10, int i11) throws IOException {
            q(15);
            E(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt32(int i10, int i11) throws IOException {
            q(10);
            J(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt64(int i10, long j6) throws IOException {
            q(15);
            M(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt32(int i10, int i11) throws IOException {
            q(10);
            U(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt64(int i10, long j6) throws IOException {
            q(15);
            V(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void z(long j6) {
            byte[] bArr = this.buffer;
            int i10 = this.pos;
            bArr[i10] = (byte) (((int) (j6 >> 56)) & 255);
            bArr[i10 - 1] = (byte) (((int) (j6 >> 48)) & 255);
            bArr[i10 - 2] = (byte) (((int) (j6 >> 40)) & 255);
            bArr[i10 - 3] = (byte) (((int) (j6 >> 32)) & 255);
            bArr[i10 - 4] = (byte) (((int) (j6 >> 24)) & 255);
            bArr[i10 - 5] = (byte) (((int) (j6 >> 16)) & 255);
            bArr[i10 - 6] = (byte) (((int) (j6 >> 8)) & 255);
            this.pos = i10 - 8;
            bArr[i10 - 7] = (byte) (((int) j6) & 255);
        }

        private void Y() {
            a0(o());
        }

        private void Z(int i10) {
            a0(p(i10));
        }

        private void a0(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.c()) {
                X();
                this.buffers.addFirst(allocatedBuffer);
                this.allocatedBuffer = allocatedBuffer;
                this.buffer = allocatedBuffer.a();
                int iB = allocatedBuffer.b();
                this.limit = allocatedBuffer.e() + iB;
                int iG = iB + allocatedBuffer.g();
                this.offset = iG;
                this.offsetMinusOne = iG - 1;
                int i10 = this.limit - 1;
                this.limitMinusOne = i10;
                this.pos = i10;
                return;
            }
            throw new RuntimeException("Allocator returned non-heap buffer");
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void J(int i10) {
            U(CodedOutputStream.i0(i10));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void M(long j6) {
            V(CodedOutputStream.j0(j6));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void P(int i10, int i11) {
            U(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void V(long j6) {
            switch (BinaryWriter.k(j6)) {
                case 1:
                    n0(j6);
                    break;
                case 2:
                    s0(j6);
                    break;
                case 3:
                    r0(j6);
                    break;
                case 4:
                    l0(j6);
                    break;
                case 5:
                    k0(j6);
                    break;
                case 6:
                    p0(j6);
                    break;
                case 7:
                    o0(j6);
                    break;
                case 8:
                    j0(j6);
                    break;
                case 9:
                    m0(j6);
                    break;
                case 10:
                    q0(j6);
                    break;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void a(int i10, ByteString byteString) throws IOException {
            try {
                byteString.N(this);
                q(10);
                U(byteString.size());
                P(i10, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void b(int i10, Object obj, Schema schema) throws IOException {
            int iL = l();
            schema.a(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        void d0(String str) {
            int i10;
            int i11;
            int i12;
            char cCharAt;
            q(str.length());
            int length = str.length() - 1;
            this.pos -= length;
            while (length >= 0 && (cCharAt = str.charAt(length)) < 128) {
                this.buffer[this.pos + length] = (byte) cCharAt;
                length--;
            }
            if (length == -1) {
                this.pos--;
                return;
            }
            this.pos += length;
            while (length >= 0) {
                char cCharAt2 = str.charAt(length);
                if (cCharAt2 < 128 && (i12 = this.pos) > this.offsetMinusOne) {
                    byte[] bArr = this.buffer;
                    this.pos = i12 - 1;
                    bArr[i12] = (byte) cCharAt2;
                } else if (cCharAt2 < 2048 && (i11 = this.pos) > this.offset) {
                    byte[] bArr2 = this.buffer;
                    bArr2[i11] = (byte) ((cCharAt2 & '?') | 128);
                    this.pos = i11 - 2;
                    bArr2[i11 - 1] = (byte) ((cCharAt2 >>> 6) | 960);
                } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && (i10 = this.pos) > this.offset + 1) {
                    byte[] bArr3 = this.buffer;
                    bArr3[i10] = (byte) ((cCharAt2 & '?') | 128);
                    bArr3[i10 - 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    this.pos = i10 - 3;
                    bArr3[i10 - 2] = (byte) ((cCharAt2 >>> '\f') | 480);
                } else {
                    if (this.pos > this.offset + 2) {
                        if (length != 0) {
                            char cCharAt3 = str.charAt(length - 1);
                            if (Character.isSurrogatePair(cCharAt3, cCharAt2)) {
                                length--;
                                int codePoint = Character.toCodePoint(cCharAt3, cCharAt2);
                                byte[] bArr4 = this.buffer;
                                int i13 = this.pos;
                                bArr4[i13] = (byte) ((codePoint & 63) | 128);
                                bArr4[i13 - 1] = (byte) (((codePoint >>> 6) & 63) | 128);
                                bArr4[i13 - 2] = (byte) (((codePoint >>> 12) & 63) | 128);
                                this.pos = i13 - 4;
                                bArr4[i13 - 3] = (byte) ((codePoint >>> 18) | 240);
                            }
                        }
                        throw new Utf8.UnpairedSurrogateException(length - 1, length);
                    }
                    q(length);
                    length++;
                }
                length--;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) {
            if (b0() < i11) {
                Z(i11);
            }
            int i12 = this.pos - i11;
            this.pos = i12;
            System.arraycopy(bArr, i10, this.buffer, i12 + 1, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (b0() < iRemaining) {
                this.totalDoneBytes += iRemaining;
                this.buffers.addFirst(AllocatedBuffer.i(byteBuffer));
                Y();
            }
            int i10 = this.pos - iRemaining;
            this.pos = i10;
            byteBuffer.get(this.buffer, i10 + 1, iRemaining);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) {
            if (b0() < i11) {
                this.totalDoneBytes += i11;
                this.buffers.addFirst(AllocatedBuffer.k(bArr, i10, i11));
                Y();
            } else {
                int i12 = this.pos - i11;
                this.pos = i12;
                System.arraycopy(bArr, i10, this.buffer, i12 + 1, i11);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void q(int i10) {
            if (b0() < i10) {
                Z(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeMessage(int i10, Object obj) throws IOException {
            int iL = l();
            Protobuf.a().f(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeString(int i10, String str) throws IOException {
            int iL = l();
            d0(str);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }
    }

    private static final class UnsafeDirectWriter extends BinaryWriter {
        private ByteBuffer buffer;
        private long bufferOffset;
        private long limitMinusOne;
        private long pos;

        private int W() {
            return (int) (this.pos - this.bufferOffset);
        }

        private int X() {
            return (int) (this.limitMinusOne - this.pos);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void e(int i10, Object obj, Schema schema) throws IOException {
            P(i10, 4);
            schema.a(obj, this);
            P(i10, 3);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void r(boolean z6) {
            d0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeBool(int i10, boolean z6) {
            q(6);
            d0(z6 ? (byte) 1 : (byte) 0);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeEndGroup(int i10) {
            P(i10, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeStartGroup(int i10) {
            P(i10, 3);
        }

        private void f0(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) (i10 >>> 28));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (((i10 >>> 21) & 127) | 128));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((i10 >>> 14) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((i10 >>> 7) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) ((i10 & 127) | 128));
        }

        private void g0(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) (i10 >>> 21));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (((i10 >>> 14) & 127) | 128));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((i10 >>> 7) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) ((i10 & 127) | 128));
        }

        private void h0(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) i10);
        }

        private void i0(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) (i10 >>> 14));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (((i10 >>> 7) & 127) | 128));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) ((i10 & 127) | 128));
        }

        private void j0(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) (i10 >>> 7));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) ((i10 & 127) | 128));
        }

        private void k0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 49));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 42) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 35) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 28) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((j6 >>> 21) & 127) | 128));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) (((j6 >>> 14) & 127) | 128));
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.N(j16, (byte) (((j6 >>> 7) & 127) | 128));
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.N(j17, (byte) ((j6 & 127) | 128));
        }

        private void l0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 28));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 21) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 14) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 7) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) ((j6 & 127) | 128));
        }

        private void m0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 21));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 14) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 7) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) ((j6 & 127) | 128));
        }

        private void n0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 56));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 49) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 42) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 35) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((j6 >>> 28) & 127) | 128));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) (((j6 >>> 21) & 127) | 128));
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.N(j16, (byte) (((j6 >>> 14) & 127) | 128));
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.N(j17, (byte) (((j6 >>> 7) & 127) | 128));
            long j18 = this.pos;
            this.pos = j18 - 1;
            UnsafeUtil.N(j18, (byte) ((j6 & 127) | 128));
        }

        private void o0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) j6);
        }

        private void p0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 42));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 35) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 28) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 21) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((j6 >>> 14) & 127) | 128));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) (((j6 >>> 7) & 127) | 128));
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.N(j16, (byte) ((j6 & 127) | 128));
        }

        private void q0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 35));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 28) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 21) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 14) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((j6 >>> 7) & 127) | 128));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) ((j6 & 127) | 128));
        }

        private void r0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 63));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 56) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((j6 >>> 49) & 127) | 128));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((j6 >>> 42) & 127) | 128));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((j6 >>> 35) & 127) | 128));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) (((j6 >>> 28) & 127) | 128));
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.N(j16, (byte) (((j6 >>> 21) & 127) | 128));
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.N(j17, (byte) (((j6 >>> 14) & 127) | 128));
            long j18 = this.pos;
            this.pos = j18 - 1;
            UnsafeUtil.N(j18, (byte) (((j6 >>> 7) & 127) | 128));
            long j19 = this.pos;
            this.pos = j19 - 1;
            UnsafeUtil.N(j19, (byte) ((j6 & 127) | 128));
        }

        private void s0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (((int) j6) >>> 14));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((j6 >>> 7) & 127) | 128));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) ((j6 & 127) | 128));
        }

        private void t0(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (j6 >>> 7));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) ((((int) j6) & 127) | 128));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void E(int i10) {
            if (i10 >= 0) {
                U(i10);
            } else {
                V(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void U(int i10) {
            if ((i10 & (-128)) == 0) {
                h0(i10);
                return;
            }
            if ((i10 & (-16384)) == 0) {
                j0(i10);
                return;
            }
            if (((-2097152) & i10) == 0) {
                i0(i10);
            } else if (((-268435456) & i10) == 0) {
                g0(i10);
            } else {
                f0(i10);
            }
        }

        void Y() {
            if (this.buffer != null) {
                this.totalDoneBytes += X();
                this.buffer.position(W() + 1);
                this.buffer = null;
                this.pos = 0L;
                this.limitMinusOne = 0L;
            }
        }

        public void d0(byte b7) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        public int l() {
            return this.totalDoneBytes + X();
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void w(int i10) {
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.N(j6, (byte) ((i10 >> 24) & 255));
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) ((i10 >> 16) & 255));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) ((i10 >> 8) & 255));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (i10 & 255));
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed32(int i10, int i11) {
            q(9);
            w(i11);
            P(i10, 5);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed64(int i10, long j6) {
            q(13);
            z(j6);
            P(i10, 1);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeInt32(int i10, int i11) {
            q(15);
            E(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt32(int i10, int i11) {
            q(10);
            J(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt64(int i10, long j6) {
            q(15);
            M(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt32(int i10, int i11) {
            q(10);
            U(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt64(int i10, long j6) {
            q(15);
            V(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void z(long j6) {
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.N(j10, (byte) (((int) (j6 >> 56)) & 255));
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.N(j11, (byte) (((int) (j6 >> 48)) & 255));
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.N(j12, (byte) (((int) (j6 >> 40)) & 255));
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.N(j13, (byte) (((int) (j6 >> 32)) & 255));
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.N(j14, (byte) (((int) (j6 >> 24)) & 255));
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.N(j15, (byte) (((int) (j6 >> 16)) & 255));
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.N(j16, (byte) (((int) (j6 >> 8)) & 255));
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.N(j17, (byte) (((int) j6) & 255));
        }

        private void Z() {
            b0(m());
        }

        private void a0(int i10) {
            b0(n(i10));
        }

        private void b0(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.d()) {
                ByteBuffer byteBufferF = allocatedBuffer.f();
                if (byteBufferF.isDirect()) {
                    Y();
                    this.buffers.addFirst(allocatedBuffer);
                    this.buffer = byteBufferF;
                    byteBufferF.limit(byteBufferF.capacity());
                    this.buffer.position(0);
                    long jI = UnsafeUtil.i(this.buffer);
                    this.bufferOffset = jI;
                    long jLimit = jI + ((long) (this.buffer.limit() - 1));
                    this.limitMinusOne = jLimit;
                    this.pos = jLimit;
                    return;
                }
                throw new RuntimeException("Allocator returned non-direct buffer");
            }
            throw new RuntimeException("Allocated buffer does not have NIO buffer");
        }

        private int c0() {
            return W() + 1;
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void J(int i10) {
            U(CodedOutputStream.i0(i10));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void M(long j6) {
            V(CodedOutputStream.j0(j6));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void P(int i10, int i11) {
            U(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void V(long j6) {
            switch (BinaryWriter.k(j6)) {
                case 1:
                    o0(j6);
                    break;
                case 2:
                    t0(j6);
                    break;
                case 3:
                    s0(j6);
                    break;
                case 4:
                    m0(j6);
                    break;
                case 5:
                    l0(j6);
                    break;
                case 6:
                    q0(j6);
                    break;
                case 7:
                    p0(j6);
                    break;
                case 8:
                    k0(j6);
                    break;
                case 9:
                    n0(j6);
                    break;
                case 10:
                    r0(j6);
                    break;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void a(int i10, ByteString byteString) {
            try {
                byteString.N(this);
                q(10);
                U(byteString.size());
                P(i10, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void b(int i10, Object obj, Schema schema) throws IOException {
            int iL = l();
            schema.a(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0044  */
        /* JADX WARN: Code duplicated, block: B:19:0x0048  */
        /* JADX WARN: Code duplicated, block: B:21:0x0050  */
        /* JADX WARN: Code duplicated, block: B:22:0x006b  */
        /* JADX WARN: Code duplicated, block: B:24:0x0070  */
        /* JADX WARN: Code duplicated, block: B:26:0x0075  */
        /* JADX WARN: Code duplicated, block: B:28:0x007e  */
        /* JADX WARN: Code duplicated, block: B:29:0x00a7  */
        /* JADX WARN: Code duplicated, block: B:31:0x00b2 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:32:0x00b4  */
        /* JADX WARN: Code duplicated, block: B:34:0x00c0  */
        /* JADX WARN: Code duplicated, block: B:37:0x0108  */
        /* JADX WARN: Code duplicated, block: B:43:0x0100 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:44:0x0100 A[SYNTHETIC] */
        void e0(String str) {
            long j6;
            char cCharAt;
            long j10;
            char cCharAt2;
            q(str.length());
            int length = str.length();
            while (true) {
                length--;
                if (length < 0 || (cCharAt2 = str.charAt(length)) >= 128) {
                    break;
                }
                long j11 = this.pos;
                this.pos = j11 - 1;
                UnsafeUtil.N(j11, (byte) cCharAt2);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char cCharAt3 = str.charAt(length);
                if (cCharAt3 < 128) {
                    long j12 = this.pos;
                    if (j12 >= this.bufferOffset) {
                        this.pos = j12 - 1;
                        UnsafeUtil.N(j12, (byte) cCharAt3);
                    } else if (cCharAt3 < 2048) {
                        j10 = this.pos;
                        if (j10 > this.bufferOffset) {
                            this.pos = j10 - 1;
                            UnsafeUtil.N(j10, (byte) ((cCharAt3 & '?') | 128));
                            long j13 = this.pos;
                            this.pos = j13 - 1;
                            UnsafeUtil.N(j13, (byte) ((cCharAt3 >>> 6) | 960));
                        } else if (cCharAt3 >= 55296 || 57343 < cCharAt3) {
                            j6 = this.pos;
                            if (j6 > this.bufferOffset + 1) {
                                this.pos = j6 - 1;
                                UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                                long j14 = this.pos;
                                this.pos = j14 - 1;
                                UnsafeUtil.N(j14, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                                long j15 = this.pos;
                                this.pos = j15 - 1;
                                UnsafeUtil.N(j15, (byte) ((cCharAt3 >>> '\f') | 480));
                            } else {
                                if (this.pos > this.bufferOffset + 2) {
                                    if (length != 0) {
                                        cCharAt = str.charAt(length - 1);
                                        if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                            length--;
                                            int codePoint = Character.toCodePoint(cCharAt, cCharAt3);
                                            long j16 = this.pos;
                                            this.pos = j16 - 1;
                                            UnsafeUtil.N(j16, (byte) ((codePoint & 63) | 128));
                                            long j17 = this.pos;
                                            this.pos = j17 - 1;
                                            UnsafeUtil.N(j17, (byte) (((codePoint >>> 6) & 63) | 128));
                                            long j18 = this.pos;
                                            this.pos = j18 - 1;
                                            UnsafeUtil.N(j18, (byte) (((codePoint >>> 12) & 63) | 128));
                                            long j19 = this.pos;
                                            this.pos = j19 - 1;
                                            UnsafeUtil.N(j19, (byte) ((codePoint >>> 18) | 240));
                                        }
                                    }
                                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                                }
                                q(length);
                                length++;
                            }
                        } else {
                            if (this.pos > this.bufferOffset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint2 = Character.toCodePoint(cCharAt, cCharAt3);
                                        long j110 = this.pos;
                                        this.pos = j110 - 1;
                                        UnsafeUtil.N(j110, (byte) ((codePoint2 & 63) | 128));
                                        long j111 = this.pos;
                                        this.pos = j111 - 1;
                                        UnsafeUtil.N(j111, (byte) (((codePoint2 >>> 6) & 63) | 128));
                                        long j112 = this.pos;
                                        this.pos = j112 - 1;
                                        UnsafeUtil.N(j112, (byte) (((codePoint2 >>> 12) & 63) | 128));
                                        long j113 = this.pos;
                                        this.pos = j113 - 1;
                                        UnsafeUtil.N(j113, (byte) ((codePoint2 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else if (cCharAt3 >= 55296) {
                        j6 = this.pos;
                        if (j6 > this.bufferOffset + 1) {
                            this.pos = j6 - 1;
                            UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                            long j114 = this.pos;
                            this.pos = j114 - 1;
                            UnsafeUtil.N(j114, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            long j115 = this.pos;
                            this.pos = j115 - 1;
                            UnsafeUtil.N(j115, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.bufferOffset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint3 = Character.toCodePoint(cCharAt, cCharAt3);
                                        long j116 = this.pos;
                                        this.pos = j116 - 1;
                                        UnsafeUtil.N(j116, (byte) ((codePoint3 & 63) | 128));
                                        long j117 = this.pos;
                                        this.pos = j117 - 1;
                                        UnsafeUtil.N(j117, (byte) (((codePoint3 >>> 6) & 63) | 128));
                                        long j118 = this.pos;
                                        this.pos = j118 - 1;
                                        UnsafeUtil.N(j118, (byte) (((codePoint3 >>> 12) & 63) | 128));
                                        long j119 = this.pos;
                                        this.pos = j119 - 1;
                                        UnsafeUtil.N(j119, (byte) ((codePoint3 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else {
                        j6 = this.pos;
                        if (j6 > this.bufferOffset + 1) {
                            this.pos = j6 - 1;
                            UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                            long j1110 = this.pos;
                            this.pos = j1110 - 1;
                            UnsafeUtil.N(j1110, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            long j1111 = this.pos;
                            this.pos = j1111 - 1;
                            UnsafeUtil.N(j1111, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.bufferOffset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint4 = Character.toCodePoint(cCharAt, cCharAt3);
                                        long j1112 = this.pos;
                                        this.pos = j1112 - 1;
                                        UnsafeUtil.N(j1112, (byte) ((codePoint4 & 63) | 128));
                                        long j1113 = this.pos;
                                        this.pos = j1113 - 1;
                                        UnsafeUtil.N(j1113, (byte) (((codePoint4 >>> 6) & 63) | 128));
                                        long j1114 = this.pos;
                                        this.pos = j1114 - 1;
                                        UnsafeUtil.N(j1114, (byte) (((codePoint4 >>> 12) & 63) | 128));
                                        long j1115 = this.pos;
                                        this.pos = j1115 - 1;
                                        UnsafeUtil.N(j1115, (byte) ((codePoint4 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    }
                } else if (cCharAt3 < 2048) {
                    j10 = this.pos;
                    if (j10 > this.bufferOffset) {
                        this.pos = j10 - 1;
                        UnsafeUtil.N(j10, (byte) ((cCharAt3 & '?') | 128));
                        long j120 = this.pos;
                        this.pos = j120 - 1;
                        UnsafeUtil.N(j120, (byte) ((cCharAt3 >>> 6) | 960));
                    } else if (cCharAt3 >= 55296) {
                        j6 = this.pos;
                        if (j6 > this.bufferOffset + 1) {
                            this.pos = j6 - 1;
                            UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                            long j1116 = this.pos;
                            this.pos = j1116 - 1;
                            UnsafeUtil.N(j1116, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            long j1117 = this.pos;
                            this.pos = j1117 - 1;
                            UnsafeUtil.N(j1117, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.bufferOffset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint5 = Character.toCodePoint(cCharAt, cCharAt3);
                                        long j1118 = this.pos;
                                        this.pos = j1118 - 1;
                                        UnsafeUtil.N(j1118, (byte) ((codePoint5 & 63) | 128));
                                        long j1119 = this.pos;
                                        this.pos = j1119 - 1;
                                        UnsafeUtil.N(j1119, (byte) (((codePoint5 >>> 6) & 63) | 128));
                                        long j11110 = this.pos;
                                        this.pos = j11110 - 1;
                                        UnsafeUtil.N(j11110, (byte) (((codePoint5 >>> 12) & 63) | 128));
                                        long j11111 = this.pos;
                                        this.pos = j11111 - 1;
                                        UnsafeUtil.N(j11111, (byte) ((codePoint5 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else {
                        j6 = this.pos;
                        if (j6 > this.bufferOffset + 1) {
                            this.pos = j6 - 1;
                            UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                            long j11112 = this.pos;
                            this.pos = j11112 - 1;
                            UnsafeUtil.N(j11112, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            long j11113 = this.pos;
                            this.pos = j11113 - 1;
                            UnsafeUtil.N(j11113, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.bufferOffset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint6 = Character.toCodePoint(cCharAt, cCharAt3);
                                        long j11114 = this.pos;
                                        this.pos = j11114 - 1;
                                        UnsafeUtil.N(j11114, (byte) ((codePoint6 & 63) | 128));
                                        long j11115 = this.pos;
                                        this.pos = j11115 - 1;
                                        UnsafeUtil.N(j11115, (byte) (((codePoint6 >>> 6) & 63) | 128));
                                        long j11116 = this.pos;
                                        this.pos = j11116 - 1;
                                        UnsafeUtil.N(j11116, (byte) (((codePoint6 >>> 12) & 63) | 128));
                                        long j11117 = this.pos;
                                        this.pos = j11117 - 1;
                                        UnsafeUtil.N(j11117, (byte) ((codePoint6 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    }
                } else if (cCharAt3 >= 55296) {
                    j6 = this.pos;
                    if (j6 > this.bufferOffset + 1) {
                        this.pos = j6 - 1;
                        UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                        long j11118 = this.pos;
                        this.pos = j11118 - 1;
                        UnsafeUtil.N(j11118, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        long j11119 = this.pos;
                        this.pos = j11119 - 1;
                        UnsafeUtil.N(j11119, (byte) ((cCharAt3 >>> '\f') | 480));
                    } else {
                        if (this.pos > this.bufferOffset + 2) {
                            if (length != 0) {
                                cCharAt = str.charAt(length - 1);
                                if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                    length--;
                                    int codePoint7 = Character.toCodePoint(cCharAt, cCharAt3);
                                    long j111110 = this.pos;
                                    this.pos = j111110 - 1;
                                    UnsafeUtil.N(j111110, (byte) ((codePoint7 & 63) | 128));
                                    long j111111 = this.pos;
                                    this.pos = j111111 - 1;
                                    UnsafeUtil.N(j111111, (byte) (((codePoint7 >>> 6) & 63) | 128));
                                    long j111112 = this.pos;
                                    this.pos = j111112 - 1;
                                    UnsafeUtil.N(j111112, (byte) (((codePoint7 >>> 12) & 63) | 128));
                                    long j111113 = this.pos;
                                    this.pos = j111113 - 1;
                                    UnsafeUtil.N(j111113, (byte) ((codePoint7 >>> 18) | 240));
                                }
                            }
                            throw new Utf8.UnpairedSurrogateException(length - 1, length);
                        }
                        q(length);
                        length++;
                    }
                } else {
                    j6 = this.pos;
                    if (j6 > this.bufferOffset + 1) {
                        this.pos = j6 - 1;
                        UnsafeUtil.N(j6, (byte) ((cCharAt3 & '?') | 128));
                        long j111114 = this.pos;
                        this.pos = j111114 - 1;
                        UnsafeUtil.N(j111114, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        long j111115 = this.pos;
                        this.pos = j111115 - 1;
                        UnsafeUtil.N(j111115, (byte) ((cCharAt3 >>> '\f') | 480));
                    } else {
                        if (this.pos > this.bufferOffset + 2) {
                            if (length != 0) {
                                cCharAt = str.charAt(length - 1);
                                if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                    length--;
                                    int codePoint8 = Character.toCodePoint(cCharAt, cCharAt3);
                                    long j111116 = this.pos;
                                    this.pos = j111116 - 1;
                                    UnsafeUtil.N(j111116, (byte) ((codePoint8 & 63) | 128));
                                    long j111117 = this.pos;
                                    this.pos = j111117 - 1;
                                    UnsafeUtil.N(j111117, (byte) (((codePoint8 >>> 6) & 63) | 128));
                                    long j111118 = this.pos;
                                    this.pos = j111118 - 1;
                                    UnsafeUtil.N(j111118, (byte) (((codePoint8 >>> 12) & 63) | 128));
                                    long j111119 = this.pos;
                                    this.pos = j111119 - 1;
                                    UnsafeUtil.N(j111119, (byte) ((codePoint8 >>> 18) | 240));
                                }
                            }
                            throw new Utf8.UnpairedSurrogateException(length - 1, length);
                        }
                        q(length);
                        length++;
                    }
                }
                length--;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) {
            if (c0() < i11) {
                a0(i11);
            }
            this.pos -= (long) i11;
            this.buffer.position(W() + 1);
            this.buffer.put(bArr, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (c0() < iRemaining) {
                this.totalDoneBytes += iRemaining;
                this.buffers.addFirst(AllocatedBuffer.i(byteBuffer));
                Z();
            } else {
                this.pos -= (long) iRemaining;
                this.buffer.position(W() + 1);
                this.buffer.put(byteBuffer);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) {
            if (c0() < i11) {
                this.totalDoneBytes += i11;
                this.buffers.addFirst(AllocatedBuffer.k(bArr, i10, i11));
                Z();
            } else {
                this.pos -= (long) i11;
                this.buffer.position(W() + 1);
                this.buffer.put(bArr, i10, i11);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void q(int i10) {
            if (c0() < i10) {
                a0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeMessage(int i10, Object obj) throws IOException {
            int iL = l();
            Protobuf.a().f(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeString(int i10, String str) {
            int iL = l();
            e0(str);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }
    }

    private static final class UnsafeHeapWriter extends BinaryWriter {
        private AllocatedBuffer allocatedBuffer;
        private byte[] buffer;
        private long limit;
        private long limitMinusOne;
        private long offset;
        private long offsetMinusOne;
        private long pos;

        private int W() {
            return (int) this.pos;
        }

        int X() {
            return (int) (this.limitMinusOne - this.pos);
        }

        int c0() {
            return (int) (this.pos - this.offsetMinusOne);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void e(int i10, Object obj, Schema schema) throws IOException {
            P(i10, 4);
            schema.a(obj, this);
            P(i10, 3);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void g(byte[] bArr, int i10, int i11) {
            if (i10 < 0 || i10 + i11 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            q(i11);
            this.pos -= (long) i11;
            System.arraycopy(bArr, i10, this.buffer, W() + 1, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void i(byte[] bArr, int i10, int i11) {
            if (i10 < 0 || i10 + i11 > bArr.length) {
                throw new ArrayIndexOutOfBoundsException(String.format("value.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            if (c0() >= i11) {
                this.pos -= (long) i11;
                System.arraycopy(bArr, i10, this.buffer, W() + 1, i11);
            } else {
                this.totalDoneBytes += i11;
                this.buffers.addFirst(AllocatedBuffer.k(bArr, i10, i11));
                Z();
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void r(boolean z6) {
            d0(z6 ? (byte) 1 : (byte) 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeBool(int i10, boolean z6) {
            q(6);
            d0(z6 ? (byte) 1 : (byte) 0);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeEndGroup(int i10) {
            P(i10, 4);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeStartGroup(int i10) {
            P(i10, 3);
        }

        private void f0(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) (i10 >>> 28));
            byte[] bArr2 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr2, j10, (byte) (((i10 >>> 21) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr3, j11, (byte) (((i10 >>> 14) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr4, j12, (byte) (((i10 >>> 7) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr5, j13, (byte) ((i10 & 127) | 128));
        }

        private void g0(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) (i10 >>> 21));
            byte[] bArr2 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr2, j10, (byte) (((i10 >>> 14) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr3, j11, (byte) (((i10 >>> 7) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr4, j12, (byte) ((i10 & 127) | 128));
        }

        private void h0(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) i10);
        }

        private void i0(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) (i10 >>> 14));
            byte[] bArr2 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr2, j10, (byte) (((i10 >>> 7) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr3, j11, (byte) ((i10 & 127) | 128));
        }

        private void j0(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) (i10 >>> 7));
            byte[] bArr2 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr2, j10, (byte) ((i10 & 127) | 128));
        }

        private void k0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 49));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 42) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 35) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 28) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.O(bArr7, j16, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.O(bArr8, j17, (byte) ((j6 & 127) | 128));
        }

        private void l0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 28));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) ((j6 & 127) | 128));
        }

        private void m0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 21));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) ((j6 & 127) | 128));
        }

        private void n0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 56));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 49) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 42) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 35) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((j6 >>> 28) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.O(bArr7, j16, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.O(bArr8, j17, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr9 = this.buffer;
            long j18 = this.pos;
            this.pos = j18 - 1;
            UnsafeUtil.O(bArr9, j18, (byte) ((j6 & 127) | 128));
        }

        private void o0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) j6);
        }

        private void p0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 42));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 35) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 28) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.O(bArr7, j16, (byte) ((j6 & 127) | 128));
        }

        private void q0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 35));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 28) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) ((j6 & 127) | 128));
        }

        private void r0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 63));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 56) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((j6 >>> 49) & 127) | 128));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((j6 >>> 42) & 127) | 128));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((j6 >>> 35) & 127) | 128));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) (((j6 >>> 28) & 127) | 128));
            byte[] bArr7 = this.buffer;
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.O(bArr7, j16, (byte) (((j6 >>> 21) & 127) | 128));
            byte[] bArr8 = this.buffer;
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.O(bArr8, j17, (byte) (((j6 >>> 14) & 127) | 128));
            byte[] bArr9 = this.buffer;
            long j18 = this.pos;
            this.pos = j18 - 1;
            UnsafeUtil.O(bArr9, j18, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr10 = this.buffer;
            long j19 = this.pos;
            this.pos = j19 - 1;
            UnsafeUtil.O(bArr10, j19, (byte) ((j6 & 127) | 128));
        }

        private void s0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (((int) j6) >>> 14));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((j6 >>> 7) & 127) | 128));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) ((j6 & 127) | 128));
        }

        private void t0(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (j6 >>> 7));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) ((((int) j6) & 127) | 128));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void E(int i10) {
            if (i10 >= 0) {
                U(i10);
            } else {
                V(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void U(int i10) {
            if ((i10 & (-128)) == 0) {
                h0(i10);
                return;
            }
            if ((i10 & (-16384)) == 0) {
                j0(i10);
                return;
            }
            if (((-2097152) & i10) == 0) {
                i0(i10);
            } else if (((-268435456) & i10) == 0) {
                g0(i10);
            } else {
                f0(i10);
            }
        }

        void Y() {
            if (this.allocatedBuffer != null) {
                this.totalDoneBytes += X();
                this.allocatedBuffer.h((W() - this.allocatedBuffer.b()) + 1);
                this.allocatedBuffer = null;
                this.pos = 0L;
                this.limitMinusOne = 0L;
            }
        }

        public void d0(byte b7) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, b7);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        public int l() {
            return this.totalDoneBytes + X();
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void w(int i10) {
            byte[] bArr = this.buffer;
            long j6 = this.pos;
            this.pos = j6 - 1;
            UnsafeUtil.O(bArr, j6, (byte) ((i10 >> 24) & 255));
            byte[] bArr2 = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr2, j10, (byte) ((i10 >> 16) & 255));
            byte[] bArr3 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr3, j11, (byte) ((i10 >> 8) & 255));
            byte[] bArr4 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr4, j12, (byte) (i10 & 255));
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed32(int i10, int i11) {
            q(9);
            w(i11);
            P(i10, 5);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeFixed64(int i10, long j6) {
            q(13);
            z(j6);
            P(i10, 1);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeInt32(int i10, int i11) {
            q(15);
            E(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt32(int i10, int i11) {
            q(10);
            J(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeSInt64(int i10, long j6) {
            q(15);
            M(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt32(int i10, int i11) {
            q(10);
            U(i11);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeUInt64(int i10, long j6) {
            q(15);
            V(j6);
            P(i10, 0);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void z(long j6) {
            byte[] bArr = this.buffer;
            long j10 = this.pos;
            this.pos = j10 - 1;
            UnsafeUtil.O(bArr, j10, (byte) (((int) (j6 >> 56)) & 255));
            byte[] bArr2 = this.buffer;
            long j11 = this.pos;
            this.pos = j11 - 1;
            UnsafeUtil.O(bArr2, j11, (byte) (((int) (j6 >> 48)) & 255));
            byte[] bArr3 = this.buffer;
            long j12 = this.pos;
            this.pos = j12 - 1;
            UnsafeUtil.O(bArr3, j12, (byte) (((int) (j6 >> 40)) & 255));
            byte[] bArr4 = this.buffer;
            long j13 = this.pos;
            this.pos = j13 - 1;
            UnsafeUtil.O(bArr4, j13, (byte) (((int) (j6 >> 32)) & 255));
            byte[] bArr5 = this.buffer;
            long j14 = this.pos;
            this.pos = j14 - 1;
            UnsafeUtil.O(bArr5, j14, (byte) (((int) (j6 >> 24)) & 255));
            byte[] bArr6 = this.buffer;
            long j15 = this.pos;
            this.pos = j15 - 1;
            UnsafeUtil.O(bArr6, j15, (byte) (((int) (j6 >> 16)) & 255));
            byte[] bArr7 = this.buffer;
            long j16 = this.pos;
            this.pos = j16 - 1;
            UnsafeUtil.O(bArr7, j16, (byte) (((int) (j6 >> 8)) & 255));
            byte[] bArr8 = this.buffer;
            long j17 = this.pos;
            this.pos = j17 - 1;
            UnsafeUtil.O(bArr8, j17, (byte) (((int) j6) & 255));
        }

        private void Z() {
            b0(o());
        }

        private void a0(int i10) {
            b0(p(i10));
        }

        private void b0(AllocatedBuffer allocatedBuffer) {
            if (allocatedBuffer.c()) {
                Y();
                this.buffers.addFirst(allocatedBuffer);
                this.allocatedBuffer = allocatedBuffer;
                this.buffer = allocatedBuffer.a();
                int iB = allocatedBuffer.b();
                this.limit = allocatedBuffer.e() + iB;
                long jG = iB + allocatedBuffer.g();
                this.offset = jG;
                this.offsetMinusOne = jG - 1;
                long j6 = this.limit - 1;
                this.limitMinusOne = j6;
                this.pos = j6;
                return;
            }
            throw new RuntimeException("Allocator returned non-heap buffer");
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void J(int i10) {
            U(CodedOutputStream.i0(i10));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void M(long j6) {
            V(CodedOutputStream.j0(j6));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void P(int i10, int i11) {
            U(WireFormat.c(i10, i11));
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void V(long j6) {
            switch (BinaryWriter.k(j6)) {
                case 1:
                    o0(j6);
                    break;
                case 2:
                    t0(j6);
                    break;
                case 3:
                    s0(j6);
                    break;
                case 4:
                    m0(j6);
                    break;
                case 5:
                    l0(j6);
                    break;
                case 6:
                    q0(j6);
                    break;
                case 7:
                    p0(j6);
                    break;
                case 8:
                    k0(j6);
                    break;
                case 9:
                    n0(j6);
                    break;
                case 10:
                    r0(j6);
                    break;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void a(int i10, ByteString byteString) {
            try {
                byteString.N(this);
                q(10);
                U(byteString.size());
                P(i10, 2);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void b(int i10, Object obj, Schema schema) throws IOException {
            int iL = l();
            schema.a(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0048  */
        /* JADX WARN: Code duplicated, block: B:19:0x004c  */
        /* JADX WARN: Code duplicated, block: B:21:0x0054  */
        /* JADX WARN: Code duplicated, block: B:22:0x0073  */
        /* JADX WARN: Code duplicated, block: B:24:0x0078  */
        /* JADX WARN: Code duplicated, block: B:26:0x007d  */
        /* JADX WARN: Code duplicated, block: B:28:0x0086  */
        /* JADX WARN: Code duplicated, block: B:29:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:31:0x00c0 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:32:0x00c2  */
        /* JADX WARN: Code duplicated, block: B:34:0x00ce  */
        /* JADX WARN: Code duplicated, block: B:37:0x011e  */
        /* JADX WARN: Code duplicated, block: B:43:0x0116 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:44:0x0116 A[SYNTHETIC] */
        void e0(String str) {
            long j6;
            char cCharAt;
            long j10;
            char cCharAt2;
            q(str.length());
            int length = str.length();
            while (true) {
                length--;
                if (length < 0 || (cCharAt2 = str.charAt(length)) >= 128) {
                    break;
                }
                byte[] bArr = this.buffer;
                long j11 = this.pos;
                this.pos = j11 - 1;
                UnsafeUtil.O(bArr, j11, (byte) cCharAt2);
            }
            if (length == -1) {
                return;
            }
            while (length >= 0) {
                char cCharAt3 = str.charAt(length);
                if (cCharAt3 < 128) {
                    long j12 = this.pos;
                    if (j12 > this.offsetMinusOne) {
                        byte[] bArr2 = this.buffer;
                        this.pos = j12 - 1;
                        UnsafeUtil.O(bArr2, j12, (byte) cCharAt3);
                    } else if (cCharAt3 < 2048) {
                        j10 = this.pos;
                        if (j10 > this.offset) {
                            byte[] bArr3 = this.buffer;
                            this.pos = j10 - 1;
                            UnsafeUtil.O(bArr3, j10, (byte) ((cCharAt3 & '?') | 128));
                            byte[] bArr4 = this.buffer;
                            long j13 = this.pos;
                            this.pos = j13 - 1;
                            UnsafeUtil.O(bArr4, j13, (byte) ((cCharAt3 >>> 6) | 960));
                        } else if (cCharAt3 >= 55296 || 57343 < cCharAt3) {
                            j6 = this.pos;
                            if (j6 > this.offset + 1) {
                                byte[] bArr5 = this.buffer;
                                this.pos = j6 - 1;
                                UnsafeUtil.O(bArr5, j6, (byte) ((cCharAt3 & '?') | 128));
                                byte[] bArr6 = this.buffer;
                                long j14 = this.pos;
                                this.pos = j14 - 1;
                                UnsafeUtil.O(bArr6, j14, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                                byte[] bArr7 = this.buffer;
                                long j15 = this.pos;
                                this.pos = j15 - 1;
                                UnsafeUtil.O(bArr7, j15, (byte) ((cCharAt3 >>> '\f') | 480));
                            } else {
                                if (this.pos > this.offset + 2) {
                                    if (length != 0) {
                                        cCharAt = str.charAt(length - 1);
                                        if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                            length--;
                                            int codePoint = Character.toCodePoint(cCharAt, cCharAt3);
                                            byte[] bArr8 = this.buffer;
                                            long j16 = this.pos;
                                            this.pos = j16 - 1;
                                            UnsafeUtil.O(bArr8, j16, (byte) ((codePoint & 63) | 128));
                                            byte[] bArr9 = this.buffer;
                                            long j17 = this.pos;
                                            this.pos = j17 - 1;
                                            UnsafeUtil.O(bArr9, j17, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byte[] bArr10 = this.buffer;
                                            long j18 = this.pos;
                                            this.pos = j18 - 1;
                                            UnsafeUtil.O(bArr10, j18, (byte) (((codePoint >>> 12) & 63) | 128));
                                            byte[] bArr11 = this.buffer;
                                            long j19 = this.pos;
                                            this.pos = j19 - 1;
                                            UnsafeUtil.O(bArr11, j19, (byte) ((codePoint >>> 18) | 240));
                                        }
                                    }
                                    throw new Utf8.UnpairedSurrogateException(length - 1, length);
                                }
                                q(length);
                                length++;
                            }
                        } else {
                            if (this.pos > this.offset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint2 = Character.toCodePoint(cCharAt, cCharAt3);
                                        byte[] bArr12 = this.buffer;
                                        long j110 = this.pos;
                                        this.pos = j110 - 1;
                                        UnsafeUtil.O(bArr12, j110, (byte) ((codePoint2 & 63) | 128));
                                        byte[] bArr13 = this.buffer;
                                        long j111 = this.pos;
                                        this.pos = j111 - 1;
                                        UnsafeUtil.O(bArr13, j111, (byte) (((codePoint2 >>> 6) & 63) | 128));
                                        byte[] bArr14 = this.buffer;
                                        long j112 = this.pos;
                                        this.pos = j112 - 1;
                                        UnsafeUtil.O(bArr14, j112, (byte) (((codePoint2 >>> 12) & 63) | 128));
                                        byte[] bArr15 = this.buffer;
                                        long j113 = this.pos;
                                        this.pos = j113 - 1;
                                        UnsafeUtil.O(bArr15, j113, (byte) ((codePoint2 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else if (cCharAt3 >= 55296) {
                        j6 = this.pos;
                        if (j6 > this.offset + 1) {
                            byte[] bArr16 = this.buffer;
                            this.pos = j6 - 1;
                            UnsafeUtil.O(bArr16, j6, (byte) ((cCharAt3 & '?') | 128));
                            byte[] bArr17 = this.buffer;
                            long j114 = this.pos;
                            this.pos = j114 - 1;
                            UnsafeUtil.O(bArr17, j114, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            byte[] bArr18 = this.buffer;
                            long j115 = this.pos;
                            this.pos = j115 - 1;
                            UnsafeUtil.O(bArr18, j115, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.offset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint3 = Character.toCodePoint(cCharAt, cCharAt3);
                                        byte[] bArr19 = this.buffer;
                                        long j116 = this.pos;
                                        this.pos = j116 - 1;
                                        UnsafeUtil.O(bArr19, j116, (byte) ((codePoint3 & 63) | 128));
                                        byte[] bArr110 = this.buffer;
                                        long j117 = this.pos;
                                        this.pos = j117 - 1;
                                        UnsafeUtil.O(bArr110, j117, (byte) (((codePoint3 >>> 6) & 63) | 128));
                                        byte[] bArr111 = this.buffer;
                                        long j118 = this.pos;
                                        this.pos = j118 - 1;
                                        UnsafeUtil.O(bArr111, j118, (byte) (((codePoint3 >>> 12) & 63) | 128));
                                        byte[] bArr112 = this.buffer;
                                        long j119 = this.pos;
                                        this.pos = j119 - 1;
                                        UnsafeUtil.O(bArr112, j119, (byte) ((codePoint3 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else {
                        j6 = this.pos;
                        if (j6 > this.offset + 1) {
                            byte[] bArr113 = this.buffer;
                            this.pos = j6 - 1;
                            UnsafeUtil.O(bArr113, j6, (byte) ((cCharAt3 & '?') | 128));
                            byte[] bArr114 = this.buffer;
                            long j1110 = this.pos;
                            this.pos = j1110 - 1;
                            UnsafeUtil.O(bArr114, j1110, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            byte[] bArr115 = this.buffer;
                            long j1111 = this.pos;
                            this.pos = j1111 - 1;
                            UnsafeUtil.O(bArr115, j1111, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.offset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint4 = Character.toCodePoint(cCharAt, cCharAt3);
                                        byte[] bArr116 = this.buffer;
                                        long j1112 = this.pos;
                                        this.pos = j1112 - 1;
                                        UnsafeUtil.O(bArr116, j1112, (byte) ((codePoint4 & 63) | 128));
                                        byte[] bArr117 = this.buffer;
                                        long j1113 = this.pos;
                                        this.pos = j1113 - 1;
                                        UnsafeUtil.O(bArr117, j1113, (byte) (((codePoint4 >>> 6) & 63) | 128));
                                        byte[] bArr118 = this.buffer;
                                        long j1114 = this.pos;
                                        this.pos = j1114 - 1;
                                        UnsafeUtil.O(bArr118, j1114, (byte) (((codePoint4 >>> 12) & 63) | 128));
                                        byte[] bArr119 = this.buffer;
                                        long j1115 = this.pos;
                                        this.pos = j1115 - 1;
                                        UnsafeUtil.O(bArr119, j1115, (byte) ((codePoint4 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    }
                } else if (cCharAt3 < 2048) {
                    j10 = this.pos;
                    if (j10 > this.offset) {
                        byte[] bArr20 = this.buffer;
                        this.pos = j10 - 1;
                        UnsafeUtil.O(bArr20, j10, (byte) ((cCharAt3 & '?') | 128));
                        byte[] bArr21 = this.buffer;
                        long j120 = this.pos;
                        this.pos = j120 - 1;
                        UnsafeUtil.O(bArr21, j120, (byte) ((cCharAt3 >>> 6) | 960));
                    } else if (cCharAt3 >= 55296) {
                        j6 = this.pos;
                        if (j6 > this.offset + 1) {
                            byte[] bArr1110 = this.buffer;
                            this.pos = j6 - 1;
                            UnsafeUtil.O(bArr1110, j6, (byte) ((cCharAt3 & '?') | 128));
                            byte[] bArr1111 = this.buffer;
                            long j1116 = this.pos;
                            this.pos = j1116 - 1;
                            UnsafeUtil.O(bArr1111, j1116, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            byte[] bArr1112 = this.buffer;
                            long j1117 = this.pos;
                            this.pos = j1117 - 1;
                            UnsafeUtil.O(bArr1112, j1117, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.offset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint5 = Character.toCodePoint(cCharAt, cCharAt3);
                                        byte[] bArr1113 = this.buffer;
                                        long j1118 = this.pos;
                                        this.pos = j1118 - 1;
                                        UnsafeUtil.O(bArr1113, j1118, (byte) ((codePoint5 & 63) | 128));
                                        byte[] bArr1114 = this.buffer;
                                        long j1119 = this.pos;
                                        this.pos = j1119 - 1;
                                        UnsafeUtil.O(bArr1114, j1119, (byte) (((codePoint5 >>> 6) & 63) | 128));
                                        byte[] bArr1115 = this.buffer;
                                        long j11110 = this.pos;
                                        this.pos = j11110 - 1;
                                        UnsafeUtil.O(bArr1115, j11110, (byte) (((codePoint5 >>> 12) & 63) | 128));
                                        byte[] bArr1116 = this.buffer;
                                        long j11111 = this.pos;
                                        this.pos = j11111 - 1;
                                        UnsafeUtil.O(bArr1116, j11111, (byte) ((codePoint5 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    } else {
                        j6 = this.pos;
                        if (j6 > this.offset + 1) {
                            byte[] bArr1117 = this.buffer;
                            this.pos = j6 - 1;
                            UnsafeUtil.O(bArr1117, j6, (byte) ((cCharAt3 & '?') | 128));
                            byte[] bArr1118 = this.buffer;
                            long j11112 = this.pos;
                            this.pos = j11112 - 1;
                            UnsafeUtil.O(bArr1118, j11112, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                            byte[] bArr1119 = this.buffer;
                            long j11113 = this.pos;
                            this.pos = j11113 - 1;
                            UnsafeUtil.O(bArr1119, j11113, (byte) ((cCharAt3 >>> '\f') | 480));
                        } else {
                            if (this.pos > this.offset + 2) {
                                if (length != 0) {
                                    cCharAt = str.charAt(length - 1);
                                    if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                        length--;
                                        int codePoint6 = Character.toCodePoint(cCharAt, cCharAt3);
                                        byte[] bArr11110 = this.buffer;
                                        long j11114 = this.pos;
                                        this.pos = j11114 - 1;
                                        UnsafeUtil.O(bArr11110, j11114, (byte) ((codePoint6 & 63) | 128));
                                        byte[] bArr11111 = this.buffer;
                                        long j11115 = this.pos;
                                        this.pos = j11115 - 1;
                                        UnsafeUtil.O(bArr11111, j11115, (byte) (((codePoint6 >>> 6) & 63) | 128));
                                        byte[] bArr11112 = this.buffer;
                                        long j11116 = this.pos;
                                        this.pos = j11116 - 1;
                                        UnsafeUtil.O(bArr11112, j11116, (byte) (((codePoint6 >>> 12) & 63) | 128));
                                        byte[] bArr11113 = this.buffer;
                                        long j11117 = this.pos;
                                        this.pos = j11117 - 1;
                                        UnsafeUtil.O(bArr11113, j11117, (byte) ((codePoint6 >>> 18) | 240));
                                    }
                                }
                                throw new Utf8.UnpairedSurrogateException(length - 1, length);
                            }
                            q(length);
                            length++;
                        }
                    }
                } else if (cCharAt3 >= 55296) {
                    j6 = this.pos;
                    if (j6 > this.offset + 1) {
                        byte[] bArr11114 = this.buffer;
                        this.pos = j6 - 1;
                        UnsafeUtil.O(bArr11114, j6, (byte) ((cCharAt3 & '?') | 128));
                        byte[] bArr11115 = this.buffer;
                        long j11118 = this.pos;
                        this.pos = j11118 - 1;
                        UnsafeUtil.O(bArr11115, j11118, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        byte[] bArr11116 = this.buffer;
                        long j11119 = this.pos;
                        this.pos = j11119 - 1;
                        UnsafeUtil.O(bArr11116, j11119, (byte) ((cCharAt3 >>> '\f') | 480));
                    } else {
                        if (this.pos > this.offset + 2) {
                            if (length != 0) {
                                cCharAt = str.charAt(length - 1);
                                if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                    length--;
                                    int codePoint7 = Character.toCodePoint(cCharAt, cCharAt3);
                                    byte[] bArr11117 = this.buffer;
                                    long j111110 = this.pos;
                                    this.pos = j111110 - 1;
                                    UnsafeUtil.O(bArr11117, j111110, (byte) ((codePoint7 & 63) | 128));
                                    byte[] bArr11118 = this.buffer;
                                    long j111111 = this.pos;
                                    this.pos = j111111 - 1;
                                    UnsafeUtil.O(bArr11118, j111111, (byte) (((codePoint7 >>> 6) & 63) | 128));
                                    byte[] bArr11119 = this.buffer;
                                    long j111112 = this.pos;
                                    this.pos = j111112 - 1;
                                    UnsafeUtil.O(bArr11119, j111112, (byte) (((codePoint7 >>> 12) & 63) | 128));
                                    byte[] bArr111110 = this.buffer;
                                    long j111113 = this.pos;
                                    this.pos = j111113 - 1;
                                    UnsafeUtil.O(bArr111110, j111113, (byte) ((codePoint7 >>> 18) | 240));
                                }
                            }
                            throw new Utf8.UnpairedSurrogateException(length - 1, length);
                        }
                        q(length);
                        length++;
                    }
                } else {
                    j6 = this.pos;
                    if (j6 > this.offset + 1) {
                        byte[] bArr111111 = this.buffer;
                        this.pos = j6 - 1;
                        UnsafeUtil.O(bArr111111, j6, (byte) ((cCharAt3 & '?') | 128));
                        byte[] bArr111112 = this.buffer;
                        long j111114 = this.pos;
                        this.pos = j111114 - 1;
                        UnsafeUtil.O(bArr111112, j111114, (byte) (((cCharAt3 >>> 6) & 63) | 128));
                        byte[] bArr111113 = this.buffer;
                        long j111115 = this.pos;
                        this.pos = j111115 - 1;
                        UnsafeUtil.O(bArr111113, j111115, (byte) ((cCharAt3 >>> '\f') | 480));
                    } else {
                        if (this.pos > this.offset + 2) {
                            if (length != 0) {
                                cCharAt = str.charAt(length - 1);
                                if (Character.isSurrogatePair(cCharAt, cCharAt3)) {
                                    length--;
                                    int codePoint8 = Character.toCodePoint(cCharAt, cCharAt3);
                                    byte[] bArr111114 = this.buffer;
                                    long j111116 = this.pos;
                                    this.pos = j111116 - 1;
                                    UnsafeUtil.O(bArr111114, j111116, (byte) ((codePoint8 & 63) | 128));
                                    byte[] bArr111115 = this.buffer;
                                    long j111117 = this.pos;
                                    this.pos = j111117 - 1;
                                    UnsafeUtil.O(bArr111115, j111117, (byte) (((codePoint8 >>> 6) & 63) | 128));
                                    byte[] bArr111116 = this.buffer;
                                    long j111118 = this.pos;
                                    this.pos = j111118 - 1;
                                    UnsafeUtil.O(bArr111116, j111118, (byte) (((codePoint8 >>> 12) & 63) | 128));
                                    byte[] bArr111117 = this.buffer;
                                    long j111119 = this.pos;
                                    this.pos = j111119 - 1;
                                    UnsafeUtil.O(bArr111117, j111119, (byte) ((codePoint8 >>> 18) | 240));
                                }
                            }
                            throw new Utf8.UnpairedSurrogateException(length - 1, length);
                        }
                        q(length);
                        length++;
                    }
                }
                length--;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public void h(ByteBuffer byteBuffer) {
            int iRemaining = byteBuffer.remaining();
            if (c0() < iRemaining) {
                this.totalDoneBytes += iRemaining;
                this.buffers.addFirst(AllocatedBuffer.i(byteBuffer));
                Z();
            }
            this.pos -= (long) iRemaining;
            byteBuffer.get(this.buffer, W() + 1, iRemaining);
        }

        @Override // androidx.datastore.preferences.protobuf.BinaryWriter
        void q(int i10) {
            if (c0() < i10) {
                a0(i10);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeMessage(int i10, Object obj) throws IOException {
            int iL = l();
            Protobuf.a().f(obj, this);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }

        @Override // androidx.datastore.preferences.protobuf.Writer
        public void writeString(int i10, String str) {
            int iL = l();
            e0(str);
            int iL2 = l() - iL;
            q(10);
            U(iL2);
            P(i10, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte k(long j6) {
        byte b7;
        if (((-128) & j6) == 0) {
            return (byte) 1;
        }
        if (j6 < 0) {
            return (byte) 10;
        }
        if (((-34359738368L) & j6) != 0) {
            b7 = (byte) 6;
            j6 >>>= 28;
        } else {
            b7 = 2;
        }
        if (((-2097152) & j6) != 0) {
            b7 = (byte) (b7 + 2);
            j6 >>>= 14;
        }
        return (j6 & (-16384)) != 0 ? (byte) (b7 + 1) : b7;
    }

    abstract void E(int i10);

    abstract void J(int i10);

    abstract void M(long j6);

    abstract void P(int i10, int i11);

    abstract void U(int i10);

    abstract void V(long j6);

    public abstract int l();

    abstract void q(int i10);

    abstract void r(boolean z6);

    abstract void w(int i10);

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeMessageSetItem(int i10, Object obj) throws IOException {
        P(1, 4);
        if (obj instanceof ByteString) {
            a(3, (ByteString) obj);
        } else {
            writeMessage(3, obj);
        }
        writeUInt32(2, i10);
        P(1, 3);
    }

    abstract void z(long j6);

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.BinaryWriter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private final void A(int i10, LongArrayList longArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeFixed64(i10, longArrayList.getLong(size));
            }
            return;
        }
        q((longArrayList.size() * 8) + 10);
        int iL = l();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            z(longArrayList.getLong(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void B(int i10, List<Long> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed64(i10, list.get(size).longValue());
            }
            return;
        }
        q((list.size() * 8) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            z(list.get(size2).longValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void C(int i10, FloatArrayList floatArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = floatArrayList.size() - 1; size >= 0; size--) {
                writeFloat(i10, floatArrayList.getFloat(size));
            }
            return;
        }
        q((floatArrayList.size() * 4) + 10);
        int iL = l();
        for (int size2 = floatArrayList.size() - 1; size2 >= 0; size2--) {
            w(Float.floatToRawIntBits(floatArrayList.getFloat(size2)));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void D(int i10, List<Float> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFloat(i10, list.get(size).floatValue());
            }
            return;
        }
        q((list.size() * 4) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            w(Float.floatToRawIntBits(list.get(size2).floatValue()));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void F(int i10, IntArrayList intArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeInt32(i10, intArrayList.getInt(size));
            }
            return;
        }
        q((intArrayList.size() * 10) + 10);
        int iL = l();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            E(intArrayList.getInt(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void G(int i10, List<Integer> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeInt32(i10, list.get(size).intValue());
            }
            return;
        }
        q((list.size() * 10) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            E(list.get(size2).intValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private void H(int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            writeString(i10, (String) obj);
        } else {
            a(i10, (ByteString) obj);
        }
    }

    static final void I(Writer writer, int i10, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                writer.writeBool(i10, ((Boolean) obj).booleanValue());
                return;
            case 2:
                writer.writeFixed32(i10, ((Integer) obj).intValue());
                return;
            case 3:
                writer.writeFixed64(i10, ((Long) obj).longValue());
                return;
            case 4:
                writer.writeInt32(i10, ((Integer) obj).intValue());
                return;
            case 5:
                writer.writeInt64(i10, ((Long) obj).longValue());
                return;
            case 6:
                writer.writeSFixed32(i10, ((Integer) obj).intValue());
                return;
            case 7:
                writer.writeSFixed64(i10, ((Long) obj).longValue());
                return;
            case 8:
                writer.writeSInt32(i10, ((Integer) obj).intValue());
                return;
            case 9:
                writer.writeSInt64(i10, ((Long) obj).longValue());
                return;
            case 10:
                writer.writeString(i10, (String) obj);
                return;
            case 11:
                writer.writeUInt32(i10, ((Integer) obj).intValue());
                return;
            case 12:
                writer.writeUInt64(i10, ((Long) obj).longValue());
                return;
            case 13:
                writer.writeFloat(i10, ((Float) obj).floatValue());
                return;
            case 14:
                writer.writeDouble(i10, ((Double) obj).doubleValue());
                return;
            case 15:
                writer.writeMessage(i10, obj);
                return;
            case 16:
                writer.a(i10, (ByteString) obj);
                return;
            case 17:
                if (obj instanceof Internal.EnumLite) {
                    writer.writeEnum(i10, ((Internal.EnumLite) obj).getNumber());
                    return;
                } else {
                    if (!(obj instanceof Integer)) {
                        throw new IllegalArgumentException("Unexpected type for enum in map.");
                    }
                    writer.writeEnum(i10, ((Integer) obj).intValue());
                    return;
                }
            default:
                throw new IllegalArgumentException("Unsupported map value type for: " + fieldType);
        }
    }

    private final void K(int i10, IntArrayList intArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeSInt32(i10, intArrayList.getInt(size));
            }
            return;
        }
        q((intArrayList.size() * 5) + 10);
        int iL = l();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            J(intArrayList.getInt(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void L(int i10, List<Integer> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt32(i10, list.get(size).intValue());
            }
            return;
        }
        q((list.size() * 5) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            J(list.get(size2).intValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void N(int i10, LongArrayList longArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeSInt64(i10, longArrayList.getLong(size));
            }
            return;
        }
        q((longArrayList.size() * 10) + 10);
        int iL = l();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            M(longArrayList.getLong(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void O(int i10, List<Long> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeSInt64(i10, list.get(size).longValue());
            }
            return;
        }
        q((list.size() * 10) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            M(list.get(size2).longValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void Q(int i10, IntArrayList intArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeUInt32(i10, intArrayList.getInt(size));
            }
            return;
        }
        q((intArrayList.size() * 5) + 10);
        int iL = l();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            U(intArrayList.getInt(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void R(int i10, List<Integer> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt32(i10, list.get(size).intValue());
            }
            return;
        }
        q((list.size() * 5) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            U(list.get(size2).intValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void S(int i10, LongArrayList longArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = longArrayList.size() - 1; size >= 0; size--) {
                writeUInt64(i10, longArrayList.getLong(size));
            }
            return;
        }
        q((longArrayList.size() * 10) + 10);
        int iL = l();
        for (int size2 = longArrayList.size() - 1; size2 >= 0; size2--) {
            V(longArrayList.getLong(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void T(int i10, List<Long> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeUInt64(i10, list.get(size).longValue());
            }
            return;
        }
        q((list.size() * 10) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            V(list.get(size2).longValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void s(int i10, BooleanArrayList booleanArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = booleanArrayList.size() - 1; size >= 0; size--) {
                writeBool(i10, booleanArrayList.getBoolean(size));
            }
            return;
        }
        q(booleanArrayList.size() + 10);
        int iL = l();
        for (int size2 = booleanArrayList.size() - 1; size2 >= 0; size2--) {
            r(booleanArrayList.getBoolean(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void t(int i10, List<Boolean> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeBool(i10, list.get(size).booleanValue());
            }
            return;
        }
        q(list.size() + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            r(list.get(size2).booleanValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void u(int i10, DoubleArrayList doubleArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = doubleArrayList.size() - 1; size >= 0; size--) {
                writeDouble(i10, doubleArrayList.getDouble(size));
            }
            return;
        }
        q((doubleArrayList.size() * 8) + 10);
        int iL = l();
        for (int size2 = doubleArrayList.size() - 1; size2 >= 0; size2--) {
            z(Double.doubleToRawLongBits(doubleArrayList.getDouble(size2)));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void v(int i10, List<Double> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeDouble(i10, list.get(size).doubleValue());
            }
            return;
        }
        q((list.size() * 8) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            z(Double.doubleToRawLongBits(list.get(size2).doubleValue()));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void x(int i10, IntArrayList intArrayList, boolean z6) throws IOException {
        if (!z6) {
            for (int size = intArrayList.size() - 1; size >= 0; size--) {
                writeFixed32(i10, intArrayList.getInt(size));
            }
            return;
        }
        q((intArrayList.size() * 4) + 10);
        int iL = l();
        for (int size2 = intArrayList.size() - 1; size2 >= 0; size2--) {
            w(intArrayList.getInt(size2));
        }
        U(l() - iL);
        P(i10, 2);
    }

    private final void y(int i10, List<Integer> list, boolean z6) throws IOException {
        if (!z6) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeFixed32(i10, list.get(size).intValue());
            }
            return;
        }
        q((list.size() * 4) + 10);
        int iL = l();
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            w(list.get(size2).intValue());
        }
        U(l() - iL);
        P(i10, 2);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.DESCENDING;
    }

    final AllocatedBuffer m() {
        return this.alloc.a(this.chunkSize);
    }

    final AllocatedBuffer n(int i10) {
        return this.alloc.a(Math.max(i10, this.chunkSize));
    }

    final AllocatedBuffer o() {
        return this.alloc.b(this.chunkSize);
    }

    final AllocatedBuffer p(int i10) {
        return this.alloc.b(Math.max(i10, this.chunkSize));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeBoolList(int i10, List<Boolean> list, boolean z6) throws IOException {
        if (list instanceof BooleanArrayList) {
            s(i10, (BooleanArrayList) list, z6);
        } else {
            t(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeDoubleList(int i10, List<Double> list, boolean z6) throws IOException {
        if (list instanceof DoubleArrayList) {
            u(i10, (DoubleArrayList) list, z6);
        } else {
            v(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeFixed32List(int i10, List<Integer> list, boolean z6) throws IOException {
        if (list instanceof IntArrayList) {
            x(i10, (IntArrayList) list, z6);
        } else {
            y(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeFixed64List(int i10, List<Long> list, boolean z6) throws IOException {
        if (list instanceof LongArrayList) {
            A(i10, (LongArrayList) list, z6);
        } else {
            B(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeFloatList(int i10, List<Float> list, boolean z6) throws IOException {
        if (list instanceof FloatArrayList) {
            C(i10, (FloatArrayList) list, z6);
        } else {
            D(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        if (list instanceof IntArrayList) {
            F(i10, (IntArrayList) list, z6);
        } else {
            G(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        if (list instanceof IntArrayList) {
            K(i10, (IntArrayList) list, z6);
        } else {
            L(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        if (list instanceof LongArrayList) {
            N(i10, (LongArrayList) list, z6);
        } else {
            O(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeStringList(int i10, List<String> list) throws IOException {
        if (!(list instanceof LazyStringList)) {
            for (int size = list.size() - 1; size >= 0; size--) {
                writeString(i10, list.get(size));
            }
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            H(i10, lazyStringList.getRaw(size2));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeUInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        if (list instanceof IntArrayList) {
            Q(i10, (IntArrayList) list, z6);
        } else {
            R(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeUInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        if (list instanceof LongArrayList) {
            S(i10, (LongArrayList) list, z6);
        } else {
            T(i10, list, z6);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public <K, V> void c(int i10, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            int iL = l();
            I(this, 2, metadata.valueType, entry.getValue());
            I(this, 1, metadata.keyType, entry.getKey());
            U(l() - iL);
            P(i10, 2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void d(int i10, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            e(i10, list.get(size), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void f(int i10, List<?> list, Schema schema) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            b(i10, list.get(size), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeBytesList(int i10, List<ByteString> list) throws IOException {
        for (int size = list.size() - 1; size >= 0; size--) {
            a(i10, list.get(size));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeDouble(int i10, double d) throws IOException {
        writeFixed64(i10, Double.doubleToRawLongBits(d));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeEnum(int i10, int i11) throws IOException {
        writeInt32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeEnumList(int i10, List<Integer> list, boolean z6) throws IOException {
        writeInt32List(i10, list, z6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeFloat(int i10, float f) throws IOException {
        writeFixed32(i10, Float.floatToRawIntBits(f));
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeInt64(int i10, long j6) throws IOException {
        writeUInt64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        writeUInt64List(i10, list, z6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSFixed32(int i10, int i11) throws IOException {
        writeFixed32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSFixed32List(int i10, List<Integer> list, boolean z6) throws IOException {
        writeFixed32List(i10, list, z6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSFixed64(int i10, long j6) throws IOException {
        writeFixed64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeSFixed64List(int i10, List<Long> list, boolean z6) throws IOException {
        writeFixed64List(i10, list, z6);
    }
}

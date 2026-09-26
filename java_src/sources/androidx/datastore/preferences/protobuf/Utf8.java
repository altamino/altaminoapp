package androidx.datastore.preferences.protobuf;

import com.google.common.base.c;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class Utf8 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final Processor processor;

    private static class DecodeUtil {
        /* JADX INFO: Access modifiers changed from: private */
        public static void i(byte b7, char[] cArr, int i10) {
            cArr[i10] = (char) b7;
        }

        private static char l(int i10) {
            return (char) ((i10 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean m(byte b7) {
            return b7 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean n(byte b7) {
            return b7 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean o(byte b7) {
            return b7 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean p(byte b7) {
            return b7 < -32;
        }

        private static char q(int i10) {
            return (char) ((i10 & 1023) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int r(byte b7) {
            return b7 & okio.Utf8.REPLACEMENT_BYTE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void k(byte b7, byte b10, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (b7 < -62 || m(b10)) {
                throw InvalidProtocolBufferException.c();
            }
            cArr[i10] = (char) (((b7 & c.US) << 6) | r(b10));
        }

        private DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void h(byte b7, byte b10, byte b11, byte b12, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!m(b10) && (((b7 << c.FS) + (b10 + 112)) >> 30) == 0 && !m(b11) && !m(b12)) {
                int iR = ((b7 & 7) << 18) | (r(b10) << 12) | (r(b11) << 6) | r(b12);
                cArr[i10] = l(iR);
                cArr[i10 + 1] = q(iR);
                return;
            }
            throw InvalidProtocolBufferException.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void j(byte b7, byte b10, byte b11, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!m(b10) && ((b7 != -32 || b10 >= -96) && ((b7 != -19 || b10 < -96) && !m(b11)))) {
                cArr[i10] = (char) (((b7 & c.SI) << 12) | (r(b10) << 6) | r(b11));
                return;
            }
            throw InvalidProtocolBufferException.c();
        }
    }

    static abstract class Processor {
        abstract String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException;

        abstract String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException;

        abstract int e(CharSequence charSequence, byte[] bArr, int i10, int i11);

        abstract void h(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean i(ByteBuffer byteBuffer, int i10, int i11) {
            return k(0, byteBuffer, i10, i11) == 0;
        }

        final boolean j(byte[] bArr, int i10, int i11) {
            return l(0, bArr, i10, i11) == 0;
        }

        abstract int l(int i10, byte[] bArr, int i11, int i12);

        abstract int o(int i10, ByteBuffer byteBuffer, int i11, int i12);

        final String c(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b7 = byteBuffer.get(i10);
                if (!DecodeUtil.n(b7)) {
                    break;
                }
                i10++;
                DecodeUtil.i(b7, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b10 = byteBuffer.get(i10);
                if (DecodeUtil.n(b10)) {
                    int i16 = i14 + 1;
                    DecodeUtil.i(b10, cArr, i14);
                    while (i15 < i12) {
                        byte b11 = byteBuffer.get(i15);
                        if (!DecodeUtil.n(b11)) {
                            break;
                        }
                        i15++;
                        DecodeUtil.i(b11, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (DecodeUtil.p(b10)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.c();
                    }
                    i10 += 2;
                    DecodeUtil.k(b10, byteBuffer.get(i15), cArr, i14);
                    i14++;
                } else if (DecodeUtil.o(b10)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.c();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    DecodeUtil.j(b10, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.c();
                    }
                    byte b12 = byteBuffer.get(i15);
                    int i18 = i10 + 3;
                    byte b13 = byteBuffer.get(i10 + 2);
                    i10 += 4;
                    DecodeUtil.h(b10, b12, b13, byteBuffer.get(i18), cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r8.get(r9) > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x004c, code lost:
        
            if (r8.get(r9) > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x008f, code lost:
        
            if (r8.get(r7) > (-65)) goto L53;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        final int n(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            byte b7;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte b11 = (byte) (~(i10 >> 8));
                    if (b11 == 0) {
                        int i15 = i11 + 1;
                        byte b12 = byteBuffer.get(i11);
                        if (i15 >= i12) {
                            return Utf8.o(b10, b12);
                        }
                        i11 = i15;
                        b11 = b12;
                    }
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(i10 >> 8));
                if (b13 == 0) {
                    i13 = i11 + 1;
                    b13 = byteBuffer.get(i11);
                    if (i13 >= i12) {
                        return Utf8.o(b10, b13);
                    }
                    b7 = 0;
                } else {
                    b7 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b7 == 0) {
                    int i16 = i13 + 1;
                    byte b14 = byteBuffer.get(i13);
                    if (i16 >= i12) {
                        return Utf8.p(b10, b13, b14);
                    }
                    b7 = b14;
                    i13 = i16;
                }
                if (b13 <= -65 && (((b10 << c.FS) + (b13 + 112)) >> 30) == 0 && b7 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return m(byteBuffer, i11, i12);
        }

        Processor() {
        }

        private static int m(ByteBuffer byteBuffer, int i10, int i11) {
            int iM = i10 + Utf8.m(byteBuffer, i10, i11);
            while (iM < i11) {
                int i12 = iM + 1;
                byte b7 = byteBuffer.get(iM);
                if (b7 < 0) {
                    if (b7 < -32) {
                        if (i12 >= i11) {
                            return b7;
                        }
                        if (b7 < -62 || byteBuffer.get(i12) > -65) {
                            return -1;
                        }
                        iM += 2;
                    } else if (b7 < -16) {
                        if (i12 >= i11 - 1) {
                            return Utf8.q(byteBuffer, b7, i12, i11 - i12);
                        }
                        int i13 = iM + 2;
                        byte b10 = byteBuffer.get(i12);
                        if (b10 > -65 || ((b7 == -32 && b10 < -96) || ((b7 == -19 && b10 >= -96) || byteBuffer.get(i13) > -65))) {
                            return -1;
                        }
                        iM += 3;
                    } else {
                        if (i12 >= i11 - 2) {
                            return Utf8.q(byteBuffer, b7, i12, i11 - i12);
                        }
                        int i14 = iM + 2;
                        byte b11 = byteBuffer.get(i12);
                        if (b11 <= -65 && (((b7 << c.FS) + (b11 + 112)) >> 30) == 0) {
                            int i15 = iM + 3;
                            if (byteBuffer.get(i14) <= -65) {
                                iM += 4;
                                if (byteBuffer.get(i15) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                } else {
                    iM = i12;
                }
            }
            return 0;
        }

        final String a(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return b(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
            }
            if (byteBuffer.isDirect()) {
                return d(byteBuffer, i10, i11);
            }
            return c(byteBuffer, i10, i11);
        }

        final void f(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(Utf8.i(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
            } else if (byteBuffer.isDirect()) {
                h(charSequence, byteBuffer);
            } else {
                g(charSequence, byteBuffer);
            }
        }

        final void g(CharSequence charSequence, ByteBuffer byteBuffer) {
            int length = charSequence.length();
            int iPosition = byteBuffer.position();
            int i10 = 0;
            while (i10 < length) {
                try {
                    char cCharAt = charSequence.charAt(i10);
                    if (cCharAt >= 128) {
                        break;
                    }
                    byteBuffer.put(iPosition + i10, (byte) cCharAt);
                    i10++;
                } catch (IndexOutOfBoundsException unused) {
                }
            }
            if (i10 == length) {
                byteBuffer.position(iPosition + i10);
                return;
            }
            iPosition += i10;
            while (i10 < length) {
                char cCharAt2 = charSequence.charAt(i10);
                if (cCharAt2 < 128) {
                    byteBuffer.put(iPosition, (byte) cCharAt2);
                } else if (cCharAt2 < 2048) {
                    int i11 = iPosition + 1;
                    try {
                        byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> 6) | 192));
                        byteBuffer.put(i11, (byte) ((cCharAt2 & '?') | 128));
                        iPosition = i11;
                    } catch (IndexOutOfBoundsException unused2) {
                        iPosition = i11;
                    }
                } else {
                    if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                        int i12 = i10 + 1;
                        if (i12 != length) {
                            try {
                                char cCharAt3 = charSequence.charAt(i12);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    int i13 = iPosition + 1;
                                    try {
                                        byteBuffer.put(iPosition, (byte) ((codePoint >>> 18) | 240));
                                        int i14 = iPosition + 2;
                                        try {
                                            byteBuffer.put(i13, (byte) (((codePoint >>> 12) & 63) | 128));
                                            iPosition += 3;
                                            byteBuffer.put(i14, (byte) (((codePoint >>> 6) & 63) | 128));
                                            byteBuffer.put(iPosition, (byte) ((codePoint & 63) | 128));
                                            i10 = i12;
                                        } catch (IndexOutOfBoundsException unused3) {
                                            i10 = i12;
                                            iPosition = i14;
                                        }
                                    } catch (IndexOutOfBoundsException unused4) {
                                        iPosition = i13;
                                        i10 = i12;
                                    }
                                } else {
                                    i10 = i12;
                                }
                            } catch (IndexOutOfBoundsException unused5) {
                            }
                            i10 = i12;
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i10) + " at index " + (byteBuffer.position() + Math.max(i10, (iPosition - byteBuffer.position()) + 1)));
                        }
                        throw new UnpairedSurrogateException(i10, length);
                    }
                    int i15 = iPosition + 1;
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 >>> '\f') | 224));
                    iPosition += 2;
                    byteBuffer.put(i15, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    byteBuffer.put(iPosition, (byte) ((cCharAt2 & '?') | 128));
                }
                i10++;
                iPosition++;
            }
            byteBuffer.position(iPosition);
        }

        final int k(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
                return l(i10, byteBuffer.array(), i11 + iArrayOffset, iArrayOffset + i12);
            }
            if (byteBuffer.isDirect()) {
                return o(i10, byteBuffer, i11, i12);
            }
            return n(i10, byteBuffer, i11, i12);
        }
    }

    static final class SafeProcessor extends Processor {
        private static int p(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 >= i11) {
                return 0;
            }
            return q(bArr, i10, i11);
        }

        private static int q(byte[] bArr, int i10, int i11) {
            while (i10 < i11) {
                int i12 = i10 + 1;
                byte b7 = bArr[i10];
                if (b7 < 0) {
                    if (b7 < -32) {
                        if (i12 >= i11) {
                            return b7;
                        }
                        if (b7 >= -62) {
                            i10 += 2;
                            if (bArr[i12] > -65) {
                            }
                        }
                        return -1;
                    }
                    if (b7 >= -16) {
                        if (i12 >= i11 - 2) {
                            return Utf8.r(bArr, i12, i11);
                        }
                        int i13 = i10 + 2;
                        byte b10 = bArr[i12];
                        if (b10 <= -65 && (((b7 << c.FS) + (b10 + 112)) >> 30) == 0) {
                            int i14 = i10 + 3;
                            if (bArr[i13] <= -65) {
                                i10 += 4;
                                if (bArr[i14] > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return Utf8.r(bArr, i12, i11);
                    }
                    int i15 = i10 + 2;
                    byte b11 = bArr[i12];
                    if (b11 <= -65 && ((b7 != -32 || b11 >= -96) && (b7 != -19 || b11 < -96))) {
                        i10 += 3;
                        if (bArr[i15] > -65) {
                        }
                    }
                    return -1;
                }
                i10 = i12;
            }
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b7 = bArr[i10];
                if (!DecodeUtil.n(b7)) {
                    break;
                }
                i10++;
                DecodeUtil.i(b7, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b10 = bArr[i10];
                if (DecodeUtil.n(b10)) {
                    int i16 = i14 + 1;
                    DecodeUtil.i(b10, cArr, i14);
                    while (i15 < i12) {
                        byte b11 = bArr[i15];
                        if (!DecodeUtil.n(b11)) {
                            break;
                        }
                        i15++;
                        DecodeUtil.i(b11, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (DecodeUtil.p(b10)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.c();
                    }
                    i10 += 2;
                    DecodeUtil.k(b10, bArr[i15], cArr, i14);
                    i14++;
                } else if (DecodeUtil.o(b10)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.c();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    DecodeUtil.j(b10, bArr[i15], bArr[i17], cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.c();
                    }
                    byte b12 = bArr[i15];
                    int i18 = i10 + 3;
                    byte b13 = bArr[i10 + 2];
                    i10 += 4;
                    DecodeUtil.h(b10, b12, b13, bArr[i18], cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int l(int i10, byte[] bArr, int i11, int i12) {
            byte b7;
            int i13;
            int i14;
            if (i10 != 0) {
                if (i11 >= i12) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte b11 = (byte) (~(i10 >> 8));
                    if (b11 == 0) {
                        int i15 = i11 + 1;
                        byte b12 = bArr[i11];
                        if (i15 >= i12) {
                            return Utf8.o(b10, b12);
                        }
                        i11 = i15;
                        b11 = b12;
                    }
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        i14 = i11 + 1;
                    }
                    return -1;
                }
                byte b13 = (byte) (~(i10 >> 8));
                if (b13 == 0) {
                    i13 = i11 + 1;
                    b13 = bArr[i11];
                    if (i13 >= i12) {
                        return Utf8.o(b10, b13);
                    }
                    b7 = 0;
                } else {
                    b7 = (byte) (i10 >> 16);
                    i13 = i11;
                }
                if (b7 == 0) {
                    int i16 = i13 + 1;
                    byte b14 = bArr[i13];
                    if (i16 >= i12) {
                        return Utf8.p(b10, b13, b14);
                    }
                    b7 = b14;
                    i13 = i16;
                }
                if (b13 <= -65 && (((b10 << c.FS) + (b13 + 112)) >> 30) == 0 && b7 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return p(bArr, i11, i12);
        }

        SafeProcessor() {
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            return c(byteBuffer, i10, i11);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        int e(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            int i12;
            int i13;
            char cCharAt;
            int length = charSequence.length();
            int i14 = i11 + i10;
            int i15 = 0;
            while (i15 < length && (i13 = i15 + i10) < i14 && (cCharAt = charSequence.charAt(i15)) < 128) {
                bArr[i13] = (byte) cCharAt;
                i15++;
            }
            if (i15 == length) {
                return i10 + length;
            }
            int i16 = i10 + i15;
            while (i15 < length) {
                char cCharAt2 = charSequence.charAt(i15);
                if (cCharAt2 < 128 && i16 < i14) {
                    bArr[i16] = (byte) cCharAt2;
                    i16++;
                } else if (cCharAt2 < 2048 && i16 <= i14 - 2) {
                    int i17 = i16 + 1;
                    bArr[i16] = (byte) ((cCharAt2 >>> 6) | 960);
                    i16 += 2;
                    bArr[i17] = (byte) ((cCharAt2 & '?') | 128);
                } else if ((cCharAt2 < 55296 || 57343 < cCharAt2) && i16 <= i14 - 3) {
                    bArr[i16] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i18 = i16 + 2;
                    bArr[i16 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i16 += 3;
                    bArr[i18] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if (i16 <= i14 - 4) {
                        int i19 = i15 + 1;
                        if (i19 != charSequence.length()) {
                            char cCharAt3 = charSequence.charAt(i19);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i16] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i16 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i20 = i16 + 3;
                                bArr[i16 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i16 += 4;
                                bArr[i20] = (byte) ((codePoint & 63) | 128);
                                i15 = i19;
                            } else {
                                i15 = i19;
                            }
                        }
                        throw new UnpairedSurrogateException(i15 - 1, length);
                    }
                    if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i15 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                        throw new UnpairedSurrogateException(i15, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i16);
                }
                i15++;
            }
            return i16;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        void h(CharSequence charSequence, ByteBuffer byteBuffer) {
            g(charSequence, byteBuffer);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        int o(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            return n(i10, byteBuffer, i11, i12);
        }
    }

    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    static final class UnsafeProcessor extends Processor {
        private static int s(long j6, int i10) {
            if (i10 < 16) {
                return 0;
            }
            int i11 = 8 - (((int) j6) & 7);
            int i12 = i11;
            while (i12 > 0) {
                long j10 = 1 + j6;
                if (UnsafeUtil.v(j6) < 0) {
                    return i11 - i12;
                }
                i12--;
                j6 = j10;
            }
            int i13 = i10 - i11;
            while (i13 >= 8 && (UnsafeUtil.C(j6) & Utf8.ASCII_MASK_LONG) == 0) {
                j6 += 8;
                i13 -= 8;
            }
            return i10 - i13;
        }

        private static int t(byte[] bArr, long j6, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            while (i11 < i10) {
                long j10 = 1 + j6;
                if (UnsafeUtil.w(bArr, j6) < 0) {
                    return i11;
                }
                i11++;
                j6 = j10;
            }
            return i10;
        }

        private static int u(long j6, int i10, int i11) {
            if (i11 == 0) {
                return Utf8.n(i10);
            }
            if (i11 == 1) {
                return Utf8.o(i10, UnsafeUtil.v(j6));
            }
            if (i11 == 2) {
                return Utf8.p(i10, UnsafeUtil.v(j6), UnsafeUtil.v(j6 + 1));
            }
            throw new AssertionError();
        }

        private static int v(byte[] bArr, int i10, long j6, int i11) {
            if (i11 == 0) {
                return Utf8.n(i10);
            }
            if (i11 == 1) {
                return Utf8.o(i10, UnsafeUtil.w(bArr, j6));
            }
            if (i11 == 2) {
                return Utf8.p(i10, UnsafeUtil.w(bArr, j6), UnsafeUtil.w(bArr, j6 + 1));
            }
            throw new AssertionError();
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        String b(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte bW = UnsafeUtil.w(bArr, i10);
                if (!DecodeUtil.n(bW)) {
                    break;
                }
                i10++;
                DecodeUtil.i(bW, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte bW2 = UnsafeUtil.w(bArr, i10);
                if (DecodeUtil.n(bW2)) {
                    int i16 = i14 + 1;
                    DecodeUtil.i(bW2, cArr, i14);
                    while (i15 < i12) {
                        byte bW3 = UnsafeUtil.w(bArr, i15);
                        if (!DecodeUtil.n(bW3)) {
                            break;
                        }
                        i15++;
                        DecodeUtil.i(bW3, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (DecodeUtil.p(bW2)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.c();
                    }
                    i10 += 2;
                    DecodeUtil.k(bW2, UnsafeUtil.w(bArr, i15), cArr, i14);
                    i14++;
                } else if (DecodeUtil.o(bW2)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.c();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    DecodeUtil.j(bW2, UnsafeUtil.w(bArr, i15), UnsafeUtil.w(bArr, i17), cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.c();
                    }
                    byte bW4 = UnsafeUtil.w(bArr, i15);
                    int i18 = i10 + 3;
                    byte bW5 = UnsafeUtil.w(bArr, i10 + 2);
                    i10 += 4;
                    DecodeUtil.h(bW2, bW4, bW5, UnsafeUtil.w(bArr, i18), cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        String d(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            long jI = UnsafeUtil.i(byteBuffer) + ((long) i10);
            long j6 = ((long) i11) + jI;
            char[] cArr = new char[i11];
            int i12 = 0;
            while (jI < j6) {
                byte bV = UnsafeUtil.v(jI);
                if (!DecodeUtil.n(bV)) {
                    break;
                }
                jI++;
                DecodeUtil.i(bV, cArr, i12);
                i12++;
            }
            while (jI < j6) {
                long j10 = jI + 1;
                byte bV2 = UnsafeUtil.v(jI);
                if (DecodeUtil.n(bV2)) {
                    int i13 = i12 + 1;
                    DecodeUtil.i(bV2, cArr, i12);
                    while (j10 < j6) {
                        byte bV3 = UnsafeUtil.v(j10);
                        if (!DecodeUtil.n(bV3)) {
                            break;
                        }
                        j10++;
                        DecodeUtil.i(bV3, cArr, i13);
                        i13++;
                    }
                    i12 = i13;
                    jI = j10;
                } else if (DecodeUtil.p(bV2)) {
                    if (j10 >= j6) {
                        throw InvalidProtocolBufferException.c();
                    }
                    jI += 2;
                    DecodeUtil.k(bV2, UnsafeUtil.v(j10), cArr, i12);
                    i12++;
                } else if (DecodeUtil.o(bV2)) {
                    if (j10 >= j6 - 1) {
                        throw InvalidProtocolBufferException.c();
                    }
                    long j11 = 2 + jI;
                    jI += 3;
                    DecodeUtil.j(bV2, UnsafeUtil.v(j10), UnsafeUtil.v(j11), cArr, i12);
                    i12++;
                } else {
                    if (j10 >= j6 - 2) {
                        throw InvalidProtocolBufferException.c();
                    }
                    byte bV4 = UnsafeUtil.v(j10);
                    long j12 = jI + 3;
                    byte bV5 = UnsafeUtil.v(2 + jI);
                    jI += 4;
                    DecodeUtil.h(bV2, bV4, bV5, UnsafeUtil.v(j12), cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        int e(CharSequence charSequence, byte[] bArr, int i10, int i11) {
            long j6;
            String str;
            String str2;
            int i12;
            long j10;
            char cCharAt;
            long j11 = i10;
            long j12 = ((long) i11) + j11;
            int length = charSequence.length();
            String str3 = " at index ";
            String str4 = "Failed writing ";
            if (length > i11 || bArr.length - i11 < i10) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + (i10 + i11));
            }
            int i13 = 0;
            while (true) {
                j6 = 1;
                if (i13 >= length || (cCharAt = charSequence.charAt(i13)) >= 128) {
                    break;
                }
                UnsafeUtil.O(bArr, j11, (byte) cCharAt);
                i13++;
                j11 = 1 + j11;
            }
            if (i13 == length) {
                return (int) j11;
            }
            while (i13 < length) {
                char cCharAt2 = charSequence.charAt(i13);
                if (cCharAt2 >= 128 || j11 >= j12) {
                    if (cCharAt2 >= 2048 || j11 > j12 - 2) {
                        str = str3;
                        str2 = str4;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j11 > j12 - 3) {
                            if (j11 > j12 - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i13 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                                    throw new UnpairedSurrogateException(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str2 + cCharAt2 + str + j11);
                            }
                            int i14 = i13 + 1;
                            if (i14 != length) {
                                char cCharAt3 = charSequence.charAt(i14);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j10 = 1;
                                    UnsafeUtil.O(bArr, j11, (byte) ((codePoint >>> 18) | 240));
                                    UnsafeUtil.O(bArr, j11 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j13 = j11 + 3;
                                    UnsafeUtil.O(bArr, j11 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j11 += 4;
                                    UnsafeUtil.O(bArr, j13, (byte) ((codePoint & 63) | 128));
                                    i13 = i14;
                                } else {
                                    i13 = i14;
                                }
                            }
                            throw new UnpairedSurrogateException(i13 - 1, length);
                        }
                        UnsafeUtil.O(bArr, j11, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j14 = j11 + 2;
                        UnsafeUtil.O(bArr, j11 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j11 += 3;
                        UnsafeUtil.O(bArr, j14, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j15 = j11 + j6;
                        UnsafeUtil.O(bArr, j11, (byte) ((cCharAt2 >>> 6) | 960));
                        j11 += 2;
                        UnsafeUtil.O(bArr, j15, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j10 = 1;
                } else {
                    UnsafeUtil.O(bArr, j11, (byte) cCharAt2);
                    str2 = str4;
                    j10 = j6;
                    j11 += j6;
                    str = str3;
                }
                i13++;
                str3 = str;
                str4 = str2;
                j6 = j10;
                j12 = j12;
            }
            return (int) j11;
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        void h(CharSequence charSequence, ByteBuffer byteBuffer) {
            long j6;
            char c7;
            long j10;
            int i10;
            int i11;
            char c10;
            char cCharAt;
            long jI = UnsafeUtil.i(byteBuffer);
            long jPosition = ((long) byteBuffer.position()) + jI;
            long jLimit = ((long) byteBuffer.limit()) + jI;
            int length = charSequence.length();
            if (length > jLimit - jPosition) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(length - 1) + " at index " + byteBuffer.limit());
            }
            int i12 = 0;
            while (true) {
                j6 = 1;
                c7 = 128;
                if (i12 >= length || (cCharAt = charSequence.charAt(i12)) >= 128) {
                    break;
                }
                UnsafeUtil.N(jPosition, (byte) cCharAt);
                i12++;
                jPosition = 1 + jPosition;
            }
            if (i12 == length) {
                byteBuffer.position((int) (jPosition - jI));
                return;
            }
            while (i12 < length) {
                char cCharAt2 = charSequence.charAt(i12);
                if (cCharAt2 >= c7 || jPosition >= jLimit) {
                    if (cCharAt2 >= 2048 || jPosition > jLimit - 2) {
                        j10 = jI;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || jPosition > jLimit - 3) {
                            if (jPosition > jLimit - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i10 = i12 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i10)))) {
                                    throw new UnpairedSurrogateException(i12, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + jPosition);
                            }
                            i11 = i12 + 1;
                            if (i11 != length) {
                                char cCharAt3 = charSequence.charAt(i11);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    UnsafeUtil.N(jPosition, (byte) ((codePoint >>> 18) | 240));
                                    c10 = 128;
                                    UnsafeUtil.N(jPosition + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j11 = jPosition + 3;
                                    UnsafeUtil.N(jPosition + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    jPosition += 4;
                                    UnsafeUtil.N(j11, (byte) ((codePoint & 63) | 128));
                                } else {
                                    i12 = i11;
                                }
                            }
                            throw new UnpairedSurrogateException(i12 - 1, length);
                        }
                        long j12 = jPosition + j6;
                        UnsafeUtil.N(jPosition, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j13 = jPosition + 2;
                        UnsafeUtil.N(j12, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        jPosition += 3;
                        UnsafeUtil.N(j13, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        j10 = jI;
                        long j14 = jPosition + j6;
                        UnsafeUtil.N(jPosition, (byte) ((cCharAt2 >>> 6) | 960));
                        jPosition += 2;
                        UnsafeUtil.N(j14, (byte) ((cCharAt2 & '?') | 128));
                    }
                    i11 = i12;
                    c10 = 128;
                } else {
                    UnsafeUtil.N(jPosition, (byte) cCharAt2);
                    j10 = jI;
                    i11 = i12;
                    c10 = c7;
                    jPosition += j6;
                }
                c7 = c10;
                jI = j10;
                j6 = 1;
                i12 = i11 + 1;
            }
            byteBuffer.position((int) (jPosition - jI));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (androidx.datastore.preferences.protobuf.UnsafeUtil.w(r13, r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (androidx.datastore.preferences.protobuf.UnsafeUtil.w(r13, r2) > (-65)) goto L59;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int l(int i10, byte[] bArr, int i11, int i12) {
            long j6;
            byte bW = 0;
            if ((i11 | i12 | (bArr.length - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long j10 = i11;
            long j11 = i12;
            if (i10 != 0) {
                if (j10 >= j11) {
                    return i10;
                }
                byte b7 = (byte) i10;
                if (b7 < -32) {
                    if (b7 >= -62) {
                        long j12 = 1 + j10;
                        if (UnsafeUtil.w(bArr, j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (b7 < -16) {
                    byte bW2 = (byte) (~(i10 >> 8));
                    if (bW2 == 0) {
                        long j13 = j10 + 1;
                        bW2 = UnsafeUtil.w(bArr, j10);
                        if (j13 >= j11) {
                            return Utf8.o(b7, bW2);
                        }
                        j10 = j13;
                    }
                    if (bW2 <= -65 && ((b7 != -32 || bW2 >= -96) && (b7 != -19 || bW2 < -96))) {
                        j6 = j10 + 1;
                    }
                    return -1;
                }
                byte bW3 = (byte) (~(i10 >> 8));
                if (bW3 == 0) {
                    long j14 = j10 + 1;
                    bW3 = UnsafeUtil.w(bArr, j10);
                    if (j14 >= j11) {
                        return Utf8.o(b7, bW3);
                    }
                    j10 = j14;
                } else {
                    bW = (byte) (i10 >> 16);
                }
                if (bW == 0) {
                    long j15 = j10 + 1;
                    bW = UnsafeUtil.w(bArr, j10);
                    if (j15 >= j11) {
                        return Utf8.p(b7, bW3, bW);
                    }
                    j10 = j15;
                }
                if (bW3 <= -65 && (((b7 << c.FS) + (bW3 + 112)) >> 30) == 0 && bW <= -65) {
                    j6 = j10 + 1;
                }
                return -1;
                j10 = j6;
            }
            return r(bArr, j10, (int) (j11 - j10));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        
            if (androidx.datastore.preferences.protobuf.UnsafeUtil.v(r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
        
            if (androidx.datastore.preferences.protobuf.UnsafeUtil.v(r2) > (-65)) goto L59;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int o(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            long j6;
            byte bV = 0;
            if ((i11 | i12 | (byteBuffer.limit() - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jI = UnsafeUtil.i(byteBuffer) + ((long) i11);
            long j10 = ((long) (i12 - i11)) + jI;
            if (i10 != 0) {
                if (jI >= j10) {
                    return i10;
                }
                byte b7 = (byte) i10;
                if (b7 < -32) {
                    if (b7 >= -62) {
                        long j11 = 1 + jI;
                        if (UnsafeUtil.v(jI) <= -65) {
                            jI = j11;
                        }
                    }
                    return -1;
                }
                if (b7 < -16) {
                    byte bV2 = (byte) (~(i10 >> 8));
                    if (bV2 == 0) {
                        long j12 = jI + 1;
                        bV2 = UnsafeUtil.v(jI);
                        if (j12 >= j10) {
                            return Utf8.o(b7, bV2);
                        }
                        jI = j12;
                    }
                    if (bV2 <= -65 && ((b7 != -32 || bV2 >= -96) && (b7 != -19 || bV2 < -96))) {
                        j6 = jI + 1;
                    }
                    return -1;
                }
                byte bV3 = (byte) (~(i10 >> 8));
                if (bV3 == 0) {
                    long j13 = jI + 1;
                    bV3 = UnsafeUtil.v(jI);
                    if (j13 >= j10) {
                        return Utf8.o(b7, bV3);
                    }
                    jI = j13;
                } else {
                    bV = (byte) (i10 >> 16);
                }
                if (bV == 0) {
                    long j14 = jI + 1;
                    bV = UnsafeUtil.v(jI);
                    if (j14 >= j10) {
                        return Utf8.p(b7, bV3, bV);
                    }
                    jI = j14;
                }
                if (bV3 <= -65 && (((b7 << c.FS) + (bV3 + 112)) >> 30) == 0 && bV <= -65) {
                    j6 = jI + 1;
                }
                return -1;
                jI = j6;
            }
            return q(jI, (int) (j10 - jI));
        }

        UnsafeProcessor() {
        }

        static boolean p() {
            if (UnsafeUtil.H() && UnsafeUtil.I()) {
                return true;
            }
            return false;
        }

        private static int q(long j6, int i10) {
            int iS = s(j6, i10);
            long j10 = j6 + ((long) iS);
            int i11 = i10 - iS;
            while (true) {
                byte bV = 0;
                while (i11 > 0) {
                    long j11 = j10 + 1;
                    bV = UnsafeUtil.v(j10);
                    if (bV >= 0) {
                        i11--;
                        j10 = j11;
                    } else {
                        j10 = j11;
                        break;
                    }
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (bV < -32) {
                    if (i12 == 0) {
                        return bV;
                    }
                    i11 -= 2;
                    if (bV >= -62) {
                        long j12 = 1 + j10;
                        if (UnsafeUtil.v(j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (bV < -16) {
                    if (i12 < 2) {
                        return u(j10, bV, i12);
                    }
                    i11 -= 3;
                    long j13 = 1 + j10;
                    byte bV2 = UnsafeUtil.v(j10);
                    if (bV2 <= -65 && ((bV != -32 || bV2 >= -96) && (bV != -19 || bV2 < -96))) {
                        j10 += 2;
                        if (UnsafeUtil.v(j13) > -65) {
                        }
                    }
                    return -1;
                }
                if (i12 < 3) {
                    return u(j10, bV, i12);
                }
                i11 -= 4;
                long j14 = 1 + j10;
                byte bV3 = UnsafeUtil.v(j10);
                if (bV3 <= -65 && (((bV << c.FS) + (bV3 + 112)) >> 30) == 0) {
                    long j15 = 2 + j10;
                    if (UnsafeUtil.v(j14) <= -65) {
                        j10 += 3;
                        if (UnsafeUtil.v(j15) > -65) {
                        }
                    }
                }
                return -1;
            }
        }

        private static int r(byte[] bArr, long j6, int i10) {
            int iT = t(bArr, j6, i10);
            int i11 = i10 - iT;
            long j10 = j6 + ((long) iT);
            while (true) {
                byte bW = 0;
                while (i11 > 0) {
                    long j11 = j10 + 1;
                    bW = UnsafeUtil.w(bArr, j10);
                    if (bW >= 0) {
                        i11--;
                        j10 = j11;
                    } else {
                        j10 = j11;
                        break;
                    }
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (bW < -32) {
                    if (i12 == 0) {
                        return bW;
                    }
                    i11 -= 2;
                    if (bW >= -62) {
                        long j12 = 1 + j10;
                        if (UnsafeUtil.w(bArr, j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (bW < -16) {
                    if (i12 < 2) {
                        return v(bArr, bW, j10, i12);
                    }
                    i11 -= 3;
                    long j13 = 1 + j10;
                    byte bW2 = UnsafeUtil.w(bArr, j10);
                    if (bW2 <= -65 && ((bW != -32 || bW2 >= -96) && (bW != -19 || bW2 < -96))) {
                        j10 += 2;
                        if (UnsafeUtil.w(bArr, j13) > -65) {
                        }
                    }
                    return -1;
                }
                if (i12 < 3) {
                    return v(bArr, bW, j10, i12);
                }
                i11 -= 4;
                long j14 = 1 + j10;
                byte bW3 = UnsafeUtil.w(bArr, j10);
                if (bW3 <= -65 && (((bW << c.FS) + (bW3 + 112)) >> 30) == 0) {
                    long j15 = 2 + j10;
                    if (UnsafeUtil.w(bArr, j14) <= -65) {
                        j10 += 3;
                        if (UnsafeUtil.w(bArr, j15) > -65) {
                        }
                    }
                }
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int n(int i10) {
        if (i10 > -12) {
            return -1;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int o(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    static String g(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.a(byteBuffer, i10, i11);
    }

    static String h(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.b(bArr, i10, i11);
    }

    static int i(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        return processor.e(charSequence, bArr, i10, i11);
    }

    static void j(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.f(charSequence, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int m(ByteBuffer byteBuffer, int i10, int i11) {
        int i12 = i11 - 7;
        int i13 = i10;
        while (i13 < i12 && (byteBuffer.getLong(i13) & ASCII_MASK_LONG) == 0) {
            i13 += 8;
        }
        return i13 - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int q(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (i12 == 0) {
            return n(i10);
        }
        if (i12 == 1) {
            return o(i10, byteBuffer.get(i11));
        }
        if (i12 == 2) {
            return p(i10, byteBuffer.get(i11), byteBuffer.get(i11 + 1));
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(byte[] bArr, int i10, int i11) {
        byte b7 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            return n(b7);
        }
        if (i12 == 1) {
            return o(b7, bArr[i10]);
        }
        if (i12 == 2) {
            return p(b7, bArr[i10], bArr[i10 + 1]);
        }
        throw new AssertionError();
    }

    static boolean s(ByteBuffer byteBuffer) {
        return processor.i(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    public static boolean t(byte[] bArr) {
        return processor.j(bArr, 0, bArr.length);
    }

    public static boolean u(byte[] bArr, int i10, int i11) {
        return processor.j(bArr, i10, i11);
    }

    static int v(int i10, ByteBuffer byteBuffer, int i11, int i12) {
        return processor.k(i10, byteBuffer, i11, i12);
    }

    public static int w(int i10, byte[] bArr, int i11, int i12) {
        return processor.l(i10, bArr, i11, i12);
    }

    static {
        Processor safeProcessor;
        if (UnsafeProcessor.p() && !Android.c()) {
            safeProcessor = new UnsafeProcessor();
        } else {
            safeProcessor = new SafeProcessor();
        }
        processor = safeProcessor;
    }

    private Utf8() {
    }

    static int k(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < 128) {
            i10++;
        }
        int iL = length;
        while (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < 2048) {
                iL += (127 - cCharAt) >>> 31;
                i10++;
            } else {
                iL += l(charSequence, i10);
                break;
            }
        }
        if (iL >= length) {
            return iL;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iL) + 4294967296L));
    }

    private static int l(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        while (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < 2048) {
                i11 += (127 - cCharAt) >>> 31;
            } else {
                i11 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(charSequence, i10) >= 65536) {
                        i10++;
                    } else {
                        throw new UnpairedSurrogateException(i10, length);
                    }
                }
            }
            i10++;
        }
        return i11;
    }
}

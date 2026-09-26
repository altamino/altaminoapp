package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes8.dex */
final class u0 {
    private static final long ASCII_MASK_LONG = -9187201950435737472L;
    static final int COMPLETE = 0;
    static final int MALFORMED = -1;
    static final int MAX_BYTES_PER_CHAR = 3;
    private static final int UNSAFE_COUNT_ASCII_THRESHOLD = 16;
    private static final b processor;

    private static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static void handleOneByte(byte b7, char[] cArr, int i10) {
            cArr[i10] = (char) b7;
        }

        private static char highSurrogate(int i10) {
            return (char) ((i10 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b7) {
            return b7 > -65;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isOneByte(byte b7) {
            return b7 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isThreeBytes(byte b7) {
            return b7 < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isTwoBytes(byte b7) {
            return b7 < -32;
        }

        private static char lowSurrogate(int i10) {
            return (char) ((i10 & 1023) + Utf8.LOG_SURROGATE_HEADER);
        }

        private static int trailingByteValue(byte b7) {
            return b7 & Utf8.REPLACEMENT_BYTE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleTwoBytes(byte b7, byte b10, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (b7 < -62 || isNotTrailingByte(b10)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i10] = (char) (((b7 & com.google.common.base.c.US) << 6) | trailingByteValue(b10));
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleFourBytes(byte b7, byte b10, byte b11, byte b12, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!isNotTrailingByte(b10) && (((b7 << com.google.common.base.c.FS) + (b10 + 112)) >> 30) == 0 && !isNotTrailingByte(b11) && !isNotTrailingByte(b12)) {
                int iTrailingByteValue = ((b7 & 7) << 18) | (trailingByteValue(b10) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12);
                cArr[i10] = highSurrogate(iTrailingByteValue);
                cArr[i10 + 1] = lowSurrogate(iTrailingByteValue);
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void handleThreeBytes(byte b7, byte b10, byte b11, char[] cArr, int i10) throws InvalidProtocolBufferException {
            if (!isNotTrailingByte(b10) && ((b7 != -32 || b10 >= -96) && ((b7 != -19 || b10 < -96) && !isNotTrailingByte(b11)))) {
                cArr[i10] = (char) (((b7 & com.google.common.base.c.SI) << 12) | (trailingByteValue(b10) << 6) | trailingByteValue(b11));
                return;
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }
    }

    static abstract class b {
        final String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if (byteBuffer.hasArray()) {
                return decodeUtf8(byteBuffer.array(), byteBuffer.arrayOffset() + i10, i11);
            }
            return byteBuffer.isDirect() ? decodeUtf8Direct(byteBuffer, i10, i11) : decodeUtf8Default(byteBuffer, i10, i11);
        }

        abstract String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException;

        abstract String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException;

        abstract int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11);

        final void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
            if (byteBuffer.hasArray()) {
                int iArrayOffset = byteBuffer.arrayOffset();
                byteBuffer.position(u0.encode(charSequence, byteBuffer.array(), byteBuffer.position() + iArrayOffset, byteBuffer.remaining()) - iArrayOffset);
            } else if (byteBuffer.isDirect()) {
                encodeUtf8Direct(charSequence, byteBuffer);
            } else {
                encodeUtf8Default(charSequence, byteBuffer);
            }
        }

        abstract void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer);

        final boolean isValidUtf8(byte[] bArr, int i10, int i11) {
            return partialIsValidUtf8(0, bArr, i10, i11) == 0;
        }

        final int partialIsValidUtf8(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            if (!byteBuffer.hasArray()) {
                return byteBuffer.isDirect() ? partialIsValidUtf8Direct(i10, byteBuffer, i11, i12) : partialIsValidUtf8Default(i10, byteBuffer, i11, i12);
            }
            int iArrayOffset = byteBuffer.arrayOffset();
            return partialIsValidUtf8(i10, byteBuffer.array(), i11 + iArrayOffset, iArrayOffset + i12);
        }

        abstract int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12);

        abstract int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12);

        final String decodeUtf8Default(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b7 = byteBuffer.get(i10);
                if (!a.isOneByte(b7)) {
                    break;
                }
                i10++;
                a.handleOneByte(b7, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b10 = byteBuffer.get(i10);
                if (a.isOneByte(b10)) {
                    int i16 = i14 + 1;
                    a.handleOneByte(b10, cArr, i14);
                    while (i15 < i12) {
                        byte b11 = byteBuffer.get(i15);
                        if (!a.isOneByte(b11)) {
                            break;
                        }
                        i15++;
                        a.handleOneByte(b11, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.isTwoBytes(b10)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.handleTwoBytes(b10, byteBuffer.get(i15), cArr, i14);
                    i14++;
                } else if (a.isThreeBytes(b10)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.handleThreeBytes(b10, byteBuffer.get(i15), byteBuffer.get(i17), cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b12 = byteBuffer.get(i15);
                    int i18 = i10 + 3;
                    byte b13 = byteBuffer.get(i10 + 2);
                    i10 += 4;
                    a.handleFourBytes(b10, b12, b13, byteBuffer.get(i18), cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        final boolean isValidUtf8(ByteBuffer byteBuffer, int i10, int i11) {
            return partialIsValidUtf8(0, byteBuffer, i10, i11) == 0;
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
        final int partialIsValidUtf8Default(int i10, ByteBuffer byteBuffer, int i11, int i12) {
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
                            return u0.incompleteStateFor(b10, b12);
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
                        return u0.incompleteStateFor(b10, b13);
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
                        return u0.incompleteStateFor(b10, b13, b14);
                    }
                    b7 = b14;
                    i13 = i16;
                }
                if (b13 <= -65 && (((b10 << com.google.common.base.c.FS) + (b13 + 112)) >> 30) == 0 && b7 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return partialIsValidUtf8(byteBuffer, i11, i12);
        }

        b() {
        }

        final void encodeUtf8Default(CharSequence charSequence, ByteBuffer byteBuffer) {
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
                        throw new d(i10, length);
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

        private static int partialIsValidUtf8(ByteBuffer byteBuffer, int i10, int i11) {
            int iEstimateConsecutiveAscii = i10 + u0.estimateConsecutiveAscii(byteBuffer, i10, i11);
            while (iEstimateConsecutiveAscii < i11) {
                int i12 = iEstimateConsecutiveAscii + 1;
                byte b7 = byteBuffer.get(iEstimateConsecutiveAscii);
                if (b7 >= 0) {
                    iEstimateConsecutiveAscii = i12;
                } else if (b7 < -32) {
                    if (i12 >= i11) {
                        return b7;
                    }
                    if (b7 < -62 || byteBuffer.get(i12) > -65) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 2;
                } else {
                    if (b7 >= -16) {
                        if (i12 >= i11 - 2) {
                            return u0.incompleteStateFor(byteBuffer, b7, i12, i11 - i12);
                        }
                        int i13 = iEstimateConsecutiveAscii + 2;
                        byte b10 = byteBuffer.get(i12);
                        if (b10 <= -65 && (((b7 << com.google.common.base.c.FS) + (b10 + 112)) >> 30) == 0) {
                            int i14 = iEstimateConsecutiveAscii + 3;
                            if (byteBuffer.get(i13) <= -65) {
                                iEstimateConsecutiveAscii += 4;
                                if (byteBuffer.get(i14) > -65) {
                                }
                            }
                        }
                        return -1;
                    }
                    if (i12 >= i11 - 1) {
                        return u0.incompleteStateFor(byteBuffer, b7, i12, i11 - i12);
                    }
                    int i15 = iEstimateConsecutiveAscii + 2;
                    byte b11 = byteBuffer.get(i12);
                    if (b11 > -65 || ((b7 == -32 && b11 < -96) || ((b7 == -19 && b11 >= -96) || byteBuffer.get(i15) > -65))) {
                        return -1;
                    }
                    iEstimateConsecutiveAscii += 3;
                }
            }
            return 0;
        }
    }

    static final class c extends b {
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        
            if (r8[r9] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
        
            if (r8[r9] > (-65)) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0083, code lost:
        
            if (r8[r7] > (-65)) goto L53;
         */
        @Override // com.google.protobuf.u0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
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
                            return u0.incompleteStateFor(b10, b12);
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
                        return u0.incompleteStateFor(b10, b13);
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
                        return u0.incompleteStateFor(b10, b13, b14);
                    }
                    b7 = b14;
                    i13 = i16;
                }
                if (b13 <= -65 && (((b10 << com.google.common.base.c.FS) + (b13 + 112)) >> 30) == 0 && b7 <= -65) {
                    i11 = i13 + 1;
                }
                return -1;
                i11 = i14;
            }
            return partialIsValidUtf8(bArr, i11, i12);
        }

        private static int partialIsValidUtf8NonAscii(byte[] bArr, int i10, int i11) {
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
                            return u0.incompleteStateFor(bArr, i12, i11);
                        }
                        int i13 = i10 + 2;
                        byte b10 = bArr[i12];
                        if (b10 <= -65 && (((b7 << com.google.common.base.c.FS) + (b10 + 112)) >> 30) == 0) {
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
                        return u0.incompleteStateFor(bArr, i12, i11);
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

        @Override // com.google.protobuf.u0.b
        String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((bArr.length - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b7 = bArr[i10];
                if (!a.isOneByte(b7)) {
                    break;
                }
                i10++;
                a.handleOneByte(b7, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b10 = bArr[i10];
                if (a.isOneByte(b10)) {
                    int i16 = i14 + 1;
                    a.handleOneByte(b10, cArr, i14);
                    while (i15 < i12) {
                        byte b11 = bArr[i15];
                        if (!a.isOneByte(b11)) {
                            break;
                        }
                        i15++;
                        a.handleOneByte(b11, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (a.isTwoBytes(b10)) {
                    if (i15 >= i12) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    i10 += 2;
                    a.handleTwoBytes(b10, bArr[i15], cArr, i14);
                    i14++;
                } else if (a.isThreeBytes(b10)) {
                    if (i15 >= i12 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    int i17 = i10 + 2;
                    i10 += 3;
                    a.handleThreeBytes(b10, bArr[i15], bArr[i17], cArr, i14);
                    i14++;
                } else {
                    if (i15 >= i12 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b12 = bArr[i15];
                    int i18 = i10 + 3;
                    byte b13 = bArr[i10 + 2];
                    i10 += 4;
                    a.handleFourBytes(b10, b12, b13, bArr[i18], cArr, i14);
                    i14 += 2;
                }
            }
            return new String(cArr, 0, i14);
        }

        c() {
        }

        @Override // com.google.protobuf.u0.b
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            return decodeUtf8Default(byteBuffer, i10, i11);
        }

        @Override // com.google.protobuf.u0.b
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11) {
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
                        throw new d(i15 - 1, length);
                    }
                    if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i12 = i15 + 1) == charSequence.length() || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i12)))) {
                        throw new d(i15, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + i16);
                }
                i15++;
            }
            return i16;
        }

        @Override // com.google.protobuf.u0.b
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            encodeUtf8Default(charSequence, byteBuffer);
        }

        @Override // com.google.protobuf.u0.b
        int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            return partialIsValidUtf8Default(i10, byteBuffer, i11, i12);
        }

        private static int partialIsValidUtf8(byte[] bArr, int i10, int i11) {
            while (i10 < i11 && bArr[i10] >= 0) {
                i10++;
            }
            if (i10 >= i11) {
                return 0;
            }
            return partialIsValidUtf8NonAscii(bArr, i10, i11);
        }
    }

    static class d extends IllegalArgumentException {
        d(int i10, int i11) {
            super("Unpaired surrogate at index " + i10 + " of " + i11);
        }
    }

    static final class e extends b {
        private static int unsafeEstimateConsecutiveAscii(byte[] bArr, long j6, int i10) {
            int i11 = 0;
            if (i10 < 16) {
                return 0;
            }
            int i12 = 8 - (((int) j6) & 7);
            while (i11 < i12) {
                long j10 = 1 + j6;
                if (t0.getByte(bArr, j6) < 0) {
                    return i11;
                }
                i11++;
                j6 = j10;
            }
            while (true) {
                int i13 = i11 + 8;
                if (i13 > i10 || (t0.getLong((Object) bArr, t0.BYTE_ARRAY_BASE_OFFSET + j6) & u0.ASCII_MASK_LONG) != 0) {
                    break;
                }
                j6 += 8;
                i11 = i13;
            }
            while (i11 < i10) {
                long j11 = j6 + 1;
                if (t0.getByte(bArr, j6) < 0) {
                    return i11;
                }
                i11++;
                j6 = j11;
            }
            return i10;
        }

        private static int unsafeIncompleteStateFor(byte[] bArr, int i10, long j6, int i11) {
            if (i11 == 0) {
                return u0.incompleteStateFor(i10);
            }
            if (i11 == 1) {
                return u0.incompleteStateFor(i10, t0.getByte(bArr, j6));
            }
            if (i11 == 2) {
                return u0.incompleteStateFor(i10, t0.getByte(bArr, j6), t0.getByte(bArr, j6 + 1));
            }
            throw new AssertionError();
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
        
            if (com.google.protobuf.t0.getByte(r13, r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
        
            if (com.google.protobuf.t0.getByte(r13, r2) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.u0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
            long j6;
            byte b7 = 0;
            if ((i11 | i12 | (bArr.length - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long j10 = i11;
            long j11 = i12;
            if (i10 != 0) {
                if (j10 >= j11) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        long j12 = 1 + j10;
                        if (t0.getByte(bArr, j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte b11 = (byte) (~(i10 >> 8));
                    if (b11 == 0) {
                        long j13 = j10 + 1;
                        b11 = t0.getByte(bArr, j10);
                        if (j13 >= j11) {
                            return u0.incompleteStateFor(b10, b11);
                        }
                        j10 = j13;
                    }
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        j6 = j10 + 1;
                    }
                    return -1;
                }
                byte b12 = (byte) (~(i10 >> 8));
                if (b12 == 0) {
                    long j14 = j10 + 1;
                    b12 = t0.getByte(bArr, j10);
                    if (j14 >= j11) {
                        return u0.incompleteStateFor(b10, b12);
                    }
                    j10 = j14;
                } else {
                    b7 = (byte) (i10 >> 16);
                }
                if (b7 == 0) {
                    long j15 = j10 + 1;
                    b7 = t0.getByte(bArr, j10);
                    if (j15 >= j11) {
                        return u0.incompleteStateFor(b10, b12, b7);
                    }
                    j10 = j15;
                }
                if (b12 <= -65 && (((b10 << com.google.common.base.c.FS) + (b12 + 112)) >> 30) == 0 && b7 <= -65) {
                    j6 = j10 + 1;
                }
                return -1;
                j10 = j6;
            }
            return partialIsValidUtf8(bArr, j10, (int) (j11 - j10));
        }

        @Override // com.google.protobuf.u0.b
        String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            Charset charset = Internal.UTF_8;
            String str = new String(bArr, i10, i11, charset);
            if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i10, i11 + i10))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            return str;
        }

        @Override // com.google.protobuf.u0.b
        String decodeUtf8Direct(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
            if ((i10 | i11 | ((byteBuffer.limit() - i10) - i11)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            long jAddressOffset = t0.addressOffset(byteBuffer) + ((long) i10);
            long j6 = ((long) i11) + jAddressOffset;
            char[] cArr = new char[i11];
            int i12 = 0;
            while (jAddressOffset < j6) {
                byte b7 = t0.getByte(jAddressOffset);
                if (!a.isOneByte(b7)) {
                    break;
                }
                jAddressOffset++;
                a.handleOneByte(b7, cArr, i12);
                i12++;
            }
            while (jAddressOffset < j6) {
                long j10 = jAddressOffset + 1;
                byte b10 = t0.getByte(jAddressOffset);
                if (a.isOneByte(b10)) {
                    int i13 = i12 + 1;
                    a.handleOneByte(b10, cArr, i12);
                    while (j10 < j6) {
                        byte b11 = t0.getByte(j10);
                        if (!a.isOneByte(b11)) {
                            break;
                        }
                        j10++;
                        a.handleOneByte(b11, cArr, i13);
                        i13++;
                    }
                    i12 = i13;
                    jAddressOffset = j10;
                } else if (a.isTwoBytes(b10)) {
                    if (j10 >= j6) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    jAddressOffset += 2;
                    a.handleTwoBytes(b10, t0.getByte(j10), cArr, i12);
                    i12++;
                } else if (a.isThreeBytes(b10)) {
                    if (j10 >= j6 - 1) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    long j11 = 2 + jAddressOffset;
                    jAddressOffset += 3;
                    a.handleThreeBytes(b10, t0.getByte(j10), t0.getByte(j11), cArr, i12);
                    i12++;
                } else {
                    if (j10 >= j6 - 2) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    byte b12 = t0.getByte(j10);
                    long j12 = jAddressOffset + 3;
                    byte b13 = t0.getByte(2 + jAddressOffset);
                    jAddressOffset += 4;
                    a.handleFourBytes(b10, b12, b13, t0.getByte(j12), cArr, i12);
                    i12 += 2;
                }
            }
            return new String(cArr, 0, i12);
        }

        @Override // com.google.protobuf.u0.b
        int encodeUtf8(CharSequence charSequence, byte[] bArr, int i10, int i11) {
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
                t0.putByte(bArr, j11, (byte) cCharAt);
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
                                    throw new d(i13, length);
                                }
                                throw new ArrayIndexOutOfBoundsException(str2 + cCharAt2 + str + j11);
                            }
                            int i14 = i13 + 1;
                            if (i14 != length) {
                                char cCharAt3 = charSequence.charAt(i14);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    j10 = 1;
                                    t0.putByte(bArr, j11, (byte) ((codePoint >>> 18) | 240));
                                    t0.putByte(bArr, j11 + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j13 = j11 + 3;
                                    t0.putByte(bArr, j11 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j11 += 4;
                                    t0.putByte(bArr, j13, (byte) ((codePoint & 63) | 128));
                                    i13 = i14;
                                } else {
                                    i13 = i14;
                                }
                            }
                            throw new d(i13 - 1, length);
                        }
                        t0.putByte(bArr, j11, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j14 = j11 + 2;
                        t0.putByte(bArr, j11 + 1, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        j11 += 3;
                        t0.putByte(bArr, j14, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        str = str3;
                        str2 = str4;
                        long j15 = j11 + j6;
                        t0.putByte(bArr, j11, (byte) ((cCharAt2 >>> 6) | 960));
                        j11 += 2;
                        t0.putByte(bArr, j15, (byte) ((cCharAt2 & '?') | 128));
                    }
                    j10 = 1;
                } else {
                    t0.putByte(bArr, j11, (byte) cCharAt2);
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

        @Override // com.google.protobuf.u0.b
        void encodeUtf8Direct(CharSequence charSequence, ByteBuffer byteBuffer) {
            long j6;
            char c7;
            long j10;
            int i10;
            int i11;
            char c10;
            char cCharAt;
            long jAddressOffset = t0.addressOffset(byteBuffer);
            long jPosition = ((long) byteBuffer.position()) + jAddressOffset;
            long jLimit = ((long) byteBuffer.limit()) + jAddressOffset;
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
                t0.putByte(jPosition, (byte) cCharAt);
                i12++;
                jPosition = 1 + jPosition;
            }
            if (i12 == length) {
                byteBuffer.position((int) (jPosition - jAddressOffset));
                return;
            }
            while (i12 < length) {
                char cCharAt2 = charSequence.charAt(i12);
                if (cCharAt2 >= c7 || jPosition >= jLimit) {
                    if (cCharAt2 >= 2048 || jPosition > jLimit - 2) {
                        j10 = jAddressOffset;
                        if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || jPosition > jLimit - 3) {
                            if (jPosition > jLimit - 4) {
                                if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i10 = i12 + 1) == length || !Character.isSurrogatePair(cCharAt2, charSequence.charAt(i10)))) {
                                    throw new d(i12, length);
                                }
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + cCharAt2 + " at index " + jPosition);
                            }
                            i11 = i12 + 1;
                            if (i11 != length) {
                                char cCharAt3 = charSequence.charAt(i11);
                                if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                    int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                    t0.putByte(jPosition, (byte) ((codePoint >>> 18) | 240));
                                    c10 = 128;
                                    t0.putByte(jPosition + 1, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j11 = jPosition + 3;
                                    t0.putByte(jPosition + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                    jPosition += 4;
                                    t0.putByte(j11, (byte) ((codePoint & 63) | 128));
                                } else {
                                    i12 = i11;
                                }
                            }
                            throw new d(i12 - 1, length);
                        }
                        long j12 = jPosition + j6;
                        t0.putByte(jPosition, (byte) ((cCharAt2 >>> '\f') | 480));
                        long j13 = jPosition + 2;
                        t0.putByte(j12, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                        jPosition += 3;
                        t0.putByte(j13, (byte) ((cCharAt2 & '?') | 128));
                    } else {
                        j10 = jAddressOffset;
                        long j14 = jPosition + j6;
                        t0.putByte(jPosition, (byte) ((cCharAt2 >>> 6) | 960));
                        jPosition += 2;
                        t0.putByte(j14, (byte) ((cCharAt2 & '?') | 128));
                    }
                    i11 = i12;
                    c10 = 128;
                } else {
                    t0.putByte(jPosition, (byte) cCharAt2);
                    j10 = jAddressOffset;
                    i11 = i12;
                    c10 = c7;
                    jPosition += j6;
                }
                c7 = c10;
                jAddressOffset = j10;
                j6 = 1;
                i12 = i11 + 1;
            }
            byteBuffer.position((int) (jPosition - jAddressOffset));
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        
            if (com.google.protobuf.t0.getByte(r2) > (-65)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00a8, code lost:
        
            if (com.google.protobuf.t0.getByte(r2) > (-65)) goto L59;
         */
        @Override // com.google.protobuf.u0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        int partialIsValidUtf8Direct(int i10, ByteBuffer byteBuffer, int i11, int i12) {
            long j6;
            byte b7 = 0;
            if ((i11 | i12 | (byteBuffer.limit() - i12)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i11), Integer.valueOf(i12)));
            }
            long jAddressOffset = t0.addressOffset(byteBuffer) + ((long) i11);
            long j10 = ((long) (i12 - i11)) + jAddressOffset;
            if (i10 != 0) {
                if (jAddressOffset >= j10) {
                    return i10;
                }
                byte b10 = (byte) i10;
                if (b10 < -32) {
                    if (b10 >= -62) {
                        long j11 = 1 + jAddressOffset;
                        if (t0.getByte(jAddressOffset) <= -65) {
                            jAddressOffset = j11;
                        }
                    }
                    return -1;
                }
                if (b10 < -16) {
                    byte b11 = (byte) (~(i10 >> 8));
                    if (b11 == 0) {
                        long j12 = jAddressOffset + 1;
                        b11 = t0.getByte(jAddressOffset);
                        if (j12 >= j10) {
                            return u0.incompleteStateFor(b10, b11);
                        }
                        jAddressOffset = j12;
                    }
                    if (b11 <= -65 && ((b10 != -32 || b11 >= -96) && (b10 != -19 || b11 < -96))) {
                        j6 = jAddressOffset + 1;
                    }
                    return -1;
                }
                byte b12 = (byte) (~(i10 >> 8));
                if (b12 == 0) {
                    long j13 = jAddressOffset + 1;
                    b12 = t0.getByte(jAddressOffset);
                    if (j13 >= j10) {
                        return u0.incompleteStateFor(b10, b12);
                    }
                    jAddressOffset = j13;
                } else {
                    b7 = (byte) (i10 >> 16);
                }
                if (b7 == 0) {
                    long j14 = jAddressOffset + 1;
                    b7 = t0.getByte(jAddressOffset);
                    if (j14 >= j10) {
                        return u0.incompleteStateFor(b10, b12, b7);
                    }
                    jAddressOffset = j14;
                }
                if (b12 <= -65 && (((b10 << com.google.common.base.c.FS) + (b12 + 112)) >> 30) == 0 && b7 <= -65) {
                    j6 = jAddressOffset + 1;
                }
                return -1;
                jAddressOffset = j6;
            }
            return partialIsValidUtf8(jAddressOffset, (int) (j10 - jAddressOffset));
        }

        e() {
        }

        static boolean isAvailable() {
            if (t0.hasUnsafeArrayOperations() && t0.hasUnsafeByteBufferOperations()) {
                return true;
            }
            return false;
        }

        private static int unsafeEstimateConsecutiveAscii(long j6, int i10) {
            if (i10 < 16) {
                return 0;
            }
            int i11 = (int) ((-j6) & 7);
            int i12 = i11;
            while (i12 > 0) {
                long j10 = 1 + j6;
                if (t0.getByte(j6) < 0) {
                    return i11 - i12;
                }
                i12--;
                j6 = j10;
            }
            int i13 = i10 - i11;
            while (i13 >= 8 && (t0.getLong(j6) & u0.ASCII_MASK_LONG) == 0) {
                j6 += 8;
                i13 -= 8;
            }
            return i10 - i13;
        }

        private static int unsafeIncompleteStateFor(long j6, int i10, int i11) {
            if (i11 == 0) {
                return u0.incompleteStateFor(i10);
            }
            if (i11 == 1) {
                return u0.incompleteStateFor(i10, t0.getByte(j6));
            }
            if (i11 == 2) {
                return u0.incompleteStateFor(i10, t0.getByte(j6), t0.getByte(j6 + 1));
            }
            throw new AssertionError();
        }

        private static int partialIsValidUtf8(byte[] bArr, long j6, int i10) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(bArr, j6, i10);
            int i11 = i10 - iUnsafeEstimateConsecutiveAscii;
            long j10 = j6 + ((long) iUnsafeEstimateConsecutiveAscii);
            while (true) {
                byte b7 = 0;
                while (i11 > 0) {
                    long j11 = j10 + 1;
                    b7 = t0.getByte(bArr, j10);
                    if (b7 < 0) {
                        j10 = j11;
                        break;
                    }
                    i11--;
                    j10 = j11;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (b7 < -32) {
                    if (i12 == 0) {
                        return b7;
                    }
                    i11 -= 2;
                    if (b7 >= -62) {
                        long j12 = 1 + j10;
                        if (t0.getByte(bArr, j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (b7 >= -16) {
                    if (i12 < 3) {
                        return unsafeIncompleteStateFor(bArr, b7, j10, i12);
                    }
                    i11 -= 4;
                    long j13 = 1 + j10;
                    byte b10 = t0.getByte(bArr, j10);
                    if (b10 <= -65 && (((b7 << com.google.common.base.c.FS) + (b10 + 112)) >> 30) == 0) {
                        long j14 = 2 + j10;
                        if (t0.getByte(bArr, j13) <= -65) {
                            j10 += 3;
                            if (t0.getByte(bArr, j14) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return unsafeIncompleteStateFor(bArr, b7, j10, i12);
                }
                i11 -= 3;
                long j15 = 1 + j10;
                byte b11 = t0.getByte(bArr, j10);
                if (b11 <= -65 && ((b7 != -32 || b11 >= -96) && (b7 != -19 || b11 < -96))) {
                    j10 += 2;
                    if (t0.getByte(bArr, j15) > -65) {
                    }
                }
                return -1;
            }
        }

        private static int partialIsValidUtf8(long j6, int i10) {
            int iUnsafeEstimateConsecutiveAscii = unsafeEstimateConsecutiveAscii(j6, i10);
            long j10 = j6 + ((long) iUnsafeEstimateConsecutiveAscii);
            int i11 = i10 - iUnsafeEstimateConsecutiveAscii;
            while (true) {
                byte b7 = 0;
                while (i11 > 0) {
                    long j11 = j10 + 1;
                    b7 = t0.getByte(j10);
                    if (b7 < 0) {
                        j10 = j11;
                        break;
                    }
                    i11--;
                    j10 = j11;
                }
                if (i11 == 0) {
                    return 0;
                }
                int i12 = i11 - 1;
                if (b7 < -32) {
                    if (i12 == 0) {
                        return b7;
                    }
                    i11 -= 2;
                    if (b7 >= -62) {
                        long j12 = 1 + j10;
                        if (t0.getByte(j10) <= -65) {
                            j10 = j12;
                        }
                    }
                    return -1;
                }
                if (b7 >= -16) {
                    if (i12 < 3) {
                        return unsafeIncompleteStateFor(j10, b7, i12);
                    }
                    i11 -= 4;
                    long j13 = 1 + j10;
                    byte b10 = t0.getByte(j10);
                    if (b10 <= -65 && (((b7 << com.google.common.base.c.FS) + (b10 + 112)) >> 30) == 0) {
                        long j14 = 2 + j10;
                        if (t0.getByte(j13) <= -65) {
                            j10 += 3;
                            if (t0.getByte(j14) > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i12 < 2) {
                    return unsafeIncompleteStateFor(j10, b7, i12);
                }
                i11 -= 3;
                long j15 = 1 + j10;
                byte b11 = t0.getByte(j10);
                if (b11 <= -65 && ((b7 != -32 || b11 >= -96) && (b7 != -19 || b11 < -96))) {
                    j10 += 2;
                    if (t0.getByte(j15) > -65) {
                    }
                }
                return -1;
            }
        }
    }

    static String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(byteBuffer, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i10) {
        if (i10 > -12) {
            return -1;
        }
        return i10;
    }

    static boolean isValidUtf8(byte[] bArr) {
        return processor.isValidUtf8(bArr, 0, bArr.length);
    }

    static int partialIsValidUtf8(int i10, byte[] bArr, int i11, int i12) {
        return processor.partialIsValidUtf8(i10, bArr, i11, i12);
    }

    static String decodeUtf8(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
        return processor.decodeUtf8(bArr, i10, i11);
    }

    static int encode(CharSequence charSequence, byte[] bArr, int i10, int i11) {
        return processor.encodeUtf8(charSequence, bArr, i10, i11);
    }

    static void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        processor.encodeUtf8(charSequence, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int estimateConsecutiveAscii(ByteBuffer byteBuffer, int i10, int i11) {
        int i12 = i11 - 7;
        int i13 = i10;
        while (i13 < i12 && (byteBuffer.getLong(i13) & ASCII_MASK_LONG) == 0) {
            i13 += 8;
        }
        return i13 - i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i10, int i11) {
        if (i10 > -12 || i11 > -65) {
            return -1;
        }
        return i10 ^ (i11 << 8);
    }

    static boolean isValidUtf8(byte[] bArr, int i10, int i11) {
        return processor.isValidUtf8(bArr, i10, i11);
    }

    static int partialIsValidUtf8(int i10, ByteBuffer byteBuffer, int i11, int i12) {
        return processor.partialIsValidUtf8(i10, byteBuffer, i11, i12);
    }

    static {
        b cVar;
        if (e.isAvailable() && !com.google.protobuf.b.isOnAndroidDevice()) {
            cVar = new e();
        } else {
            cVar = new c();
        }
        processor = cVar;
    }

    private u0() {
    }

    static int encodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length && charSequence.charAt(i10) < 128) {
            i10++;
        }
        int iEncodedLengthGeneral = length;
        while (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt < 2048) {
                iEncodedLengthGeneral += (127 - cCharAt) >>> 31;
                i10++;
            } else {
                iEncodedLengthGeneral += encodedLengthGeneral(charSequence, i10);
                break;
            }
        }
        if (iEncodedLengthGeneral >= length) {
            return iEncodedLengthGeneral;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iEncodedLengthGeneral) + 4294967296L));
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i10) {
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
                        throw new d(i10, length);
                    }
                }
            }
            i10++;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(int i10, int i11, int i12) {
        if (i10 > -12 || i11 > -65 || i12 > -65) {
            return -1;
        }
        return (i10 ^ (i11 << 8)) ^ (i12 << 16);
    }

    static boolean isValidUtf8(ByteBuffer byteBuffer) {
        return processor.isValidUtf8(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(byte[] bArr, int i10, int i11) {
        byte b7 = bArr[i10 - 1];
        int i12 = i11 - i10;
        if (i12 == 0) {
            return incompleteStateFor(b7);
        }
        if (i12 == 1) {
            return incompleteStateFor(b7, bArr[i10]);
        }
        if (i12 == 2) {
            return incompleteStateFor(b7, bArr[i10], bArr[i10 + 1]);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int incompleteStateFor(ByteBuffer byteBuffer, int i10, int i11, int i12) {
        if (i12 == 0) {
            return incompleteStateFor(i10);
        }
        if (i12 == 1) {
            return incompleteStateFor(i10, byteBuffer.get(i11));
        }
        if (i12 == 2) {
            return incompleteStateFor(i10, byteBuffer.get(i11), byteBuffer.get(i11 + 1));
        }
        throw new AssertionError();
    }
}

package okio;

import okio.internal._ByteStringKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class _UtilKt {

    @NotNull
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b7, int i10) {
        return b7 & i10;
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    public static final long minOf(long j6, int i10) {
        return Math.min(j6, i10);
    }

    @NotNull
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        kotlin.jvm.internal.t.j(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i10) {
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    public static final long rightRotate(long j6, int i10) {
        return (j6 << (64 - i10)) | (j6 >>> i10);
    }

    public static final int shl(byte b7, int i10) {
        return b7 << i10;
    }

    public static final int shr(byte b7, int i10) {
        return b7 >> i10;
    }

    @NotNull
    public static final String toHexString(byte b7) {
        return kotlin.text.t.q(new char[]{_ByteStringKt.getHEX_DIGIT_CHARS()[(b7 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[b7 & com.google.common.base.c.SI]});
    }

    public static final byte xor(byte b7, byte b10) {
        return (byte) (b7 ^ b10);
    }

    public static final long and(byte b7, long j6) {
        return ((long) b7) & j6;
    }

    public static final boolean arrayRangeEquals(@NotNull byte[] a7, int i10, @NotNull byte[] b7, int i11, int i12) {
        kotlin.jvm.internal.t.j(a7, "a");
        kotlin.jvm.internal.t.j(b7, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (a7[i13 + i10] != b7[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j6, long j10, long j11) {
        if ((j10 | j11) < 0 || j10 > j6 || j6 - j10 < j11) {
            throw new ArrayIndexOutOfBoundsException("size=" + j6 + " offset=" + j10 + " byteCount=" + j11);
        }
    }

    public static final long minOf(int i10, long j6) {
        return Math.min(i10, j6);
    }

    public static final int resolveDefaultParameter(@NotNull ByteString byteString, int i10) {
        kotlin.jvm.internal.t.j(byteString, "<this>");
        return i10 == DEFAULT__ByteString_size ? byteString.size() : i10;
    }

    public static final long reverseBytes(long j6) {
        return ((j6 & 255) << 56) | (((-72057594037927936L) & j6) >>> 56) | ((71776119061217280L & j6) >>> 40) | ((280375465082880L & j6) >>> 24) | ((1095216660480L & j6) >>> 8) | ((4278190080L & j6) << 8) | ((16711680 & j6) << 24) | ((65280 & j6) << 40);
    }

    public static final long and(int i10, long j6) {
        return ((long) i10) & j6;
    }

    public static final int resolveDefaultParameter(@NotNull byte[] bArr, int i10) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        return i10 == DEFAULT__ByteString_size ? bArr.length : i10;
    }

    public static final short reverseBytes(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    @NotNull
    public static final String toHexString(int i10) {
        if (i10 == 0) {
            return "0";
        }
        int i11 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 28) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 24) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 20) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 16) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 12) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 8) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i10 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[i10 & 15]};
        while (i11 < 8 && cArr[i11] == '0') {
            i11++;
        }
        return kotlin.text.t.r(cArr, i11, 8);
    }

    @NotNull
    public static final String toHexString(long j6) {
        if (j6 == 0) {
            return "0";
        }
        int i10 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 60) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 56) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 52) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 48) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 44) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 40) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 36) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 32) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 28) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 24) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 20) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 16) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 12) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 8) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j6 >> 4) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) (j6 & 15)]};
        while (i10 < 16 && cArr[i10] == '0') {
            i10++;
        }
        return kotlin.text.t.r(cArr, i10, 16);
    }
}

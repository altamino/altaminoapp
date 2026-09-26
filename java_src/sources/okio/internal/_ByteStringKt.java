package okio.internal;

import com.google.common.base.c;
import java.util.Arrays;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import okio.Buffer;
import okio.ByteString;
import okio._Base64Kt;
import okio._JvmPlatformKt;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class _ByteStringKt {

    @NotNull
    private static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final boolean commonEndsWith(@NotNull ByteString byteString, @NotNull ByteString suffix) {
        t.j(byteString, "<this>");
        t.j(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.size(), suffix, 0, suffix.size());
    }

    public static final int commonLastIndexOf(@NotNull ByteString byteString, @NotNull ByteString other, int i10) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        return byteString.lastIndexOf(other.internalArray$okio(), i10);
    }

    public static final boolean commonRangeEquals(@NotNull ByteString byteString, int i10, @NotNull ByteString other, int i11, int i12) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        return other.rangeEquals(i11, byteString.getData$okio(), i10, i12);
    }

    public static final boolean commonStartsWith(@NotNull ByteString byteString, @NotNull ByteString prefix) {
        t.j(byteString, "<this>");
        t.j(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.size());
    }

    @NotNull
    public static final char[] getHEX_DIGIT_CHARS() {
        return HEX_DIGIT_CHARS;
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int codePointIndexToCharIndex(byte[] bArr, int i10) {
        byte b7;
        int i11;
        int length = bArr.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < length) {
            byte b10 = bArr[i12];
            if (b10 >= 0) {
                int i15 = i14 + 1;
                if (i14 == i10) {
                    return i13;
                }
                if ((b10 != 10 && b10 != 13 && ((b10 >= 0 && b10 < 32) || (127 <= b10 && b10 < 160))) || b10 == 65533) {
                    return -1;
                }
                i13 += b10 < 65536 ? 1 : 2;
                i12++;
                while (true) {
                    i14 = i15;
                    if (i12 >= length || (b7 = bArr[i12]) < 0) {
                        break;
                    }
                    i12++;
                    i15 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((b7 != 10 && b7 != 13 && ((b7 >= 0 && b7 < 32) || (127 <= b7 && b7 < 160))) || b7 == 65533) {
                        return -1;
                    }
                    i13 += b7 < 65536 ? 1 : 2;
                }
            } else if ((b10 >> 5) == -2) {
                int i16 = i12 + 1;
                if (length <= i16) {
                    if (i14 == i10) {
                        return i13;
                    }
                    return -1;
                }
                byte b11 = bArr[i16];
                if ((b11 & 192) != 128) {
                    if (i14 == i10) {
                        return i13;
                    }
                    return -1;
                }
                int i17 = (b10 << 6) ^ (b11 ^ 3968);
                if (i17 < 128) {
                    if (i14 == i10) {
                        return i13;
                    }
                    return -1;
                }
                int i18 = i14 + 1;
                if (i14 == i10) {
                    return i13;
                }
                if ((i17 != 10 && i17 != 13 && ((i17 >= 0 && i17 < 32) || (127 <= i17 && i17 < 160))) || i17 == 65533) {
                    return -1;
                }
                i13 += i17 < 65536 ? 1 : 2;
                i12 += 2;
                i14 = i18;
            } else {
                if ((b10 >> 4) == -2) {
                    int i19 = i12 + 2;
                    if (length <= i19) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b12 = bArr[i12 + 1];
                    if ((b12 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b13 = bArr[i19];
                    if ((b13 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i20 = (b10 << c.FF) ^ ((b13 ^ (-123008)) ^ (b12 << 6));
                    if (i20 < 2048) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i20 && i20 < 57344) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((i20 != 10 && i20 != 13 && ((i20 >= 0 && i20 < 32) || (127 <= i20 && i20 < 160))) || i20 == 65533) {
                        return -1;
                    }
                    i13 += i20 < 65536 ? 1 : 2;
                    i12 += 3;
                } else {
                    if ((b10 >> 3) != -2) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i21 = i12 + 3;
                    if (length <= i21) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b14 = bArr[i12 + 1];
                    if ((b14 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b15 = bArr[i12 + 2];
                    if ((b15 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    byte b16 = bArr[i21];
                    if ((b16 & 192) != 128) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    int i22 = (b10 << c.DC2) ^ (((b16 ^ 3678080) ^ (b15 << 6)) ^ (b14 << c.FF));
                    if (i22 > 1114111) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (55296 <= i22 && i22 < 57344) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    if (i22 < 65536) {
                        if (i14 == i10) {
                            return i13;
                        }
                        return -1;
                    }
                    i11 = i14 + 1;
                    if (i14 == i10) {
                        return i13;
                    }
                    if ((i22 != 10 && i22 != 13 && ((i22 >= 0 && i22 < 32) || (127 <= i22 && i22 < 160))) || i22 == 65533) {
                        return -1;
                    }
                    i13 += i22 < 65536 ? 1 : 2;
                    i12 += 4;
                }
                i14 = i11;
            }
        }
        return i13;
    }

    @NotNull
    public static final String commonBase64(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        return _Base64Kt.encodeBase64$default(byteString.getData$okio(), null, 1, null);
    }

    @NotNull
    public static final String commonBase64Url(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        return _Base64Kt.encodeBase64(byteString.getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(@NotNull ByteString byteString, @NotNull ByteString other) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        int size = byteString.size();
        int size2 = other.size();
        int iMin = Math.min(size, size2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int i11 = byteString.getByte(i10) & 255;
            int i12 = other.getByte(i10) & 255;
            if (i11 != i12) {
                return i11 < i12 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public static final void commonCopyInto(@NotNull ByteString byteString, int i10, @NotNull byte[] target, int i11, int i12) {
        t.j(byteString, "<this>");
        t.j(target, "target");
        o.d(byteString.getData$okio(), target, i11, i10, i12 + i10);
    }

    @Nullable
    public static final ByteString commonDecodeBase64(@NotNull String str) {
        t.j(str, "<this>");
        byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    @NotNull
    public static final ByteString commonDecodeHex(@NotNull String str) {
        t.j(str, "<this>");
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) ((decodeHexDigit(str.charAt(i11)) << 4) + decodeHexDigit(str.charAt(i11 + 1)));
        }
        return new ByteString(bArr);
    }

    @NotNull
    public static final ByteString commonEncodeUtf8(@NotNull String str) {
        t.j(str, "<this>");
        ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.setUtf8$okio(str);
        return byteString;
    }

    public static final boolean commonEndsWith(@NotNull ByteString byteString, @NotNull byte[] suffix) {
        t.j(byteString, "<this>");
        t.j(suffix, "suffix");
        return byteString.rangeEquals(byteString.size() - suffix.length, suffix, 0, suffix.length);
    }

    public static final boolean commonEquals(@NotNull ByteString byteString, @Nullable Object obj) {
        t.j(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString2 = (ByteString) obj;
            if (byteString2.size() == byteString.getData$okio().length && byteString2.rangeEquals(0, byteString.getData$okio(), 0, byteString.getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(@NotNull ByteString byteString, int i10) {
        t.j(byteString, "<this>");
        return byteString.getData$okio()[i10];
    }

    public static final int commonGetSize(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        return byteString.getData$okio().length;
    }

    public static final int commonHashCode(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        int hashCode$okio = byteString.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int iHashCode = Arrays.hashCode(byteString.getData$okio());
        byteString.setHashCode$okio(iHashCode);
        return iHashCode;
    }

    @NotNull
    public static final String commonHex(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        char[] cArr = new char[byteString.getData$okio().length * 2];
        int i10 = 0;
        for (byte b7 : byteString.getData$okio()) {
            int i11 = i10 + 1;
            cArr[i10] = getHEX_DIGIT_CHARS()[(b7 >> 4) & 15];
            i10 += 2;
            cArr[i11] = getHEX_DIGIT_CHARS()[b7 & c.SI];
        }
        return kotlin.text.t.q(cArr);
    }

    public static final int commonIndexOf(@NotNull ByteString byteString, @NotNull byte[] other, int i10) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        int length = byteString.getData$okio().length - other.length;
        int iMax = Math.max(i10, 0);
        if (iMax > length) {
            return -1;
        }
        while (!_UtilKt.arrayRangeEquals(byteString.getData$okio(), iMax, other, 0, other.length)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    @NotNull
    public static final byte[] commonInternalArray(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        return byteString.getData$okio();
    }

    public static final int commonLastIndexOf(@NotNull ByteString byteString, @NotNull byte[] other, int i10) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        for (int iMin = Math.min(_UtilKt.resolveDefaultParameter(byteString, i10), byteString.getData$okio().length - other.length); -1 < iMin; iMin--) {
            if (_UtilKt.arrayRangeEquals(byteString.getData$okio(), iMin, other, 0, other.length)) {
                return iMin;
            }
        }
        return -1;
    }

    @NotNull
    public static final ByteString commonOf(@NotNull byte[] data) {
        t.j(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        t.i(bArrCopyOf, "copyOf(this, size)");
        return new ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(@NotNull ByteString byteString, int i10, @NotNull byte[] other, int i11, int i12) {
        t.j(byteString, "<this>");
        t.j(other, "other");
        return i10 >= 0 && i10 <= byteString.getData$okio().length - i12 && i11 >= 0 && i11 <= other.length - i12 && _UtilKt.arrayRangeEquals(byteString.getData$okio(), i10, other, i11, i12);
    }

    public static final boolean commonStartsWith(@NotNull ByteString byteString, @NotNull byte[] prefix) {
        t.j(byteString, "<this>");
        t.j(prefix, "prefix");
        return byteString.rangeEquals(0, prefix, 0, prefix.length);
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull ByteString byteString, int i10, int i11) {
        t.j(byteString, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString, i11);
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (iResolveDefaultParameter <= byteString.getData$okio().length) {
            if (iResolveDefaultParameter - i10 >= 0) {
                return (i10 == 0 && iResolveDefaultParameter == byteString.getData$okio().length) ? byteString : new ByteString(o.n(byteString.getData$okio(), i10, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
    }

    @NotNull
    public static final ByteString commonToAsciiLowercase(@NotNull ByteString byteString) {
        byte b7;
        t.j(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData$okio().length; i10++) {
            byte b10 = byteString.getData$okio()[i10];
            byte b11 = (byte) 65;
            if (b10 >= b11 && b10 <= (b7 = (byte) 90)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                t.i(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b12 = bArrCopyOf[i11];
                    if (b12 >= b11 && b12 <= b7) {
                        bArrCopyOf[i11] = (byte) (b12 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    @NotNull
    public static final ByteString commonToAsciiUppercase(@NotNull ByteString byteString) {
        byte b7;
        t.j(byteString, "<this>");
        for (int i10 = 0; i10 < byteString.getData$okio().length; i10++) {
            byte b10 = byteString.getData$okio()[i10];
            byte b11 = (byte) 97;
            if (b10 >= b11 && b10 <= (b7 = (byte) 122)) {
                byte[] data$okio = byteString.getData$okio();
                byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
                t.i(bArrCopyOf, "copyOf(this, size)");
                bArrCopyOf[i10] = (byte) (b10 - 32);
                for (int i11 = i10 + 1; i11 < bArrCopyOf.length; i11++) {
                    byte b12 = bArrCopyOf[i11];
                    if (b12 >= b11 && b12 <= b7) {
                        bArrCopyOf[i11] = (byte) (b12 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        byte[] data$okio = byteString.getData$okio();
        byte[] bArrCopyOf = Arrays.copyOf(data$okio, data$okio.length);
        t.i(bArrCopyOf, "copyOf(this, size)");
        return bArrCopyOf;
    }

    @NotNull
    public static final ByteString commonToByteString(@NotNull byte[] bArr, int i10, int i11) {
        t.j(bArr, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(bArr, i11);
        _UtilKt.checkOffsetAndCount(bArr.length, i10, iResolveDefaultParameter);
        return new ByteString(o.n(bArr, i10, iResolveDefaultParameter + i10));
    }

    @NotNull
    public static final String commonToString(@NotNull ByteString byteString) {
        ByteString byteString2 = byteString;
        t.j(byteString2, "<this>");
        if (byteString.getData$okio().length == 0) {
            return "[size=0]";
        }
        int iCodePointIndexToCharIndex = codePointIndexToCharIndex(byteString.getData$okio(), 64);
        if (iCodePointIndexToCharIndex != -1) {
            String strUtf8 = byteString.utf8();
            String strSubstring = strUtf8.substring(0, iCodePointIndexToCharIndex);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String strG = kotlin.text.t.G(kotlin.text.t.G(kotlin.text.t.G(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (iCodePointIndexToCharIndex >= strUtf8.length()) {
                return "[text=" + strG + b.END_LIST;
            }
            return "[size=" + byteString.getData$okio().length + " text=" + strG + "…]";
        }
        if (byteString.getData$okio().length <= 64) {
            return "[hex=" + byteString.hex() + b.END_LIST;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[size=");
        sb.append(byteString.getData$okio().length);
        sb.append(" hex=");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString2, 64);
        if (iResolveDefaultParameter > byteString.getData$okio().length) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.getData$okio().length + ')').toString());
        }
        if (iResolveDefaultParameter < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        if (iResolveDefaultParameter != byteString.getData$okio().length) {
            byteString2 = new ByteString(o.n(byteString.getData$okio(), 0, iResolveDefaultParameter));
        }
        sb.append(byteString2.hex());
        sb.append("…]");
        return sb.toString();
    }

    @NotNull
    public static final String commonUtf8(@NotNull ByteString byteString) {
        t.j(byteString, "<this>");
        String utf8$okio = byteString.getUtf8$okio();
        if (utf8$okio != null) {
            return utf8$okio;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.internalArray$okio());
        byteString.setUtf8$okio(utf8String);
        return utf8String;
    }

    public static final void commonWrite(@NotNull ByteString byteString, @NotNull Buffer buffer, int i10, int i11) {
        t.j(byteString, "<this>");
        t.j(buffer, "buffer");
        buffer.write(byteString.getData$okio(), i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int decodeHexDigit(char c7) {
        if ('0' <= c7 && c7 < ':') {
            return c7 - '0';
        }
        if ('a' <= c7 && c7 < 'g') {
            return c7 - 'W';
        }
        if ('A' <= c7 && c7 < 'G') {
            return c7 - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c7);
    }
}

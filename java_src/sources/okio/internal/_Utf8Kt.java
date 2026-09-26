package okio.internal;

import com.google.common.base.c;
import java.util.Arrays;
import kotlin.jvm.internal.t;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class _Utf8Kt {
    @NotNull
    public static final byte[] commonAsUtf8ToByteArray(@NotNull String str) {
        int i10;
        char cCharAt;
        t.j(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            char cCharAt2 = str.charAt(i11);
            if (t.l(cCharAt2, 128) >= 0) {
                int length2 = str.length();
                int i12 = i11;
                while (i11 < length2) {
                    char cCharAt3 = str.charAt(i11);
                    if (t.l(cCharAt3, 128) < 0) {
                        int i13 = i12 + 1;
                        bArr[i12] = (byte) cCharAt3;
                        i11++;
                        while (true) {
                            i12 = i13;
                            if (i11 >= length2 || t.l(str.charAt(i11), 128) >= 0) {
                                break;
                            }
                            i13 = i12 + 1;
                            bArr[i12] = (byte) str.charAt(i11);
                            i11++;
                        }
                    } else {
                        if (t.l(cCharAt3, 2048) < 0) {
                            bArr[i12] = (byte) ((cCharAt3 >> 6) | 192);
                            i12 += 2;
                            bArr[i12 + 1] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (55296 > cCharAt3 || cCharAt3 >= 57344) {
                            bArr[i12] = (byte) ((cCharAt3 >> '\f') | 224);
                            bArr[i12 + 1] = (byte) (((cCharAt3 >> 6) & 63) | 128);
                            i12 += 3;
                            bArr[i12 + 2] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (t.l(cCharAt3, 56319) > 0 || length2 <= (i10 = i11 + 1) || 56320 > (cCharAt = str.charAt(i10)) || cCharAt >= 57344) {
                            bArr[i12] = Utf8.REPLACEMENT_BYTE;
                            i11++;
                            i12++;
                        } else {
                            int iCharAt = ((cCharAt3 << '\n') + str.charAt(i10)) - 56613888;
                            bArr[i12] = (byte) ((iCharAt >> 18) | 240);
                            bArr[i12 + 1] = (byte) (((iCharAt >> 12) & 63) | 128);
                            bArr[i12 + 2] = (byte) (((iCharAt >> 6) & 63) | 128);
                            i12 += 4;
                            bArr[i12 + 3] = (byte) ((iCharAt & 63) | 128);
                            i11 += 2;
                        }
                        i11++;
                    }
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr, i12);
                t.i(bArrCopyOf, "copyOf(this, newSize)");
                return bArrCopyOf;
            }
            bArr[i11] = (byte) cCharAt2;
            i11++;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        t.i(bArrCopyOf2, "copyOf(this, newSize)");
        return bArrCopyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if ((r16[r5] & 192) == 128) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ec, code lost:
    
        if ((r16[r5] & 192) == 128) goto L70;
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String commonToUtf8String(@NotNull byte[] bArr, int i10, int i11) {
        byte b7;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = i10;
        t.j(bArr, "<this>");
        if (i17 < 0 || i11 > bArr.length || i17 > i11) {
            throw new ArrayIndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i17 + " endIndex=" + i11);
        }
        char[] cArr = new char[i11 - i17];
        int i18 = 0;
        while (i17 < i11) {
            byte b10 = bArr[i17];
            if (b10 >= 0) {
                int i19 = i18 + 1;
                cArr[i18] = (char) b10;
                i17++;
                while (true) {
                    i18 = i19;
                    if (i17 >= i11 || (b7 = bArr[i17]) < 0) {
                        break;
                    }
                    i17++;
                    i19 = i18 + 1;
                    cArr[i18] = (char) b7;
                }
            } else if ((b10 >> 5) == -2) {
                int i20 = i17 + 1;
                if (i11 <= i20) {
                    i12 = i18 + 1;
                    cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                } else {
                    byte b11 = bArr[i20];
                    if ((b11 & 192) == 128) {
                        int i21 = (b10 << 6) ^ (b11 ^ 3968);
                        if (i21 < 128) {
                            i12 = i18 + 1;
                            cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        } else {
                            i12 = i18 + 1;
                            cArr[i18] = (char) i21;
                        }
                        i18 = i12;
                        i13 = 2;
                        i17 += i13;
                    } else {
                        i12 = i18 + 1;
                        cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                    }
                }
                i18 = i12;
                i13 = 1;
                i17 += i13;
            } else {
                if ((b10 >> 4) == -2) {
                    int i22 = i17 + 2;
                    if (i11 <= i22) {
                        i12 = i18 + 1;
                        cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        int i23 = i17 + 1;
                        if (i11 > i23) {
                        }
                        i18 = i12;
                        i13 = 1;
                    } else {
                        byte b12 = bArr[i17 + 1];
                        if ((b12 & 192) == 128) {
                            byte b13 = bArr[i22];
                            if ((b13 & 192) == 128) {
                                int i24 = (b10 << c.FF) ^ ((b13 ^ (-123008)) ^ (b12 << 6));
                                if (i24 < 2048) {
                                    i14 = i18 + 1;
                                    cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                } else if (55296 > i24 || i24 >= 57344) {
                                    i14 = i18 + 1;
                                    cArr[i18] = (char) i24;
                                } else {
                                    i14 = i18 + 1;
                                    cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                }
                                i18 = i14;
                            } else {
                                i12 = i18 + 1;
                                cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                                i18 = i12;
                                i13 = 2;
                            }
                        } else {
                            i12 = i18 + 1;
                            cArr[i18] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            i18 = i12;
                            i13 = 1;
                        }
                    }
                    i17 += i13;
                } else if ((b10 >> 3) == -2) {
                    int i25 = i17 + 3;
                    if (i11 <= i25) {
                        i15 = i18 + 1;
                        cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                        int i26 = i17 + 1;
                        if (i11 > i26 && (bArr[i26] & 192) == 128) {
                            int i27 = i17 + 2;
                            if (i11 > i27) {
                            }
                            i18 = i15;
                            i13 = 2;
                        }
                        i18 = i15;
                        i13 = 1;
                    } else {
                        byte b14 = bArr[i17 + 1];
                        if ((b14 & 192) == 128) {
                            byte b15 = bArr[i17 + 2];
                            if ((b15 & 192) == 128) {
                                byte b16 = bArr[i25];
                                if ((b16 & 192) == 128) {
                                    int i28 = (b10 << c.DC2) ^ (((b16 ^ 3678080) ^ (b15 << 6)) ^ (b14 << c.FF));
                                    if (i28 > 1114111) {
                                        i16 = i18 + 1;
                                        cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                                    } else if ((55296 > i28 || i28 >= 57344) && i28 >= 65536 && i28 != 65533) {
                                        cArr[i18] = (char) ((i28 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                        cArr[i18 + 1] = (char) ((i28 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                                        i16 = i18 + 2;
                                    } else {
                                        i16 = i18 + 1;
                                        cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                                    }
                                    i13 = 4;
                                    i18 = i16;
                                } else {
                                    i15 = i18 + 1;
                                    cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                                    i18 = i15;
                                }
                            } else {
                                i15 = i18 + 1;
                                cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                                i18 = i15;
                                i13 = 2;
                            }
                        } else {
                            i15 = i18 + 1;
                            cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                            i18 = i15;
                            i13 = 1;
                        }
                    }
                    i17 += i13;
                } else {
                    cArr[i18] = Utf8.REPLACEMENT_CHARACTER;
                    i17++;
                    i18++;
                }
                i13 = 3;
                i17 += i13;
            }
        }
        return kotlin.text.t.r(cArr, 0, i18);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = bArr.length;
        }
        return commonToUtf8String(bArr, i10, i11);
    }
}

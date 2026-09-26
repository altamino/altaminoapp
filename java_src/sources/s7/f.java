package s7;

import j8.o;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;
import w7.i0;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    private static final int HighSurrogateMagic = 55232;
    private static final int MaxCodePoint = 1114111;
    private static final int MinHighSurrogate = 55296;
    private static final int MinLowSurrogate = 56320;
    private static final int MinSupplementary = 65536;

    public static final int a(char c7, char c10) {
        return ((c7 - 55232) << 10) | (c10 - kotlin.jvm.internal.g.MIN_LOW_SURROGATE);
    }

    private static final int c(ByteBuffer byteBuffer, CharSequence charSequence, int i10, int i11, int i12, int i13, int i14, int i15) {
        int iA;
        int i16;
        int i17 = i14 - 3;
        int i18 = i10;
        int i19 = i13;
        while (i17 - i19 > 0 && i18 < i11) {
            int i20 = i18 + 1;
            char cCharAt = charSequence.charAt(i18);
            if (!Character.isHighSurrogate(cCharAt)) {
                i18 = i20;
                iA = cCharAt;
            } else if (i20 == i11 || !Character.isLowSurrogate(charSequence.charAt(i20))) {
                i18 = i20;
                iA = 63;
            } else {
                i18 += 2;
                iA = a(cCharAt, charSequence.charAt(i20));
            }
            if (iA >= 0 && iA < 128) {
                byteBuffer.put(i19, (byte) iA);
                i16 = 1;
            } else if (128 <= iA && iA < 2048) {
                byteBuffer.put(i19, (byte) (((iA >> 6) & 31) | 192));
                byteBuffer.put(i19 + 1, (byte) (128 | (iA & 63)));
                i16 = 2;
            } else if (2048 <= iA && iA < 65536) {
                byteBuffer.put(i19, (byte) (((iA >> 12) & 15) | 224));
                byteBuffer.put(i19 + 1, (byte) ((63 & (iA >> 6)) | 128));
                byteBuffer.put(i19 + 2, (byte) (128 | (iA & 63)));
                i16 = 3;
            } else {
                if (65536 > iA || iA >= 1114112) {
                    j(iA);
                    throw new i();
                }
                byteBuffer.put(i19, (byte) (((iA >> 18) & 7) | 240));
                byteBuffer.put(i19 + 1, (byte) (((iA >> 12) & 63) | 128));
                byteBuffer.put(i19 + 2, (byte) ((63 & (iA >> 6)) | 128));
                byteBuffer.put(i19 + 3, (byte) (128 | (iA & 63)));
                i16 = 4;
            }
            i19 += i16;
        }
        return i19 == i17 ? d(byteBuffer, charSequence, i18, i11, i12, i19, i14, i15) : c.d(i0.b((short) (i18 - i12)), i0.b((short) (i19 - i15)));
    }

    private static final int d(ByteBuffer byteBuffer, CharSequence charSequence, int i10, int i11, int i12, int i13, int i14, int i15) {
        int iA;
        int i16;
        int i17;
        int i18 = i10;
        int i19 = i13;
        while (true) {
            int i20 = i14 - i19;
            if (i20 <= 0 || i18 >= i11) {
                break;
            }
            int i21 = i18 + 1;
            char cCharAt = charSequence.charAt(i18);
            if (!Character.isHighSurrogate(cCharAt)) {
                i18 = i21;
                iA = cCharAt;
            } else if (i21 == i11 || !Character.isLowSurrogate(charSequence.charAt(i21))) {
                i18 = i21;
                iA = 63;
            } else {
                i18 += 2;
                iA = a(cCharAt, charSequence.charAt(i21));
            }
            if (1 <= iA && iA < 128) {
                i16 = 1;
            } else if (128 <= iA && iA < 2048) {
                i16 = 2;
            } else if (2048 <= iA && iA < 65536) {
                i16 = 3;
            } else {
                if (65536 > iA || iA >= 1114112) {
                    j(iA);
                    throw new i();
                }
                i16 = 4;
            }
            if (i16 > i20) {
                i18--;
                break;
            }
            if (iA >= 0 && iA < 128) {
                byteBuffer.put(i19, (byte) iA);
                i17 = 1;
            } else if (128 <= iA && iA < 2048) {
                byteBuffer.put(i19, (byte) (((iA >> 6) & 31) | 192));
                byteBuffer.put(i19 + 1, (byte) ((iA & 63) | 128));
                i17 = 2;
            } else if (2048 <= iA && iA < 65536) {
                byteBuffer.put(i19, (byte) (((iA >> 12) & 15) | 224));
                byteBuffer.put(i19 + 1, (byte) (((iA >> 6) & 63) | 128));
                byteBuffer.put(i19 + 2, (byte) ((iA & 63) | 128));
                i17 = 3;
            } else {
                if (65536 > iA || iA >= 1114112) {
                    j(iA);
                    throw new i();
                }
                byteBuffer.put(i19, (byte) (((iA >> 18) & 7) | 240));
                byteBuffer.put(i19 + 1, (byte) (((iA >> 12) & 63) | 128));
                byteBuffer.put(i19 + 2, (byte) (((iA >> 6) & 63) | 128));
                byteBuffer.put(i19 + 3, (byte) ((iA & 63) | 128));
                i17 = 4;
            }
            i19 += i17;
        }
        return c.d(i0.b((short) (i18 - i12)), i0.b((short) (i19 - i15)));
    }

    public static final int e(int i10) {
        return (i10 >>> 10) + 55232;
    }

    public static final boolean f(int i10) {
        return (i10 >>> 16) == 0;
    }

    public static final boolean g(int i10) {
        return i10 <= MaxCodePoint;
    }

    public static final int h(int i10) {
        return (i10 & 1023) + 56320;
    }

    public static final int b(@NotNull ByteBuffer encodeUTF8, @NotNull CharSequence text, int i10, int i11, int i12, int i13) {
        t.j(encodeUTF8, "$this$encodeUTF8");
        t.j(text, "text");
        int iMin = Math.min(i11, i10 + 65535);
        int iJ = o.j(i13, 65535);
        int i14 = i10;
        int i15 = i12;
        while (i15 < iJ && i14 < iMin) {
            int i16 = i14 + 1;
            char cCharAt = text.charAt(i14);
            int i17 = cCharAt & kotlin.jvm.internal.g.MAX_VALUE;
            if ((cCharAt & 65408) != 0) {
                return c(encodeUTF8, text, i14, iMin, i10, i15, iJ, i12);
            }
            encodeUTF8.put(i15, (byte) i17);
            i14 = i16;
            i15++;
        }
        return c.d(i0.b((short) (i14 - i10)), i0.b((short) (i15 - i12)));
    }

    @NotNull
    public static final Void i(int i10) throws d {
        throw new d("Expected " + i10 + " more character bytes");
    }

    @NotNull
    public static final Void j(int i10) {
        throw new IllegalArgumentException("Malformed code-point " + i10 + " found");
    }
}

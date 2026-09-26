package com.google.zxing.pdf417.encoder;

import com.google.zxing.h;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes10.dex */
final class g {
    private static final int BYTE_COMPACTION = 1;
    private static final int ECI_CHARSET = 927;
    private static final int ECI_GENERAL_PURPOSE = 926;
    private static final int ECI_USER_DEFINED = 925;
    private static final int LATCH_TO_BYTE = 924;
    private static final int LATCH_TO_BYTE_PADDED = 901;
    private static final int LATCH_TO_NUMERIC = 902;
    private static final int LATCH_TO_TEXT = 900;
    private static final byte[] MIXED;
    private static final int NUMERIC_COMPACTION = 2;
    private static final int SHIFT_TO_BYTE = 913;
    private static final int SUBMODE_ALPHA = 0;
    private static final int SUBMODE_LOWER = 1;
    private static final int SUBMODE_MIXED = 2;
    private static final int SUBMODE_PUNCTUATION = 3;
    private static final int TEXT_COMPACTION = 0;
    private static final byte[] TEXT_MIXED_RAW = {TarConstants.LF_NORMAL, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 38, com.google.common.base.c.CR, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0};
    private static final byte[] TEXT_PUNCTUATION_RAW = {59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, com.google.common.base.c.CR, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, Utf8.REPLACEMENT_BYTE, 123, 125, 39, 0};
    private static final byte[] PUNCTUATION = new byte[128];
    private static final Charset DEFAULT_ENCODING = StandardCharsets.ISO_8859_1;

    private static void d(byte[] bArr, int i10, int i11, int i12, StringBuilder sb) {
        int i13;
        if (i11 == 1 && i12 == 0) {
            sb.append((char) 913);
        } else if (i11 % 6 == 0) {
            sb.append((char) 924);
        } else {
            sb.append((char) 901);
        }
        if (i11 >= 6) {
            char[] cArr = new char[5];
            i13 = i10;
            while ((i10 + i11) - i13 >= 6) {
                long j6 = 0;
                for (int i14 = 0; i14 < 6; i14++) {
                    j6 = (j6 << 8) + ((long) (bArr[i13 + i14] & 255));
                }
                for (int i15 = 0; i15 < 5; i15++) {
                    cArr[i15] = (char) (j6 % 900);
                    j6 /= 900;
                }
                for (int i16 = 4; i16 >= 0; i16--) {
                    sb.append(cArr[i16]);
                }
                i13 += 6;
            }
        } else {
            i13 = i10;
        }
        while (i13 < i10 + i11) {
            sb.append((char) (bArr[i13] & 255));
            i13++;
        }
    }

    private static boolean i(char c7) {
        if (c7 != ' ') {
            return c7 >= 'a' && c7 <= 'z';
        }
        return true;
    }

    private static boolean j(char c7) {
        if (c7 != ' ') {
            return c7 >= 'A' && c7 <= 'Z';
        }
        return true;
    }

    private static boolean k(char c7) {
        return c7 >= '0' && c7 <= '9';
    }

    private static boolean n(char c7) {
        if (c7 == '\t' || c7 == '\n' || c7 == '\r') {
            return true;
        }
        return c7 >= ' ' && c7 <= '~';
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$pdf417$encoder$Compaction;

        static {
            int[] iArr = new int[c.values().length];
            $SwitchMap$com$google$zxing$pdf417$encoder$Compaction = iArr;
            try {
                iArr[c.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[c.BYTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$pdf417$encoder$Compaction[c.NUMERIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        byte[] bArr = new byte[128];
        MIXED = bArr;
        Arrays.fill(bArr, (byte) -1);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr2 = TEXT_MIXED_RAW;
            if (i11 >= bArr2.length) {
                break;
            }
            byte b7 = bArr2[i11];
            if (b7 > 0) {
                MIXED[b7] = (byte) i11;
            }
            i11++;
        }
        Arrays.fill(PUNCTUATION, (byte) -1);
        while (true) {
            byte[] bArr3 = TEXT_PUNCTUATION_RAW;
            if (i10 >= bArr3.length) {
                return;
            }
            byte b10 = bArr3[i10];
            if (b10 > 0) {
                PUNCTUATION[b10] = (byte) i10;
            }
            i10++;
        }
    }

    static String e(String str, c cVar, Charset charset) throws h {
        g5.c cVarA;
        StringBuilder sb = new StringBuilder(str.length());
        if (charset == null) {
            charset = DEFAULT_ENCODING;
        } else if (!DEFAULT_ENCODING.equals(charset) && (cVarA = g5.c.a(charset.name())) != null) {
            h(cVarA.b(), sb);
        }
        int length = str.length();
        int i10 = a.$SwitchMap$com$google$zxing$pdf417$encoder$Compaction[cVar.ordinal()];
        if (i10 == 1) {
            g(str, 0, length, sb, 0);
        } else if (i10 == 2) {
            byte[] bytes = str.getBytes(charset);
            d(bytes, 0, bytes.length, 1, sb);
        } else if (i10 != 3) {
            int i11 = 0;
            int iG = 0;
            int i12 = 0;
            while (i11 < length) {
                int iB = b(str, i11);
                if (iB >= 13) {
                    sb.append((char) 902);
                    f(str, i11, iB, sb);
                    i11 += iB;
                    iG = 0;
                    i12 = 2;
                } else {
                    int iC = c(str, i11);
                    if (iC >= 5 || iB == length) {
                        if (i12 != 0) {
                            sb.append((char) 900);
                            iG = 0;
                            i12 = 0;
                        }
                        iG = g(str, i11, iC, sb, iG);
                        i11 += iC;
                    } else {
                        int iA = a(str, i11, charset);
                        if (iA == 0) {
                            iA = 1;
                        }
                        int i13 = iA + i11;
                        byte[] bytes2 = str.substring(i11, i13).getBytes(charset);
                        if (bytes2.length == 1 && i12 == 0) {
                            d(bytes2, 0, 1, 0, sb);
                        } else {
                            d(bytes2, 0, bytes2.length, i12, sb);
                            i12 = 1;
                            iG = 0;
                        }
                        i11 = i13;
                    }
                }
            }
        } else {
            sb.append((char) 902);
            f(str, 0, length, sb);
        }
        return sb.toString();
    }

    private static void f(String str, int i10, int i11, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i11 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i12 = 0;
        while (i12 < i11) {
            sb2.setLength(0);
            int iMin = Math.min(44, i11 - i12);
            StringBuilder sb3 = new StringBuilder("1");
            int i13 = i10 + i12;
            sb3.append(str.substring(i13, i13 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i12 += iMin;
        }
    }

    /* JADX WARN: Code duplicated, block: B:73:0x00f4 A[EDGE_INSN: B:73:0x00f4->B:55:0x00f4 BREAK  A[LOOP:0: B:3:0x000f->B:90:0x000f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x000f A[SYNTHETIC] */
    private static int g(CharSequence charSequence, int i10, int i11, StringBuilder sb, int i12) {
        StringBuilder sb2 = new StringBuilder(i11);
        int i13 = i12;
        int i14 = 0;
        while (true) {
            int i15 = i10 + i14;
            char cCharAt = charSequence.charAt(i15);
            if (i13 == 0) {
                if (j(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb2.append((char) 26);
                    } else {
                        sb2.append((char) (cCharAt - 'A'));
                    }
                } else if (i(cCharAt)) {
                    sb2.append((char) 27);
                    i13 = 1;
                } else if (l(cCharAt)) {
                    sb2.append((char) 28);
                    i13 = 2;
                } else {
                    sb2.append((char) 29);
                    sb2.append((char) PUNCTUATION[cCharAt]);
                }
                i14++;
                if (i14 >= i11) {
                    break;
                    break;
                }
            } else {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (m(cCharAt)) {
                            sb2.append((char) PUNCTUATION[cCharAt]);
                        } else {
                            sb2.append((char) 29);
                            i13 = 0;
                        }
                    } else if (l(cCharAt)) {
                        sb2.append((char) MIXED[cCharAt]);
                    } else if (j(cCharAt)) {
                        sb2.append((char) 28);
                        i13 = 0;
                    } else if (i(cCharAt)) {
                        sb2.append((char) 27);
                        i13 = 1;
                    } else {
                        int i16 = i15 + 1;
                        if (i16 >= i11 || !m(charSequence.charAt(i16))) {
                            sb2.append((char) 29);
                            sb2.append((char) PUNCTUATION[cCharAt]);
                        } else {
                            sb2.append((char) 25);
                            i13 = 3;
                        }
                    }
                } else if (i(cCharAt)) {
                    if (cCharAt == ' ') {
                        sb2.append((char) 26);
                    } else {
                        sb2.append((char) (cCharAt - 'a'));
                    }
                } else if (j(cCharAt)) {
                    sb2.append((char) 27);
                    sb2.append((char) (cCharAt - 'A'));
                } else if (l(cCharAt)) {
                    sb2.append((char) 28);
                    i13 = 2;
                } else {
                    sb2.append((char) 29);
                    sb2.append((char) PUNCTUATION[cCharAt]);
                }
                i14++;
                if (i14 >= i11) {
                    break;
                }
            }
        }
        int length = sb2.length();
        char cCharAt2 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            if (i17 % 2 != 0) {
                cCharAt2 = (char) ((cCharAt2 * 30) + sb2.charAt(i17));
                sb.append(cCharAt2);
            } else {
                cCharAt2 = sb2.charAt(i17);
            }
        }
        if (length % 2 != 0) {
            sb.append((char) ((cCharAt2 * 30) + 29));
        }
        return i13;
    }

    private static void h(int i10, StringBuilder sb) throws h {
        if (i10 >= 0 && i10 < 900) {
            sb.append((char) 927);
            sb.append((char) i10);
        } else if (i10 < 810900) {
            sb.append((char) 926);
            sb.append((char) ((i10 / 900) - 1));
            sb.append((char) (i10 % 900));
        } else {
            if (i10 >= 811800) {
                throw new h("ECI number not in valid range from 0..811799, but was ".concat(String.valueOf(i10)));
            }
            sb.append((char) 925);
            sb.append((char) (810900 - i10));
        }
    }

    private static boolean l(char c7) {
        return MIXED[c7] != -1;
    }

    private static boolean m(char c7) {
        return PUNCTUATION[c7] != -1;
    }

    private static int a(String str, int i10, Charset charset) throws h {
        int i11;
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        int length = str.length();
        int i12 = i10;
        while (i12 < length) {
            char cCharAt = str.charAt(i12);
            int i13 = 0;
            while (i13 < 13 && k(cCharAt) && (i11 = i12 + (i13 = i13 + 1)) < length) {
                cCharAt = str.charAt(i11);
            }
            if (i13 >= 13) {
                return i12 - i10;
            }
            char cCharAt2 = str.charAt(i12);
            if (charsetEncoderNewEncoder.canEncode(cCharAt2)) {
                i12++;
            } else {
                throw new h("Non-encodable character detected: " + cCharAt2 + " (Unicode: " + ((int) cCharAt2) + ')');
            }
        }
        return i12 - i10;
    }

    private static int b(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        if (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            while (k(cCharAt) && i10 < length) {
                i11++;
                i10++;
                if (i10 < length) {
                    cCharAt = charSequence.charAt(i10);
                }
            }
        }
        return i11;
    }

    private static int c(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = i10;
        while (i11 < length) {
            char cCharAt = charSequence.charAt(i11);
            int i12 = 0;
            while (i12 < 13 && k(cCharAt) && i11 < length) {
                i12++;
                i11++;
                if (i11 < length) {
                    cCharAt = charSequence.charAt(i11);
                }
            }
            if (i12 >= 13) {
                return (i11 - i10) - i12;
            }
            if (i12 <= 0) {
                if (!n(charSequence.charAt(i11))) {
                    break;
                }
                i11++;
            }
        }
        return i11 - i10;
    }
}

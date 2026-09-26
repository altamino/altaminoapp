package com.google.zxing.datamatrix.encoder;

import com.narvii.model.User;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class j {
    static final int ASCII_ENCODATION = 0;
    static final int BASE256_ENCODATION = 5;
    static final int C40_ENCODATION = 1;
    static final char C40_UNLATCH = 254;
    static final int EDIFACT_ENCODATION = 4;
    static final char LATCH_TO_ANSIX12 = 238;
    static final char LATCH_TO_BASE256 = 231;
    static final char LATCH_TO_C40 = 230;
    static final char LATCH_TO_EDIFACT = 240;
    static final char LATCH_TO_TEXT = 239;
    private static final char MACRO_05 = 236;
    private static final String MACRO_05_HEADER = "[)>\u001e05\u001d";
    private static final char MACRO_06 = 237;
    private static final String MACRO_06_HEADER = "[)>\u001e06\u001d";
    private static final String MACRO_TRAILER = "\u001e\u0004";
    private static final char PAD = 129;
    static final int TEXT_ENCODATION = 2;
    static final char UPPER_SHIFT = 235;
    static final int X12_ENCODATION = 3;
    static final char X12_UNLATCH = 254;

    public static String b(String str, l lVar, com.google.zxing.b bVar, com.google.zxing.b bVar2) {
        int iE = 0;
        g[] gVarArr = {new a(), new c(), new m(), new n(), new f(), new b()};
        h hVar = new h(str);
        hVar.n(lVar);
        hVar.l(bVar, bVar2);
        if (str.startsWith(MACRO_05_HEADER) && str.endsWith(MACRO_TRAILER)) {
            hVar.r(MACRO_05);
            hVar.m(2);
            hVar.pos += 7;
        } else if (str.startsWith(MACRO_06_HEADER) && str.endsWith(MACRO_TRAILER)) {
            hVar.r(MACRO_06);
            hVar.m(2);
            hVar.pos += 7;
        }
        while (hVar.i()) {
            gVarArr[iE].a(hVar);
            if (hVar.e() >= 0) {
                iE = hVar.e();
                hVar.j();
            }
        }
        int iA = hVar.a();
        hVar.p();
        int iA2 = hVar.g().a();
        if (iA < iA2 && iE != 0 && iE != 5 && iE != 4) {
            hVar.r((char) 254);
        }
        StringBuilder sbB = hVar.b();
        if (sbB.length() < iA2) {
            sbB.append(PAD);
        }
        while (sbB.length() < iA2) {
            sbB.append(o(PAD, sbB.length() + 1));
        }
        return hVar.b().toString();
    }

    private static int c(float[] fArr, int[] iArr, int i10, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i11 = 0; i11 < 6; i11++) {
            int iCeil = (int) Math.ceil(fArr[i11]);
            iArr[i11] = iCeil;
            if (i10 > iCeil) {
                Arrays.fill(bArr, (byte) 0);
                i10 = iCeil;
            }
            if (i10 == iCeil) {
                bArr[i11] = (byte) (bArr[i11] + 1);
            }
        }
        return i10;
    }

    private static int d(byte[] bArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 6; i11++) {
            i10 += bArr[i11];
        }
        return i10;
    }

    static boolean f(char c7) {
        return c7 >= '0' && c7 <= '9';
    }

    static boolean g(char c7) {
        return c7 >= 128 && c7 <= 255;
    }

    private static boolean h(char c7) {
        if (c7 == ' ') {
            return true;
        }
        if (c7 < '0' || c7 > '9') {
            return c7 >= 'A' && c7 <= 'Z';
        }
        return true;
    }

    private static boolean i(char c7) {
        return c7 >= ' ' && c7 <= '^';
    }

    private static boolean j(char c7) {
        if (c7 == ' ') {
            return true;
        }
        if (c7 < '0' || c7 > '9') {
            return c7 >= 'a' && c7 <= 'z';
        }
        return true;
    }

    private static boolean l(char c7) {
        return false;
    }

    private static boolean m(char c7) {
        return c7 == '\r' || c7 == '*' || c7 == '>';
    }

    static int n(CharSequence charSequence, int i10, int i11) {
        float[] fArr;
        char c7;
        if (i10 >= charSequence.length()) {
            return i11;
        }
        int i12 = 6;
        if (i11 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i11] = 0.0f;
        }
        int i13 = 0;
        while (true) {
            int i14 = i10 + i13;
            if (i14 == charSequence.length()) {
                byte[] bArr = new byte[i12];
                int[] iArr = new int[i12];
                int iC = c(fArr, iArr, Integer.MAX_VALUE, bArr);
                int iD = d(bArr);
                if (iArr[0] == iC) {
                    return 0;
                }
                if (iD == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (iD == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (iD != 1 || bArr[2] <= 0) {
                    return (iD != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char cCharAt = charSequence.charAt(i14);
            i13++;
            if (f(cCharAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (g(cCharAt)) {
                float fCeil = (float) Math.ceil(fArr[0]);
                fArr[0] = fCeil;
                fArr[0] = fCeil + 2.0f;
            } else {
                float fCeil2 = (float) Math.ceil(fArr[0]);
                fArr[0] = fCeil2;
                fArr[0] = fCeil2 + 1.0f;
            }
            if (h(cCharAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (j(cCharAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (k(cCharAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (g(cCharAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (i(cCharAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (g(cCharAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (l(cCharAt)) {
                c7 = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c7 = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i13 >= 4) {
                int[] iArr2 = new int[i12];
                byte[] bArr2 = new byte[i12];
                c(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int iD2 = d(bArr2);
                int i15 = iArr2[0];
                int i16 = iArr2[c7];
                if (i15 < i16 && i15 < iArr2[1] && i15 < iArr2[2] && i15 < iArr2[3] && i15 < iArr2[4]) {
                    return 0;
                }
                if (i16 < i15) {
                    return 5;
                }
                byte b7 = bArr2[1];
                byte b10 = bArr2[2];
                byte b11 = bArr2[3];
                byte b12 = bArr2[4];
                if (b7 + b10 + b11 + b12 == 0) {
                    return 5;
                }
                if (iD2 == 1 && b12 > 0) {
                    return 4;
                }
                if (iD2 == 1 && b10 > 0) {
                    return 2;
                }
                if (iD2 == 1 && b11 > 0) {
                    return 3;
                }
                int i17 = iArr2[1];
                if (i17 + 1 < i15 && i17 + 1 < i16 && i17 + 1 < iArr2[4] && i17 + 1 < iArr2[2]) {
                    int i18 = iArr2[3];
                    if (i17 < i18) {
                        return 1;
                    }
                    if (i17 == i18) {
                        for (int i19 = i10 + i13 + 1; i19 < charSequence.length(); i19++) {
                            char cCharAt2 = charSequence.charAt(i19);
                            if (m(cCharAt2)) {
                                return 3;
                            }
                            if (!k(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
            i12 = 6;
        }
    }

    private static char o(char c7, int i10) {
        int i11 = c7 + ((i10 * 149) % User.USER_ROLE_NEWS_FEED) + 1;
        if (i11 > 254) {
            i11 -= 254;
        }
        return (char) i11;
    }

    public static int a(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        int i11 = 0;
        if (i10 < length) {
            char cCharAt = charSequence.charAt(i10);
            while (f(cCharAt) && i10 < length) {
                i11++;
                i10++;
                if (i10 < length) {
                    cCharAt = charSequence.charAt(i10);
                }
            }
        }
        return i11;
    }

    static void e(char c7) {
        String hexString = Integer.toHexString(c7);
        throw new IllegalArgumentException("Illegal character: " + c7 + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    private static boolean k(char c7) {
        if (!m(c7) && c7 != ' ') {
            if (c7 < '0' || c7 > '9') {
                if (c7 < 'A' || c7 > 'Z') {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }
}

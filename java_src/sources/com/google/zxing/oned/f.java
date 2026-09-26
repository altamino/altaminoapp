package com.google.zxing.oned;

import java.util.Map;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes.dex */
public final class f extends o {
    private static void f(int i10, int[] iArr) {
        for (int i11 = 0; i11 < 9; i11++) {
            int i12 = 1;
            if (((1 << (8 - i11)) & i10) != 0) {
                i12 = 2;
            }
            iArr[i11] = i12;
        }
    }

    @Override // com.google.zxing.oned.o, com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.CODE_39) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(aVar)));
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00d4  */
    private static String g(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != 0) {
                if (cCharAt != ' ') {
                    if (cCharAt != '@') {
                        if (cCharAt != '`') {
                            if (cCharAt != '-' && cCharAt != '.') {
                                if (cCharAt <= 26) {
                                    sb.append('$');
                                    sb.append((char) (cCharAt + '@'));
                                } else if (cCharAt < ' ') {
                                    sb.append('%');
                                    sb.append((char) (cCharAt + '&'));
                                } else if (cCharAt > ',' && cCharAt != '/' && cCharAt != ':') {
                                    if (cCharAt <= '9') {
                                        sb.append(cCharAt);
                                    } else if (cCharAt <= '?') {
                                        sb.append('%');
                                        sb.append((char) (cCharAt + 11));
                                    } else if (cCharAt <= 'Z') {
                                        sb.append(cCharAt);
                                    } else if (cCharAt <= '_') {
                                        sb.append('%');
                                        sb.append((char) (cCharAt - 16));
                                    } else if (cCharAt <= 'z') {
                                        sb.append('+');
                                        sb.append((char) (cCharAt - ' '));
                                    } else if (cCharAt <= 127) {
                                        sb.append('%');
                                        sb.append((char) (cCharAt - '+'));
                                    } else {
                                        throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i10) + "'");
                                    }
                                } else {
                                    sb.append('/');
                                    sb.append((char) (cCharAt + ' '));
                                }
                            } else {
                                sb.append(cCharAt);
                            }
                        } else {
                            sb.append("%W");
                        }
                    } else {
                        sb.append("%V");
                    }
                } else {
                    sb.append(cCharAt);
                }
            } else {
                sb.append("%U");
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.o
    public boolean[] c(String str) {
        int length = str.length();
        if (length <= 80) {
            for (int i10 = 0; i10 < length; i10++) {
                if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i10)) < 0) {
                    str = g(str);
                    length = str.length();
                    if (length <= 80) {
                        break;
                    }
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            }
            int[] iArr = new int[9];
            int i11 = length + 25;
            for (int i12 = 0; i12 < length; i12++) {
                f(e.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i12))], iArr);
                for (int i13 = 0; i13 < 9; i13++) {
                    i11 += iArr[i13];
                }
            }
            boolean[] zArr = new boolean[i11];
            f(TarConstants.CHKSUM_OFFSET, iArr);
            int iB = o.b(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int iB2 = iB + o.b(zArr, iB, iArr2, false);
            for (int i14 = 0; i14 < length; i14++) {
                f(e.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i14))], iArr);
                int iB3 = iB2 + o.b(zArr, iB2, iArr, true);
                iB2 = iB3 + o.b(zArr, iB3, iArr2, false);
            }
            f(TarConstants.CHKSUM_OFFSET, iArr);
            o.b(zArr, iB2, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}

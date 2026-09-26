package com.google.zxing.oned;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class j extends u {
    private static final int CODE_WIDTH = 95;

    @Override // com.google.zxing.oned.o, com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.EAN_13) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.oned.o
    public boolean[] c(String str) {
        int length = str.length();
        if (length != 12) {
            if (length == 13) {
                try {
                    if (!t.a(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (com.google.zxing.d unused) {
                    throw new IllegalArgumentException("Illegal contents");
                }
            } else {
                throw new IllegalArgumentException("Requested contents should be 12 or 13 digits long, but got ".concat(String.valueOf(length)));
            }
        } else {
            try {
                str = str + t.b(str);
            } catch (com.google.zxing.d e) {
                throw new IllegalArgumentException(e);
            }
        }
        int i10 = i.FIRST_DIGIT_ENCODINGS[Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iB = o.b(zArr, 0, t.START_END_PATTERN, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int iDigit = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                iDigit += 10;
            }
            iB += o.b(zArr, iB, t.L_AND_G_PATTERNS[iDigit], false);
        }
        int iB2 = iB + o.b(zArr, iB, t.MIDDLE_PATTERN, false);
        for (int i12 = 7; i12 <= 12; i12++) {
            iB2 += o.b(zArr, iB2, t.L_PATTERNS[Character.digit(str.charAt(i12), 10)], true);
        }
        o.b(zArr, iB2, t.START_END_PATTERN, true);
        return zArr;
    }
}

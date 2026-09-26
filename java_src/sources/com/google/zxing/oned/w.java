package com.google.zxing.oned;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class w extends u {
    private static final int CODE_WIDTH = 51;

    @Override // com.google.zxing.oned.o, com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.UPC_E) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.oned.o
    public boolean[] c(String str) {
        int length = str.length();
        if (length != 7) {
            if (length == 8) {
                try {
                    if (!t.a(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (com.google.zxing.d unused) {
                    throw new IllegalArgumentException("Illegal contents");
                }
            } else {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
        } else {
            try {
                str = str + t.b(v.c(str));
            } catch (com.google.zxing.d e) {
                throw new IllegalArgumentException(e);
            }
        }
        int iDigit = Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new IllegalArgumentException("Number system must be 0 or 1");
        }
        int i10 = v.NUMSYS_AND_CHECK_DIGIT_PATTERNS[iDigit][Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iB = o.b(zArr, 0, t.START_END_PATTERN, true);
        for (int i11 = 1; i11 <= 6; i11++) {
            int iDigit2 = Character.digit(str.charAt(i11), 10);
            if (((i10 >> (6 - i11)) & 1) == 1) {
                iDigit2 += 10;
            }
            iB += o.b(zArr, iB, t.L_AND_G_PATTERNS[iDigit2], false);
        }
        o.b(zArr, iB, t.END_PATTERN, false);
        return zArr;
    }
}

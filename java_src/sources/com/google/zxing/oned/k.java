package com.google.zxing.oned;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k extends u {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.o, com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (aVar == com.google.zxing.a.EAN_8) {
            return super.a(str, aVar, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(aVar)));
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
                str = str + t.b(str);
            } catch (com.google.zxing.d e) {
                throw new IllegalArgumentException(e);
            }
        }
        boolean[] zArr = new boolean[67];
        int iB = o.b(zArr, 0, t.START_END_PATTERN, true);
        for (int i10 = 0; i10 <= 3; i10++) {
            iB += o.b(zArr, iB, t.L_PATTERNS[Character.digit(str.charAt(i10), 10)], false);
        }
        int iB2 = iB + o.b(zArr, iB, t.MIDDLE_PATTERN, false);
        for (int i11 = 4; i11 <= 7; i11++) {
            iB2 += o.b(zArr, iB2, t.L_PATTERNS[Character.digit(str.charAt(i11), 10)], true);
        }
        o.b(zArr, iB2, t.START_END_PATTERN, true);
        return zArr;
    }
}

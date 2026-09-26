package com.google.zxing.oned;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class o implements com.google.zxing.g {
    protected static int b(boolean[] zArr, int i10, int[] iArr, boolean z6) {
        int i11 = 0;
        for (int i12 : iArr) {
            int i13 = 0;
            while (i13 < i12) {
                zArr[i10] = z6;
                i13++;
                i10++;
            }
            i11 += i12;
            z6 = !z6;
        }
        return i11;
    }

    private static g5.b e(boolean[] zArr, int i10, int i11, int i12) {
        int length = zArr.length;
        int i13 = i12 + length;
        int iMax = Math.max(i10, i13);
        int iMax2 = Math.max(1, i11);
        int i14 = iMax / i13;
        int i15 = (iMax - (length * i14)) / 2;
        g5.b bVar = new g5.b(iMax, iMax2);
        int i16 = 0;
        while (i16 < length) {
            if (zArr[i16]) {
                bVar.k(i15, 0, i14, iMax2);
            }
            i16++;
            i15 += i14;
        }
        return bVar;
    }

    public abstract boolean[] c(String str);

    public int d() {
        return 10;
    }

    @Override // com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) throws com.google.zxing.h {
        if (!str.isEmpty()) {
            if (i10 >= 0 && i11 >= 0) {
                int iD = d();
                if (map != null) {
                    com.google.zxing.c cVar = com.google.zxing.c.MARGIN;
                    if (map.containsKey(cVar)) {
                        iD = Integer.parseInt(map.get(cVar).toString());
                    }
                }
                return e(c(str), i10, i11, iD);
            }
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i10 + 'x' + i11);
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}

package i5;

import com.google.zxing.c;
import com.google.zxing.datamatrix.encoder.e;
import com.google.zxing.datamatrix.encoder.i;
import com.google.zxing.datamatrix.encoder.j;
import com.google.zxing.datamatrix.encoder.k;
import com.google.zxing.datamatrix.encoder.l;
import com.google.zxing.g;
import g5.b;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements g {
    private static b b(com.google.zxing.qrcode.encoder.b bVar, int i10, int i11) {
        b bVar2;
        int iE = bVar.e();
        int iD = bVar.d();
        int iMax = Math.max(i10, iE);
        int iMax2 = Math.max(i11, iD);
        int iMin = Math.min(iMax / iE, iMax2 / iD);
        int i12 = (iMax - (iE * iMin)) / 2;
        int i13 = (iMax2 - (iD * iMin)) / 2;
        if (i11 >= iD && i10 >= iE) {
            bVar2 = new b(i10, i11);
        } else {
            bVar2 = new b(iE, iD);
            i12 = 0;
            i13 = 0;
        }
        bVar2.c();
        int i14 = 0;
        while (i14 < iD) {
            int i15 = i12;
            int i16 = 0;
            while (i16 < iE) {
                if (bVar.b(i16, i14) == 1) {
                    bVar2.k(i15, i13, iMin, iMin);
                }
                i16++;
                i15 += iMin;
            }
            i14++;
            i13 += iMin;
        }
        return bVar2;
    }

    private static b c(e eVar, k kVar, int i10, int i11) {
        boolean z6;
        boolean z10;
        int iH = kVar.h();
        int iG = kVar.g();
        com.google.zxing.qrcode.encoder.b bVar = new com.google.zxing.qrcode.encoder.b(kVar.j(), kVar.i());
        int i12 = 0;
        for (int i13 = 0; i13 < iG; i13++) {
            if (i13 % kVar.matrixHeight == 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < kVar.j(); i15++) {
                    if (i15 % 2 == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    bVar.g(i14, i12, z10);
                    i14++;
                }
                i12++;
            }
            int i16 = 0;
            for (int i17 = 0; i17 < iH; i17++) {
                if (i17 % kVar.matrixWidth == 0) {
                    bVar.g(i16, i12, true);
                    i16++;
                }
                bVar.g(i16, i12, eVar.e(i17, i13));
                int i18 = i16 + 1;
                int i19 = kVar.matrixWidth;
                if (i17 % i19 == i19 - 1) {
                    if (i13 % 2 == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    bVar.g(i18, i12, z6);
                    i16 += 2;
                } else {
                    i16 = i18;
                }
            }
            int i20 = i12 + 1;
            int i21 = kVar.matrixHeight;
            if (i13 % i21 == i21 - 1) {
                int i22 = 0;
                for (int i23 = 0; i23 < kVar.j(); i23++) {
                    bVar.g(i22, i20, true);
                    i22++;
                }
                i12 += 2;
            } else {
                i12 = i20;
            }
        }
        return b(bVar, i10, i11);
    }

    @Override // com.google.zxing.g
    public b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<c, ?> map) {
        com.google.zxing.b bVar;
        if (!str.isEmpty()) {
            if (aVar == com.google.zxing.a.DATA_MATRIX) {
                if (i10 >= 0 && i11 >= 0) {
                    l lVar = l.FORCE_NONE;
                    com.google.zxing.b bVar2 = null;
                    if (map != null) {
                        l lVar2 = (l) map.get(c.DATA_MATRIX_SHAPE);
                        if (lVar2 != null) {
                            lVar = lVar2;
                        }
                        com.google.zxing.b bVar3 = (com.google.zxing.b) map.get(c.MIN_SIZE);
                        if (bVar3 == null) {
                            bVar3 = null;
                        }
                        bVar = (com.google.zxing.b) map.get(c.MAX_SIZE);
                        if (bVar == null) {
                            bVar = null;
                        }
                        bVar2 = bVar3;
                    } else {
                        bVar = null;
                    }
                    String strB = j.b(str, lVar, bVar2, bVar);
                    k kVarL = k.l(strB.length(), lVar, bVar2, bVar, true);
                    e eVar = new e(i.c(strB, kVarL), kVarL.h(), kVarL.g());
                    eVar.h();
                    return c(eVar, kVarL, i10, i11);
                }
                throw new IllegalArgumentException("Requested dimensions can't be negative: " + i10 + 'x' + i11);
            }
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(aVar)));
        }
        throw new IllegalArgumentException("Found empty contents");
    }
}

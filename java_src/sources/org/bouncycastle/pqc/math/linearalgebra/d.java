package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes10.dex */
public final class d {
    public static a a(b bVar, j jVar) {
        int iD = bVar.d();
        int i10 = 1 << iD;
        int i11 = jVar.i();
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, i11, i10);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, i11, i10);
        for (int i12 = 0; i12 < i10; i12++) {
            iArr2[0][i12] = bVar.h(jVar.f(i12));
        }
        for (int i13 = 1; i13 < i11; i13++) {
            for (int i14 = 0; i14 < i10; i14++) {
                iArr2[i13][i14] = bVar.j(iArr2[i13 - 1][i14], i14);
            }
        }
        for (int i15 = 0; i15 < i11; i15++) {
            for (int i16 = 0; i16 < i10; i16++) {
                for (int i17 = 0; i17 <= i15; i17++) {
                    int[] iArr3 = iArr[i15];
                    iArr3[i16] = bVar.a(iArr3[i16], bVar.j(iArr2[i17][i16], jVar.h((i11 + i17) - i15)));
                }
            }
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i11 * iD, (i10 + 31) >>> 5);
        for (int i18 = 0; i18 < i10; i18++) {
            int i19 = i18 >>> 5;
            int i20 = 1 << (i18 & 31);
            for (int i21 = 0; i21 < i11; i21++) {
                int i22 = iArr[i21][i18];
                for (int i23 = 0; i23 < iD; i23++) {
                    if (((i22 >>> i23) & 1) != 0) {
                        int[] iArr5 = iArr4[(((i21 + 1) * iD) - i23) - 1];
                        iArr5[i19] = iArr5[i19] ^ i20;
                    }
                }
            }
        }
        return new a(i10, iArr4);
    }
}

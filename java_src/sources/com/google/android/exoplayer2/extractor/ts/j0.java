package com.google.android.exoplayer2.extractor.ts;

/* JADX INFO: loaded from: classes8.dex */
public final class j0 {
    public static boolean b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = -4; i14 <= 4; i14++) {
            int i15 = (i14 * 188) + i12;
            if (i15 < i10 || i15 >= i11 || bArr[i15] != 71) {
                i13 = 0;
            } else {
                i13++;
                if (i13 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    private static long d(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }

    public static int a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] != 71) {
            i10++;
        }
        return i10;
    }

    public static long c(com.google.android.exoplayer2.util.c0 c0Var, int i10, int i11) {
        c0Var.P(i10);
        if (c0Var.a() < 5) {
            return -9223372036854775807L;
        }
        int iN = c0Var.n();
        if ((8388608 & iN) != 0 || ((2096896 & iN) >> 8) != i11 || (iN & 32) == 0 || c0Var.D() < 7 || c0Var.a() < 7 || (c0Var.D() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        c0Var.j(bArr, 0, 6);
        return d(bArr);
    }
}

package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static void b(g5.b bVar, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12 += 2) {
            int i13 = i10 - i12;
            int i14 = i13;
            while (true) {
                int i15 = i10 + i12;
                if (i14 <= i15) {
                    bVar.j(i14, i13);
                    bVar.j(i14, i15);
                    bVar.j(i13, i14);
                    bVar.j(i15, i14);
                    i14++;
                }
            }
        }
        int i16 = i10 - i11;
        bVar.j(i16, i16);
        int i17 = i16 + 1;
        bVar.j(i17, i16);
        bVar.j(i16, i17);
        int i18 = i10 + i11;
        bVar.j(i18, i16);
        bVar.j(i18, i17);
        bVar.j(i18, i18 - 1);
    }

    private static h5.a g(int i10) {
        if (i10 == 4) {
            return h5.a.AZTEC_PARAM;
        }
        if (i10 == 6) {
            return h5.a.AZTEC_DATA_6;
        }
        if (i10 == 8) {
            return h5.a.AZTEC_DATA_8;
        }
        if (i10 == 10) {
            return h5.a.AZTEC_DATA_10;
        }
        if (i10 == 12) {
            return h5.a.AZTEC_DATA_12;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i10)));
    }

    private static int i(int i10, boolean z6) {
        return ((z6 ? 88 : 112) + (i10 << 4)) * i10;
    }

    private static int[] a(g5.a aVar, int i10, int i11) {
        int[] iArr = new int[i11];
        int i12 = aVar.i() / i10;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                i14 |= aVar.g((i13 * i10) + i15) ? 1 << ((i10 - i15) - 1) : 0;
            }
            iArr[i13] = i14;
        }
        return iArr;
    }

    private static void c(g5.b bVar, boolean z6, int i10, g5.a aVar) {
        int i11 = i10 / 2;
        int i12 = 0;
        if (z6) {
            while (i12 < 7) {
                int i13 = (i11 - 3) + i12;
                if (aVar.g(i12)) {
                    bVar.j(i13, i11 - 5);
                }
                if (aVar.g(i12 + 7)) {
                    bVar.j(i11 + 5, i13);
                }
                if (aVar.g(20 - i12)) {
                    bVar.j(i13, i11 + 5);
                }
                if (aVar.g(27 - i12)) {
                    bVar.j(i11 - 5, i13);
                }
                i12++;
            }
            return;
        }
        while (i12 < 10) {
            int i14 = (i11 - 5) + i12 + (i12 / 5);
            if (aVar.g(i12)) {
                bVar.j(i14, i11 - 7);
            }
            if (aVar.g(i12 + 10)) {
                bVar.j(i11 + 7, i14);
            }
            if (aVar.g(29 - i12)) {
                bVar.j(i14, i11 + 7);
            }
            if (aVar.g(39 - i12)) {
                bVar.j(i11 - 7, i14);
            }
            i12++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a d(byte[] bArr, int i10, int i11) {
        g5.a aVarH;
        int i12;
        boolean z6;
        int iAbs;
        int i13;
        int i14;
        g5.a aVarA = new d(bArr).a();
        int i15 = ((aVarA.i() * i10) / 100) + 11;
        int i16 = aVarA.i() + i15;
        int i17 = 0;
        int i18 = 1;
        if (i11 != 0) {
            boolean z10 = i11 < 0;
            iAbs = Math.abs(i11);
            if (iAbs > (z10 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i11)));
            }
            i13 = i(iAbs, z10);
            i12 = WORD_SIZE[iAbs];
            int i19 = i13 - (i13 % i12);
            aVarH = h(aVarA, i12);
            if (aVarH.i() + i15 > i19) {
                z6 = z10;
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z10) {
                z6 = z10;
                if (aVarH.i() > (i12 << 6)) {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            }
        } else {
            g5.a aVarH2 = null;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (i20 > 32) {
                    throw new IllegalArgumentException("Data too large for an Aztec code");
                }
                boolean z11 = i20 <= 3 ? i18 : i17;
                int i22 = z11 != 0 ? i20 + 1 : i20;
                int i23 = i(i22, z11);
                if (i16 <= i23) {
                    if (aVarH2 == null || i21 != WORD_SIZE[i22]) {
                        int i24 = WORD_SIZE[i22];
                        i21 = i24;
                        aVarH2 = h(aVarA, i24);
                    }
                    int i25 = i23 - (i23 % i21);
                    if ((z11 == 0 || aVarH2.i() <= (i21 << 6)) && aVarH2.i() + i15 <= i25) {
                        aVarH = aVarH2;
                        i12 = i21;
                        z6 = z11;
                        iAbs = i22;
                        i13 = i23;
                        break;
                    }
                }
                i20++;
                i18 = i18;
                i17 = 0;
            }
        }
        g5.a aVarE = e(aVarH, i13, i12);
        int i26 = aVarH.i() / i12;
        g5.a aVarF = f(z6, iAbs, i26);
        int i27 = (z6 ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i27];
        int i28 = 2;
        if (z6) {
            for (int i29 = i17; i29 < i27; i29++) {
                iArr[i29] = i29;
            }
            i14 = i27;
        } else {
            int i30 = i27 / 2;
            i14 = i27 + 1 + (((i30 - 1) / 15) * 2);
            int i31 = i14 / 2;
            for (int i32 = i17; i32 < i30; i32++) {
                int i33 = (i32 / 15) + i32;
                iArr[(i30 - i32) - i18] = (i31 - i33) - 1;
                iArr[i30 + i32] = i33 + i31 + i18;
            }
        }
        g5.b bVar = new g5.b(i14);
        int i34 = i17;
        int i35 = i34;
        while (i34 < iAbs) {
            int i36 = ((iAbs - i34) << i28) + (z6 ? 9 : 12);
            int i37 = i17;
            while (i37 < i36) {
                int i38 = i37 << 1;
                while (i17 < i28) {
                    if (aVarE.g(i35 + i38 + i17)) {
                        int i39 = i34 << 1;
                        bVar.j(iArr[i39 + i17], iArr[i39 + i37]);
                    }
                    if (aVarE.g((i36 << 1) + i35 + i38 + i17)) {
                        int i40 = i34 << 1;
                        bVar.j(iArr[i40 + i37], iArr[((i27 - 1) - i40) - i17]);
                    }
                    if (aVarE.g((i36 << 2) + i35 + i38 + i17)) {
                        int i41 = (i27 - 1) - (i34 << 1);
                        bVar.j(iArr[i41 - i17], iArr[i41 - i37]);
                    }
                    if (aVarE.g((i36 * 6) + i35 + i38 + i17)) {
                        int i42 = i34 << 1;
                        bVar.j(iArr[((i27 - 1) - i42) - i37], iArr[i42 + i17]);
                    }
                    i17++;
                    i28 = 2;
                }
                i37++;
                i17 = 0;
                i28 = 2;
            }
            i35 += i36 << 3;
            i34++;
            i17 = 0;
            i28 = 2;
        }
        c(bVar, z6, i14, aVarF);
        if (z6) {
            b(bVar, i14 / 2, 5);
        } else {
            int i43 = i14 / 2;
            b(bVar, i43, 7);
            int i44 = 0;
            int i45 = 0;
            while (i45 < (i27 / 2) - 1) {
                for (int i46 = i43 & 1; i46 < i14; i46 += 2) {
                    int i47 = i43 - i44;
                    bVar.j(i47, i46);
                    int i48 = i43 + i44;
                    bVar.j(i48, i46);
                    bVar.j(i46, i47);
                    bVar.j(i46, i48);
                }
                i45 += 15;
                i44 += 16;
            }
        }
        a aVar = new a();
        aVar.c(z6);
        aVar.f(i14);
        aVar.d(iAbs);
        aVar.b(i26);
        aVar.e(bVar);
        return aVar;
    }

    static g5.a f(boolean z6, int i10, int i11) {
        g5.a aVar = new g5.a();
        if (z6) {
            aVar.d(i10 - 1, 2);
            aVar.d(i11 - 1, 6);
            return e(aVar, 28, 4);
        }
        aVar.d(i10 - 1, 5);
        aVar.d(i11 - 1, 11);
        return e(aVar, 40, 4);
    }

    static g5.a h(g5.a aVar, int i10) {
        g5.a aVar2 = new g5.a();
        int i11 = aVar.i();
        int i12 = (1 << i10) - 2;
        int i13 = 0;
        while (i13 < i11) {
            int i14 = 0;
            for (int i15 = 0; i15 < i10; i15++) {
                int i16 = i13 + i15;
                if (i16 >= i11 || aVar.g(i16)) {
                    i14 |= 1 << ((i10 - 1) - i15);
                }
            }
            int i17 = i14 & i12;
            if (i17 == i12) {
                aVar2.d(i17, i10);
            } else {
                if (i17 == 0) {
                    aVar2.d(i14 | 1, i10);
                } else {
                    aVar2.d(i14, i10);
                }
                i13 += i10;
            }
            i13--;
            i13 += i10;
        }
        return aVar2;
    }

    private static g5.a e(g5.a aVar, int i10, int i11) {
        int i12 = aVar.i() / i11;
        h5.c cVar = new h5.c(g(i11));
        int i13 = i10 / i11;
        int[] iArrA = a(aVar, i11, i13);
        cVar.b(iArrA, i13 - i12);
        g5.a aVar2 = new g5.a();
        aVar2.d(0, i10 % i11);
        for (int i14 : iArrA) {
            aVar2.d(i14, i11);
        }
        return aVar2;
    }
}

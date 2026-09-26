package d9;

import org.bouncycastle.util.d;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    private static final int M30 = 1073741823;
    private static final long M32L = 4294967295L;

    private static void a(int i10, int i11, int[] iArr) {
        int i12 = i10 - 1;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = i13 + ((iArr[i14] ^ i11) - i11);
            iArr[i14] = 1073741823 & i15;
            i13 = i15 >> 30;
        }
        iArr[i12] = i13 + ((iArr[i12] ^ i11) - i11);
    }

    private static void b(int i10, int i11, int[] iArr, int[] iArr2) {
        int i12 = i10 - 1;
        int i13 = iArr[i12] >> 31;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i14 + (((iArr[i15] + (iArr2[i15] & i13)) ^ i11) - i11);
            iArr[i15] = 1073741823 & i16;
            i14 = i16 >> 30;
        }
        int i17 = i14 + (((iArr[i12] + (i13 & iArr2[i12])) ^ i11) - i11);
        iArr[i12] = i17;
        int i18 = i17 >> 31;
        int i19 = 0;
        for (int i20 = 0; i20 < i12; i20++) {
            int i21 = i19 + iArr[i20] + (iArr2[i20] & i18);
            iArr[i20] = i21 & 1073741823;
            i19 = i21 >> 30;
        }
        iArr[i12] = i19 + iArr[i12] + (i18 & iArr2[i12]);
    }

    private static void c(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        int i13 = 0;
        long j6 = 0;
        while (i10 > 0) {
            while (i13 < Math.min(32, i10)) {
                j6 |= ((long) iArr[i11]) << i13;
                i13 += 30;
                i11++;
            }
            iArr2[i12] = (int) j6;
            j6 >>>= 32;
            i13 -= 32;
            i10 -= 32;
            i12++;
        }
    }

    private static int d(int i10, int i11, int i12, int[] iArr) {
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < 30; i17++) {
            int i18 = i10 >> 31;
            int i19 = -(i12 & 1);
            int i20 = i12 + (((i11 ^ i18) - i18) & i19);
            i16 += ((i13 ^ i18) - i18) & i19;
            i14 += ((i15 ^ i18) - i18) & i19;
            int i21 = i18 & i19;
            i10 = (i10 ^ i21) - (i21 + 1);
            i11 += i20 & i21;
            i12 = i20 >> 1;
            i13 = (i13 + (i16 & i21)) << 1;
            i15 = (i15 + (i21 & i14)) << 1;
        }
        iArr[0] = i13;
        iArr[1] = i15;
        iArr[2] = i16;
        iArr[3] = i14;
        return i10;
    }

    private static void e(int i10, int[] iArr, int i11, int[] iArr2, int i12) {
        int i13 = 0;
        long j6 = 0;
        while (i10 > 0) {
            if (i13 < Math.min(30, i10)) {
                j6 |= (((long) iArr[i11]) & M32L) << i13;
                i13 += 32;
                i11++;
            }
            iArr2[i12] = ((int) j6) & 1073741823;
            j6 >>>= 30;
            i13 -= 30;
            i10 -= 30;
            i12++;
        }
    }

    private static int f(int i10) {
        return ((i10 * 49) + (i10 < 46 ? 80 : 47)) / 17;
    }

    public static int g(int i10) {
        int i11 = (2 - (i10 * i10)) * i10;
        int i12 = i11 * (2 - (i10 * i11));
        int i13 = i12 * (2 - (i10 * i12));
        return i13 * (2 - (i10 * i13));
    }

    public static int h(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        int iA = (length << 5) - d.a(iArr[length - 1]);
        int i10 = (iA + 29) / 30;
        int[] iArr4 = new int[4];
        int[] iArr5 = new int[i10];
        int[] iArr6 = new int[i10];
        int[] iArr7 = new int[i10];
        int[] iArr8 = new int[i10];
        int[] iArr9 = new int[i10];
        int i11 = 0;
        iArr6[0] = 1;
        e(iA, iArr2, 0, iArr8, 0);
        e(iA, iArr, 0, iArr9, 0);
        System.arraycopy(iArr9, 0, iArr7, 0, i10);
        int iG = g(iArr9[0]);
        int i12 = -1;
        int i13 = 0;
        for (int iF = f(iA); i13 < iF; iF = iF) {
            int iD = d(i12, iArr7[i11], iArr8[i11], iArr4);
            i(i10, iArr5, iArr6, iArr4, iG, iArr9);
            j(i10, iArr7, iArr8, iArr4);
            i13 += 30;
            i11 = i11;
            i12 = iD;
        }
        int i14 = i11;
        int i15 = iArr7[i10 - 1] >> 31;
        a(i10, i15, iArr7);
        b(i10, i15, iArr5, iArr9);
        c(iA, iArr5, i14, iArr3, i14);
        return b.b(i10, iArr7, 1) & b.c(i10, iArr8);
    }

    private static void i(int i10, int[] iArr, int[] iArr2, int[] iArr3, int i11, int[] iArr4) {
        int i12 = i10;
        int i13 = iArr3[0];
        int i14 = iArr3[1];
        int i15 = iArr3[2];
        int i16 = iArr3[3];
        int i17 = i12 - 1;
        int i18 = iArr[i17] >> 31;
        int i19 = iArr2[i17] >> 31;
        int i20 = (i13 & i18) + (i14 & i19);
        int i21 = (i18 & i15) + (i19 & i16);
        int i22 = iArr4[0];
        long j6 = i13;
        long j10 = iArr[0];
        long j11 = i14;
        long j12 = iArr2[0];
        long j13 = (j6 * j10) + (j11 * j12);
        long j14 = i15;
        long j15 = i16;
        long j16 = (j10 * j14) + (j12 * j15);
        long j17 = i22;
        long j18 = i20 - (((((int) j13) * i11) + i20) & 1073741823);
        int i23 = i17;
        long j19 = i21 - (((((int) j16) * i11) + i21) & 1073741823);
        long j20 = (j16 + (j17 * j19)) >> 30;
        long j21 = (j13 + (j17 * j18)) >> 30;
        int i24 = 1;
        while (i24 < i12) {
            int i25 = iArr4[i24];
            long j22 = j20;
            long j23 = iArr[i24];
            int i26 = i24;
            long j24 = iArr2[i24];
            long j25 = j19;
            long j26 = i25;
            long j27 = j21 + (j6 * j23) + (j11 * j24) + (j26 * j18);
            long j28 = j22 + (j23 * j14) + (j24 * j15) + (j26 * j25);
            int i27 = i26 - 1;
            iArr[i27] = ((int) j27) & 1073741823;
            j21 = j27 >> 30;
            iArr2[i27] = ((int) j28) & 1073741823;
            j20 = j28 >> 30;
            i24 = i26 + 1;
            i12 = i10;
            i23 = i23;
            j19 = j25;
        }
        int i28 = i23;
        iArr[i28] = (int) j21;
        iArr2[i28] = (int) j20;
    }

    private static void j(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
        int i11 = iArr3[0];
        int i12 = 1;
        int i13 = iArr3[1];
        int i14 = iArr3[2];
        int i15 = iArr3[3];
        long j6 = i11;
        long j10 = iArr[0];
        long j11 = i13;
        long j12 = iArr2[0];
        long j13 = i14;
        long j14 = i15;
        long j15 = ((j6 * j10) + (j11 * j12)) >> 30;
        long j16 = ((j10 * j13) + (j12 * j14)) >> 30;
        int i16 = 1;
        while (i16 < i10) {
            int i17 = iArr[i16];
            int i18 = iArr2[i16];
            int i19 = i16;
            long j17 = i17;
            long j18 = j6 * j17;
            long j19 = j6;
            long j20 = i18;
            long j21 = j15 + j18 + (j11 * j20);
            long j22 = j16 + (j17 * j13) + (j20 * j14);
            int i20 = i19 - 1;
            iArr[i20] = ((int) j21) & 1073741823;
            j15 = j21 >> 30;
            iArr2[i20] = 1073741823 & ((int) j22);
            j16 = j22 >> 30;
            i16 = i19 + 1;
            j6 = j19;
            i12 = 1;
        }
        int i21 = i10 - i12;
        iArr[i21] = (int) j15;
        iArr2[i21] = (int) j16;
    }
}

package org.apache.commons.compress.compressors.bzip2;

import android.support.v4.media.session.PlaybackStateCompat;
import com.narvii.amino.MainActivity;
import java.util.BitSet;

/* JADX INFO: loaded from: classes10.dex */
class BlockSort {
    private static final int CLEARMASK = -2097153;
    private static final int DEPTH_THRESH = 10;
    private static final int FALLBACK_QSORT_SMALL_THRESH = 10;
    private static final int FALLBACK_QSORT_STACK_SIZE = 100;
    private static final int[] INCS = {1, 4, 13, 40, 121, 364, 1093, 3280, 9841, 29524, 88573, 265720, 797161, 2391484};
    private static final int QSORT_STACK_SIZE = 1000;
    private static final int SETMASK = 2097152;
    private static final int SMALL_THRESH = 20;
    private static final int STACK_SIZE = 1000;
    private static final int WORK_FACTOR = 30;
    private int[] eclass;
    private boolean firstAttempt;
    private final char[] quadrant;
    private int workDone;
    private int workLimit;
    private final int[] stack_ll = new int[1000];
    private final int[] stack_hh = new int[1000];
    private final int[] stack_dd = new int[1000];
    private final int[] mainSort_runningOrder = new int[256];
    private final int[] mainSort_copy = new int[256];
    private final boolean[] mainSort_bigDone = new boolean[256];
    private final int[] ftab = new int[MainActivity.CMD_HOME];

    private int fmin(int i10, int i11) {
        return i10 < i11 ? i10 : i11;
    }

    private static byte med3(byte b7, byte b10, byte b11) {
        if (b7 < b10) {
            if (b10 >= b11) {
                if (b7 >= b11) {
                    return b7;
                }
                return b11;
            }
            return b10;
        }
        if (b10 <= b11) {
            if (b7 <= b11) {
                return b7;
            }
            return b11;
        }
        return b10;
    }

    private static void vswap(int[] iArr, int i10, int i11, int i12) {
        int i13 = i12 + i10;
        while (i10 < i13) {
            int i14 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i14;
            i11++;
            i10++;
        }
    }

    final void fallbackSort(BZip2CompressorOutputStream.Data data, int i10) {
        byte[] bArr = data.block;
        int i11 = i10 + 1;
        bArr[0] = bArr[i11];
        fallbackSort(data.fmap, bArr, i11);
        for (int i12 = 0; i12 < i11; i12++) {
            int[] iArr = data.fmap;
            iArr[i12] = iArr[i12] - 1;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            int[] iArr2 = data.fmap;
            if (iArr2[i13] == -1) {
                iArr2[i13] = i10;
                return;
            }
        }
    }

    final void mainSort(BZip2CompressorOutputStream.Data data, int i10) {
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int[] iArr2 = this.mainSort_runningOrder;
        int[] iArr3 = this.mainSort_copy;
        boolean[] zArr = this.mainSort_bigDone;
        int[] iArr4 = this.ftab;
        byte[] bArr = data.block;
        int[] iArr5 = data.fmap;
        char[] cArr = this.quadrant;
        int i16 = this.workLimit;
        boolean z6 = this.firstAttempt;
        int i17 = MainActivity.CMD_HOME;
        while (true) {
            i17--;
            if (i17 < 0) {
                break;
            } else {
                iArr4[i17] = 0;
            }
        }
        for (int i18 = 0; i18 < 20; i18++) {
            bArr[i10 + i18 + 2] = bArr[(i18 % (i10 + 1)) + 1];
        }
        int i19 = i10 + 21;
        while (true) {
            i19--;
            if (i19 < 0) {
                break;
            } else {
                cArr[i19] = 0;
            }
        }
        int i20 = i10 + 1;
        byte b7 = bArr[i20];
        bArr[0] = b7;
        int i21 = 255;
        int i22 = b7 & 255;
        int i23 = 0;
        while (i23 <= i10) {
            i23++;
            int i24 = bArr[i23] & 255;
            int i25 = (i22 << 8) + i24;
            iArr4[i25] = iArr4[i25] + 1;
            i22 = i24;
        }
        for (int i26 = 1; i26 <= 65536; i26++) {
            iArr4[i26] = iArr4[i26] + iArr4[i26 - 1];
        }
        boolean z10 = true;
        int i27 = bArr[1] & 255;
        int i28 = 0;
        while (i28 < i10) {
            int i29 = bArr[i28 + 2] & 255;
            int i30 = (i27 << 8) + i29;
            int i31 = iArr4[i30] - 1;
            iArr4[i30] = i31;
            iArr5[i31] = i28;
            i28++;
            i27 = i29;
            z10 = true;
        }
        int i32 = ((bArr[i20] & 255) << 8) + (bArr[z10 ? 1 : 0] & 255);
        int i33 = iArr4[i32] - 1;
        iArr4[i32] = i33;
        iArr5[i33] = i10;
        int i34 = 256;
        while (true) {
            i34--;
            if (i34 < 0) {
                break;
            }
            zArr[i34] = false;
            iArr2[i34] = i34;
        }
        int i35 = 364;
        while (i35 != 1) {
            i35 /= 3;
            int i36 = i35;
            while (i36 <= i21) {
                int i37 = iArr2[i36];
                int i38 = iArr4[(i37 + 1) << 8] - iArr4[i37 << 8];
                int i39 = i35 - 1;
                int i40 = iArr2[i36 - i35];
                int i41 = i36;
                while (true) {
                    i15 = i16;
                    if (iArr4[(i40 + 1) << 8] - iArr4[i40 << 8] <= i38) {
                        break;
                    }
                    iArr2[i41] = i40;
                    int i42 = i41 - i35;
                    if (i42 <= i39) {
                        i41 = i42;
                        break;
                    } else {
                        i40 = iArr2[i42 - i35];
                        i41 = i42;
                        i16 = i15;
                    }
                }
                iArr2[i41] = i37;
                i36++;
                i16 = i15;
                i21 = 255;
            }
        }
        int i43 = i16;
        int i44 = 0;
        while (i44 <= i21) {
            int i45 = iArr2[i44];
            int i46 = 0;
            while (i46 <= i21) {
                int i47 = (i45 << 8) + i46;
                int i48 = iArr4[i47];
                if ((i48 & 2097152) != 2097152) {
                    int i49 = i48 & CLEARMASK;
                    int i50 = (iArr4[i47 + 1] & CLEARMASK) - 1;
                    if (i50 > i49) {
                        i14 = 2097152;
                        i11 = i46;
                        i12 = i43;
                        iArr = iArr2;
                        i13 = i44;
                        mainQSort3(data, i49, i50, 2, i10);
                        if (z6 && this.workDone > i12) {
                            return;
                        }
                    } else {
                        i14 = 2097152;
                        i11 = i46;
                        i12 = i43;
                        iArr = iArr2;
                        i13 = i44;
                    }
                    iArr4[i47] = i48 | i14;
                } else {
                    i11 = i46;
                    i12 = i43;
                    iArr = iArr2;
                    i13 = i44;
                }
                i46 = i11 + 1;
                i44 = i13;
                iArr2 = iArr;
                i21 = 255;
                i43 = i12;
            }
            int i51 = i43;
            int[] iArr6 = iArr2;
            int i52 = i44;
            int i53 = 0;
            for (int i54 = i21; i53 <= i54; i54 = 255) {
                iArr3[i53] = iArr4[(i53 << 8) + i45] & CLEARMASK;
                i53++;
            }
            int i55 = i45 << 8;
            int i56 = iArr4[i55] & CLEARMASK;
            int i57 = (i45 + 1) << 8;
            int i58 = iArr4[i57] & CLEARMASK;
            while (i56 < i58) {
                int i59 = iArr5[i56];
                int i60 = i58;
                int i61 = bArr[i59] & 255;
                if (!zArr[i61]) {
                    iArr5[iArr3[i61]] = i59 == 0 ? i10 : i59 - 1;
                    iArr3[i61] = iArr3[i61] + 1;
                }
                i56++;
                i58 = i60;
            }
            int i62 = 256;
            while (true) {
                i62--;
                if (i62 < 0) {
                    break;
                }
                int i63 = (i62 << 8) + i45;
                iArr4[i63] = iArr4[i63] | 2097152;
            }
            zArr[i45] = true;
            if (i52 < 255) {
                int i64 = iArr4[i55] & CLEARMASK;
                int i65 = (CLEARMASK & iArr4[i57]) - i64;
                int i66 = 0;
                while ((i65 >> i66) > 65534) {
                    i66++;
                }
                int i67 = 0;
                while (i67 < i65) {
                    int i68 = iArr5[i64 + i67];
                    char c7 = (char) (i67 >> i66);
                    cArr[i68] = c7;
                    int i69 = i64;
                    if (i68 < 20) {
                        cArr[i68 + i10 + 1] = c7;
                    }
                    i67++;
                    i64 = i69;
                }
            }
            i44 = i52 + 1;
            iArr2 = iArr6;
            i21 = 255;
            i43 = i51;
        }
    }

    private void fallbackQSort3(int[] iArr, int[] iArr2, int i10, int i11) {
        int i12;
        boolean z6;
        int[] iArr3 = iArr2;
        char c7 = 0;
        fpush(0, i10, i11);
        long j6 = 0;
        int i13 = 1;
        long j10 = 0;
        int i14 = 1;
        while (i14 > 0) {
            int i15 = i14 - 1;
            int[] iArrFpop = fpop(i15);
            int i16 = iArrFpop[c7];
            int i17 = iArrFpop[i13];
            if (i17 - i16 < 10) {
                fallbackSimpleSort(iArr, iArr3, i16, i17);
                i14 = i15;
            } else {
                j10 = ((j10 * 7621) + 1) % PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID;
                long j11 = j10 % 3;
                if (j11 == j6) {
                    i12 = iArr3[iArr[i16]];
                } else {
                    i12 = j11 == 1 ? iArr3[iArr[(i16 + i17) >>> i13]] : iArr3[iArr[i17]];
                }
                long j12 = i12;
                int i18 = i17;
                int i19 = i18;
                int i20 = i16;
                int i21 = i20;
                while (true) {
                    if (i21 <= i18) {
                        int i22 = iArr3[iArr[i21]] - ((int) j12);
                        if (i22 == 0) {
                            fswap(iArr, i21, i20);
                            i20++;
                            i21++;
                        } else {
                            if (i22 <= 0) {
                                z6 = true;
                                i21++;
                            }
                            iArr3 = iArr2;
                        }
                    }
                    while (i21 <= i18) {
                        int i23 = iArr3[iArr[i18]] - ((int) j12);
                        if (i23 == 0) {
                            fswap(iArr, i18, i19);
                            i19--;
                        } else if (i23 < 0) {
                            break;
                        }
                        i18--;
                        iArr3 = iArr2;
                    }
                    if (i21 > i18) {
                        break;
                    }
                    z6 = true;
                    fswap(iArr, i21, i18);
                    i21++;
                    i18--;
                    iArr3 = iArr2;
                }
                if (i19 < i20) {
                    iArr3 = iArr2;
                    i14 = i15;
                    c7 = 0;
                    j6 = 0;
                    i13 = 1;
                } else {
                    int iFmin = fmin(i20 - i16, i21 - i20);
                    fvswap(iArr, i16, i21 - iFmin, iFmin);
                    int i24 = i17 - i19;
                    int i25 = i19 - i18;
                    int iFmin2 = fmin(i24, i25);
                    fvswap(iArr, i18 + 1, (i17 - iFmin2) + 1, iFmin2);
                    int i26 = ((i21 + i16) - i20) - 1;
                    int i27 = (i17 - i25) + 1;
                    if (i26 - i16 > i17 - i27) {
                        fpush(i15, i16, i26);
                        fpush(i14, i27, i17);
                        i14++;
                    } else {
                        fpush(i15, i27, i17);
                        fpush(i14, i16, i26);
                        i14++;
                    }
                    iArr3 = iArr2;
                    i13 = 1;
                    c7 = 0;
                    j6 = 0;
                }
            }
        }
    }

    private void fallbackSimpleSort(int[] iArr, int[] iArr2, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 - i10 > 3) {
            for (int i12 = i11 - 4; i12 >= i10; i12--) {
                int i13 = iArr[i12];
                int i14 = iArr2[i13];
                int i15 = i12 + 4;
                while (i15 <= i11) {
                    int i16 = iArr[i15];
                    if (i14 <= iArr2[i16]) {
                        break;
                    }
                    iArr[i15 - 4] = i16;
                    i15 += 4;
                }
                iArr[i15 - 4] = i13;
            }
        }
        for (int i17 = i11 - 1; i17 >= i10; i17--) {
            int i18 = iArr[i17];
            int i19 = iArr2[i18];
            int i20 = i17 + 1;
            while (i20 <= i11) {
                int i21 = iArr[i20];
                if (i19 <= iArr2[i21]) {
                    break;
                }
                iArr[i20 - 1] = i21;
                i20++;
            }
            iArr[i20 - 1] = i18;
        }
    }

    private int[] fpop(int i10) {
        return new int[]{this.stack_ll[i10], this.stack_hh[i10]};
    }

    private void fpush(int i10, int i11, int i12) {
        this.stack_ll[i10] = i11;
        this.stack_hh[i10] = i12;
    }

    private void fswap(int[] iArr, int i10, int i11) {
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
    }

    private void fvswap(int[] iArr, int i10, int i11, int i12) {
        while (i12 > 0) {
            fswap(iArr, i10, i11);
            i10++;
            i11++;
            i12--;
        }
    }

    private int[] getEclass() {
        if (this.eclass == null) {
            this.eclass = new int[this.quadrant.length / 2];
        }
        return this.eclass;
    }

    private void mainQSort3(BZip2CompressorOutputStream.Data data, int i10, int i11, int i12, int i13) {
        boolean z6;
        int i14;
        int i15;
        int[] iArr = this.stack_ll;
        int[] iArr2 = this.stack_hh;
        int[] iArr3 = this.stack_dd;
        int[] iArr4 = data.fmap;
        byte[] bArr = data.block;
        iArr[0] = i10;
        iArr2[0] = i11;
        iArr3[0] = i12;
        boolean z10 = true;
        int i16 = 1;
        while (true) {
            int i17 = i16 - 1;
            if (i17 < 0) {
                return;
            }
            int i18 = iArr[i17];
            int i19 = iArr2[i17];
            int i20 = iArr3[i17];
            if (i19 - i18 < 20 || i20 > 10) {
                z6 = z10;
                if (mainSimpleSort(data, i18, i19, i20, i13)) {
                    return;
                } else {
                    i16 = i17;
                }
            } else {
                int i21 = i20 + 1;
                int iMed3 = med3(bArr[iArr4[i18] + i21], bArr[iArr4[i19] + i21], bArr[iArr4[(i18 + i19) >>> 1] + i21]) & 255;
                int i22 = i18;
                int i23 = i22;
                int i24 = i19;
                int i25 = i24;
                while (true) {
                    if (i23 <= i24) {
                        int i26 = iArr4[i23];
                        int i27 = (bArr[i26 + i21] & 255) - iMed3;
                        if (i27 == 0) {
                            iArr4[i23] = iArr4[i22];
                            iArr4[i22] = i26;
                            i22++;
                            i23++;
                        } else if (i27 < 0) {
                            i23++;
                        }
                    }
                    i14 = i25;
                    while (true) {
                        if (i23 > i24) {
                            i15 = i16;
                            break;
                        }
                        int i28 = iArr4[i24];
                        i15 = i16;
                        int i29 = (bArr[i28 + i21] & 255) - iMed3;
                        if (i29 != 0) {
                            if (i29 <= 0) {
                                break;
                            } else {
                                i24--;
                            }
                        } else {
                            iArr4[i24] = iArr4[i14];
                            iArr4[i14] = i28;
                            i14--;
                            i24--;
                        }
                        i16 = i15;
                    }
                    if (i23 > i24) {
                        break;
                    }
                    int i30 = iArr4[i23];
                    iArr4[i23] = iArr4[i24];
                    iArr4[i24] = i30;
                    i16 = i15;
                    i24--;
                    i23++;
                    i25 = i14;
                }
                if (i14 < i22) {
                    iArr[i17] = i18;
                    iArr2[i17] = i19;
                    iArr3[i17] = i21;
                    i16 = i15;
                    z6 = true;
                } else {
                    int i31 = i22 - i18;
                    int i32 = i23 - i22;
                    if (i31 >= i32) {
                        i31 = i32;
                    }
                    vswap(iArr4, i18, i23 - i31, i31);
                    int i33 = i19 - i14;
                    int i34 = i14 - i24;
                    if (i33 >= i34) {
                        i33 = i34;
                    }
                    z6 = true;
                    vswap(iArr4, i23, (i19 - i33) + 1, i33);
                    int i35 = (i23 + i18) - i22;
                    int i36 = i19 - i34;
                    iArr[i17] = i18;
                    iArr2[i17] = i35 - 1;
                    iArr3[i17] = i20;
                    iArr[i15] = i35;
                    iArr2[i15] = i36;
                    iArr3[i15] = i21;
                    int i37 = i15 + 1;
                    iArr[i37] = i36 + 1;
                    iArr2[i37] = i19;
                    iArr3[i37] = i20;
                    i16 = i15 + 2;
                }
            }
            z10 = z6;
        }
    }

    private boolean mainSimpleSort(BZip2CompressorOutputStream.Data data, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = (i11 - i10) + 1;
        if (i19 < 2) {
            return this.firstAttempt && this.workDone > this.workLimit;
        }
        int i20 = 0;
        while (INCS[i20] < i19) {
            i20++;
        }
        int[] iArr = data.fmap;
        char[] cArr = this.quadrant;
        byte[] bArr = data.block;
        int i21 = i13 + 1;
        boolean z6 = this.firstAttempt;
        int i22 = this.workLimit;
        int i23 = this.workDone;
        loop1: while (true) {
            i20--;
            if (i20 < 0) {
                break;
            }
            int i24 = INCS[i20];
            int i25 = i10 + i24;
            int i26 = i25 - 1;
            while (i25 <= i11) {
                int i27 = 3;
                while (i25 <= i11) {
                    int i28 = i27 - 1;
                    if (i28 < 0) {
                        break;
                    }
                    int i29 = iArr[i25];
                    int i30 = i29 + i12;
                    int i31 = i25;
                    boolean z10 = false;
                    int i32 = 0;
                    while (true) {
                        if (z10) {
                            iArr[i31] = i32;
                            i18 = i31 - i24;
                            if (i18 <= i26) {
                                i17 = i20;
                                i15 = i24;
                                i14 = i26;
                                i16 = i28;
                                break;
                            }
                            i31 = i18;
                        } else {
                            z10 = true;
                        }
                        int i33 = iArr[i31 - i24];
                        int i34 = i33 + i12;
                        byte b7 = bArr[i34 + 1];
                        byte b10 = bArr[i30 + 1];
                        if (b7 != b10) {
                            i17 = i20;
                            i15 = i24;
                            i14 = i26;
                            i16 = i28;
                            if ((b7 & 255) <= (b10 & 255)) {
                                i18 = i31;
                                break;
                                break;
                            }
                            i32 = i33;
                            i20 = i17;
                            i28 = i16;
                            i24 = i15;
                            i26 = i14;
                        } else {
                            byte b11 = bArr[i34 + 2];
                            byte b12 = bArr[i30 + 2];
                            if (b11 != b12) {
                                i17 = i20;
                                i15 = i24;
                                i14 = i26;
                                i16 = i28;
                                if ((b11 & 255) <= (b12 & 255)) {
                                    i18 = i31;
                                    break;
                                    break;
                                }
                                i32 = i33;
                                i20 = i17;
                                i28 = i16;
                                i24 = i15;
                                i26 = i14;
                            } else {
                                byte b13 = bArr[i34 + 3];
                                byte b14 = bArr[i30 + 3];
                                if (b13 != b14) {
                                    i17 = i20;
                                    i15 = i24;
                                    i14 = i26;
                                    i16 = i28;
                                    if ((b13 & 255) <= (b14 & 255)) {
                                        i18 = i31;
                                        break;
                                        break;
                                    }
                                    i32 = i33;
                                    i20 = i17;
                                    i28 = i16;
                                    i24 = i15;
                                    i26 = i14;
                                } else {
                                    byte b15 = bArr[i34 + 4];
                                    byte b16 = bArr[i30 + 4];
                                    if (b15 != b16) {
                                        i17 = i20;
                                        i15 = i24;
                                        i14 = i26;
                                        i16 = i28;
                                        if ((b15 & 255) <= (b16 & 255)) {
                                            i18 = i31;
                                            break;
                                            break;
                                        }
                                        i32 = i33;
                                        i20 = i17;
                                        i28 = i16;
                                        i24 = i15;
                                        i26 = i14;
                                    } else {
                                        byte b17 = bArr[i34 + 5];
                                        byte b18 = bArr[i30 + 5];
                                        if (b17 != b18) {
                                            i17 = i20;
                                            i15 = i24;
                                            i14 = i26;
                                            i16 = i28;
                                            if ((b17 & 255) <= (b18 & 255)) {
                                                i18 = i31;
                                                break;
                                                break;
                                            }
                                            i32 = i33;
                                            i20 = i17;
                                            i28 = i16;
                                            i24 = i15;
                                            i26 = i14;
                                        } else {
                                            int i35 = i34 + 6;
                                            byte b19 = bArr[i35];
                                            int i36 = i30 + 6;
                                            i17 = i20;
                                            byte b20 = bArr[i36];
                                            if (b19 != b20) {
                                                i15 = i24;
                                                i14 = i26;
                                                i16 = i28;
                                                if ((b19 & 255) <= (b20 & 255)) {
                                                    i18 = i31;
                                                    break;
                                                    break;
                                                }
                                                i32 = i33;
                                                i20 = i17;
                                                i28 = i16;
                                                i24 = i15;
                                                i26 = i14;
                                            } else {
                                                int i37 = i13;
                                                while (true) {
                                                    if (i37 > 0) {
                                                        int i38 = i37 - 4;
                                                        int i39 = i35 + 1;
                                                        byte b21 = bArr[i39];
                                                        int i40 = i36 + 1;
                                                        i15 = i24;
                                                        byte b22 = bArr[i40];
                                                        if (b21 == b22) {
                                                            char c7 = cArr[i35];
                                                            char c10 = cArr[i36];
                                                            if (c7 == c10) {
                                                                int i41 = i35 + 2;
                                                                byte b23 = bArr[i41];
                                                                int i42 = i36 + 2;
                                                                i14 = i26;
                                                                byte b24 = bArr[i42];
                                                                if (b23 == b24) {
                                                                    char c11 = cArr[i39];
                                                                    char c12 = cArr[i40];
                                                                    if (c11 == c12) {
                                                                        int i43 = i35 + 3;
                                                                        byte b25 = bArr[i43];
                                                                        int i44 = i36 + 3;
                                                                        i16 = i28;
                                                                        byte b26 = bArr[i44];
                                                                        if (b25 == b26) {
                                                                            char c13 = cArr[i41];
                                                                            char c14 = cArr[i42];
                                                                            if (c13 == c14) {
                                                                                int i45 = i35 + 4;
                                                                                byte b27 = bArr[i45];
                                                                                i36 += 4;
                                                                                byte b28 = bArr[i36];
                                                                                if (b27 == b28) {
                                                                                    char c15 = cArr[i43];
                                                                                    char c16 = cArr[i44];
                                                                                    if (c15 == c16) {
                                                                                        if (i45 >= i21) {
                                                                                            i45 -= i21;
                                                                                        }
                                                                                        i35 = i45;
                                                                                        if (i36 >= i21) {
                                                                                            i36 -= i21;
                                                                                        }
                                                                                        i23++;
                                                                                        i37 = i38;
                                                                                        i28 = i16;
                                                                                        i24 = i15;
                                                                                        i26 = i14;
                                                                                    } else if (c15 > c16) {
                                                                                        i32 = i33;
                                                                                        i20 = i17;
                                                                                        i28 = i16;
                                                                                        i24 = i15;
                                                                                        i26 = i14;
                                                                                    }
                                                                                } else if ((b27 & 255) > (b28 & 255)) {
                                                                                    i32 = i33;
                                                                                    i20 = i17;
                                                                                    i28 = i16;
                                                                                    i24 = i15;
                                                                                    i26 = i14;
                                                                                }
                                                                            } else if (c13 > c14) {
                                                                                i32 = i33;
                                                                                i20 = i17;
                                                                                i28 = i16;
                                                                                i24 = i15;
                                                                                i26 = i14;
                                                                            }
                                                                        } else if ((b25 & 255) > (b26 & 255)) {
                                                                            i32 = i33;
                                                                            i20 = i17;
                                                                            i28 = i16;
                                                                            i24 = i15;
                                                                            i26 = i14;
                                                                        }
                                                                    } else {
                                                                        i16 = i28;
                                                                        if (c11 > c12) {
                                                                            i32 = i33;
                                                                            i20 = i17;
                                                                            i28 = i16;
                                                                            i24 = i15;
                                                                            i26 = i14;
                                                                        }
                                                                    }
                                                                } else {
                                                                    i16 = i28;
                                                                    if ((b23 & 255) > (b24 & 255)) {
                                                                        i32 = i33;
                                                                        i20 = i17;
                                                                        i28 = i16;
                                                                        i24 = i15;
                                                                        i26 = i14;
                                                                    }
                                                                }
                                                            } else {
                                                                i14 = i26;
                                                                i16 = i28;
                                                                if (c7 > c10) {
                                                                    i32 = i33;
                                                                    i20 = i17;
                                                                    i28 = i16;
                                                                    i24 = i15;
                                                                    i26 = i14;
                                                                }
                                                            }
                                                        } else {
                                                            i14 = i26;
                                                            i16 = i28;
                                                            if ((b21 & 255) > (b22 & 255)) {
                                                                i32 = i33;
                                                                i20 = i17;
                                                                i28 = i16;
                                                                i24 = i15;
                                                                i26 = i14;
                                                            }
                                                        }
                                                    } else {
                                                        i15 = i24;
                                                        i14 = i26;
                                                        i16 = i28;
                                                    }
                                                    i18 = i31;
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    iArr[i18] = i29;
                    i25++;
                    i20 = i17;
                    i27 = i16;
                    i24 = i15;
                    i26 = i14;
                }
                int i46 = i20;
                int i47 = i24;
                int i48 = i26;
                if (z6 && i25 <= i11 && i23 > i22) {
                    break loop1;
                }
                i20 = i46;
                i24 = i47;
                i26 = i48;
            }
        }
        this.workDone = i23;
        return z6 && i23 > i22;
    }

    void blockSort(BZip2CompressorOutputStream.Data data, int i10) {
        this.workLimit = i10 * 30;
        this.workDone = 0;
        this.firstAttempt = true;
        if (i10 + 1 < 10000) {
            fallbackSort(data, i10);
        } else {
            mainSort(data, i10);
            if (this.firstAttempt && this.workDone > this.workLimit) {
                fallbackSort(data, i10);
            }
        }
        int[] iArr = data.fmap;
        data.origPtr = -1;
        for (int i11 = 0; i11 <= i10; i11++) {
            if (iArr[i11] == 0) {
                data.origPtr = i11;
                return;
            }
        }
    }

    BlockSort(BZip2CompressorOutputStream.Data data) {
        this.quadrant = data.sfmap;
    }

    final void fallbackSort(int[] iArr, byte[] bArr, int i10) {
        int i11;
        int[] iArr2 = new int[257];
        int[] eclass = getEclass();
        for (int i12 = 0; i12 < i10; i12++) {
            eclass[i12] = 0;
        }
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = bArr[i13] & 255;
            iArr2[i14] = iArr2[i14] + 1;
        }
        for (int i15 = 1; i15 < 257; i15++) {
            iArr2[i15] = iArr2[i15] + iArr2[i15 - 1];
        }
        for (int i16 = 0; i16 < i10; i16++) {
            int i17 = bArr[i16] & 255;
            int i18 = iArr2[i17] - 1;
            iArr2[i17] = i18;
            iArr[i18] = i16;
        }
        BitSet bitSet = new BitSet(i10 + 64);
        for (int i19 = 0; i19 < 256; i19++) {
            bitSet.set(iArr2[i19]);
        }
        for (int i20 = 0; i20 < 32; i20++) {
            int i21 = (i20 * 2) + i10;
            bitSet.set(i21);
            bitSet.clear(i21 + 1);
        }
        int i22 = 1;
        do {
            int i23 = 0;
            for (int i24 = 0; i24 < i10; i24++) {
                if (bitSet.get(i24)) {
                    i23 = i24;
                }
                int i25 = iArr[i24] - i22;
                if (i25 < 0) {
                    i25 += i10;
                }
                eclass[i25] = i23;
            }
            int iNextSetBit = -1;
            i11 = 0;
            while (true) {
                int iNextClearBit = bitSet.nextClearBit(iNextSetBit + 1);
                int i26 = iNextClearBit - 1;
                if (i26 >= i10 || (iNextSetBit = bitSet.nextSetBit(iNextClearBit + 1) - 1) >= i10) {
                    break;
                }
                if (iNextSetBit > i26) {
                    i11 += (iNextSetBit - i26) + 1;
                    fallbackQSort3(iArr, eclass, i26, iNextSetBit);
                    int i27 = -1;
                    while (i26 <= iNextSetBit) {
                        int i28 = eclass[iArr[i26]];
                        if (i27 != i28) {
                            bitSet.set(i26);
                            i27 = i28;
                        }
                        i26++;
                    }
                }
            }
            i22 *= 2;
            if (i22 > i10) {
                return;
            }
        } while (i11 != 0);
    }
}

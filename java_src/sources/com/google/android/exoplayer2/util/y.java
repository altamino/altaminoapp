package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public final class y {
    public static final int EXTENDED_SAR = 255;
    private static final int H264_NAL_UNIT_TYPE_SEI = 6;
    private static final int H264_NAL_UNIT_TYPE_SPS = 7;
    private static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    public static final int NAL_UNIT_TYPE_AUD = 9;
    public static final int NAL_UNIT_TYPE_IDR = 5;
    public static final int NAL_UNIT_TYPE_NON_IDR = 1;
    public static final int NAL_UNIT_TYPE_PARTITION_A = 2;
    public static final int NAL_UNIT_TYPE_PPS = 8;
    public static final int NAL_UNIT_TYPE_SEI = 6;
    public static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static void n(d0 d0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (d0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        d0Var.g();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        d0Var.g();
                    }
                } else {
                    d0Var.h();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    public static final class a {
        public final int[] constraintBytes;
        public final int generalLevelIdc;
        public final int generalProfileCompatibilityFlags;
        public final int generalProfileIdc;
        public final int generalProfileSpace;
        public final boolean generalTierFlag;
        public final int height;
        public final float pixelWidthHeightRatio;
        public final int seqParameterSetId;
        public final int width;

        public a(int i10, boolean z6, int i11, int i12, int[] iArr, int i13, int i14, int i15, int i16, float f) {
            this.generalProfileSpace = i10;
            this.generalTierFlag = z6;
            this.generalProfileIdc = i11;
            this.generalProfileCompatibilityFlags = i12;
            this.constraintBytes = iArr;
            this.generalLevelIdc = i13;
            this.seqParameterSetId = i14;
            this.width = i15;
            this.height = i16;
            this.pixelWidthHeightRatio = f;
        }
    }

    public static final class b {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public b(int i10, int i11, boolean z6) {
            this.picParameterSetId = i10;
            this.seqParameterSetId = i11;
            this.bottomFieldPicOrderInFramePresentFlag = z6;
        }
    }

    public static final class c {
        public final int constraintsFlagsAndReservedZero2Bits;
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int levelIdc;
        public final int maxNumRefFrames;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthHeightRatio;
        public final int profileIdc;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f, boolean z6, boolean z10, int i17, int i18, int i19, boolean z11) {
            this.profileIdc = i10;
            this.constraintsFlagsAndReservedZero2Bits = i11;
            this.levelIdc = i12;
            this.seqParameterSetId = i13;
            this.maxNumRefFrames = i14;
            this.width = i15;
            this.height = i16;
            this.pixelWidthHeightRatio = f;
            this.separateColorPlaneFlag = z6;
            this.frameMbsOnlyFlag = z10;
            this.frameNumLength = i17;
            this.picOrderCountType = i18;
            this.picOrderCntLsbLength = i19;
            this.deltaPicOrderAlwaysZeroFlag = z11;
        }
    }

    public static int c(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        com.google.android.exoplayer2.util.a.g(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            a(zArr);
            return i10 - 3;
        }
        if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            a(zArr);
            return i10 - 2;
        }
        if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            a(zArr);
            return i10 - 1;
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            byte b7 = bArr[i14];
            if ((b7 & 254) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b7 == 1) {
                    a(zArr);
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        zArr[0] = i12 <= 2 ? !(i12 != 2 ? !(zArr[1] && bArr[i13] == 1) : !(zArr[2] && bArr[i11 + (-2)] == 0 && bArr[i13] == 1)) : bArr[i11 + (-3)] == 0 && bArr[i11 + (-2)] == 0 && bArr[i13] == 1;
        zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
        zArr[2] = bArr[i13] == 0;
        return i11;
    }

    private static int d(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int e(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i10) {
        return bArr[i10 + 3] & com.google.common.base.c.US;
    }

    public static boolean g(@Nullable String str, byte b7) {
        if ("video/avc".equals(str) && (b7 & com.google.common.base.c.US) == 6) {
            return true;
        }
        return "video/hevc".equals(str) && ((b7 & 126) >> 1) == 39;
    }

    public static a h(byte[] bArr, int i10, int i11) {
        return i(bArr, i10 + 2, i11);
    }

    public static a i(byte[] bArr, int i10, int i11) {
        d0 d0Var = new d0(bArr, i10, i11);
        d0Var.l(4);
        int iE = d0Var.e(3);
        d0Var.k();
        int iE2 = d0Var.e(2);
        boolean zD = d0Var.d();
        int iE3 = d0Var.e(5);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 >= 32) {
                break;
            }
            if (d0Var.d()) {
                i12 |= 1 << i13;
            }
            i13++;
        }
        int[] iArr = new int[6];
        for (int i14 = 0; i14 < 6; i14++) {
            iArr[i14] = d0Var.e(8);
        }
        int iE4 = d0Var.e(8);
        int i15 = 0;
        for (int i16 = 0; i16 < iE; i16++) {
            if (d0Var.d()) {
                i15 += 89;
            }
            if (d0Var.d()) {
                i15 += 8;
            }
        }
        d0Var.l(i15);
        if (iE > 0) {
            d0Var.l((8 - iE) * 2);
        }
        int iH = d0Var.h();
        int iH2 = d0Var.h();
        if (iH2 == 3) {
            d0Var.k();
        }
        int iH3 = d0Var.h();
        int iH4 = d0Var.h();
        if (d0Var.d()) {
            int iH5 = d0Var.h();
            int iH6 = d0Var.h();
            int iH7 = d0Var.h();
            int iH8 = d0Var.h();
            iH3 -= ((iH2 == 1 || iH2 == 2) ? 2 : 1) * (iH5 + iH6);
            iH4 -= (iH2 == 1 ? 2 : 1) * (iH7 + iH8);
        }
        int i17 = iH3;
        d0Var.h();
        d0Var.h();
        int iH9 = d0Var.h();
        for (int i18 = d0Var.d() ? 0 : iE; i18 <= iE; i18++) {
            d0Var.h();
            d0Var.h();
            d0Var.h();
        }
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        if (d0Var.d() && d0Var.d()) {
            n(d0Var);
        }
        d0Var.l(2);
        if (d0Var.d()) {
            d0Var.l(8);
            d0Var.h();
            d0Var.h();
            d0Var.k();
        }
        p(d0Var);
        if (d0Var.d()) {
            for (int i19 = 0; i19 < d0Var.h(); i19++) {
                d0Var.l(iH9 + 5);
            }
        }
        d0Var.l(2);
        float f = 1.0f;
        if (d0Var.d()) {
            if (d0Var.d()) {
                int iE5 = d0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = d0Var.e(16);
                    int iE7 = d0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f = iE6 / iE7;
                    }
                } else {
                    float[] fArr = ASPECT_RATIO_IDC_VALUES;
                    if (iE5 < fArr.length) {
                        f = fArr[iE5];
                    } else {
                        t.i(TAG, "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (d0Var.d()) {
                d0Var.k();
            }
            if (d0Var.d()) {
                d0Var.l(4);
                if (d0Var.d()) {
                    d0Var.l(24);
                }
            }
            if (d0Var.d()) {
                d0Var.h();
                d0Var.h();
            }
            d0Var.k();
            if (d0Var.d()) {
                iH4 *= 2;
            }
        }
        return new a(iE2, zD, iE3, i12, iArr, iE4, iH, i17, iH4, f);
    }

    public static b j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10 + 1, i11);
    }

    public static b k(byte[] bArr, int i10, int i11) {
        d0 d0Var = new d0(bArr, i10, i11);
        int iH = d0Var.h();
        int iH2 = d0Var.h();
        d0Var.k();
        return new b(iH, iH2, d0Var.d());
    }

    public static c l(byte[] bArr, int i10, int i11) {
        return m(bArr, i10 + 1, i11);
    }

    public static c m(byte[] bArr, int i10, int i11) {
        int iH;
        boolean zD;
        boolean z6;
        int iH2;
        float f;
        int i12;
        d0 d0Var = new d0(bArr, i10, i11);
        int iE = d0Var.e(8);
        int iE2 = d0Var.e(8);
        int iE3 = d0Var.e(8);
        int iH3 = d0Var.h();
        int i13 = 1;
        if (iE == 100 || iE == 110 || iE == 122 || iE == 244 || iE == 44 || iE == 83 || iE == 86 || iE == 118 || iE == 128 || iE == 138) {
            iH = d0Var.h();
            zD = iH == 3 ? d0Var.d() : false;
            d0Var.h();
            d0Var.h();
            d0Var.k();
            if (d0Var.d()) {
                int i14 = iH != 3 ? 8 : 12;
                int i15 = 0;
                while (i15 < i14) {
                    if (d0Var.d()) {
                        o(d0Var, i15 < 6 ? 16 : 64);
                    }
                    i15++;
                }
            }
        } else {
            iH = 1;
            zD = false;
        }
        int iH4 = d0Var.h() + 4;
        int iH5 = d0Var.h();
        if (iH5 == 0) {
            iH = iH;
            zD = zD;
            iH2 = d0Var.h() + 4;
            z6 = false;
        } else {
            if (iH5 == 1) {
                boolean zD2 = d0Var.d();
                d0Var.g();
                d0Var.g();
                long jH = d0Var.h();
                for (int i16 = 0; i16 < jH; i16++) {
                    d0Var.h();
                }
                z6 = zD2;
            } else {
                z6 = false;
            }
            iH2 = 0;
        }
        int iH6 = d0Var.h();
        d0Var.k();
        int iH7 = d0Var.h() + 1;
        int iH8 = d0Var.h() + 1;
        boolean zD3 = d0Var.d();
        int i17 = (2 - (zD3 ? 1 : 0)) * iH8;
        if (!zD3) {
            d0Var.k();
        }
        d0Var.k();
        int i18 = iH7 * 16;
        int i19 = i17 * 16;
        if (d0Var.d()) {
            int iH9 = d0Var.h();
            int iH10 = d0Var.h();
            int iH11 = d0Var.h();
            int iH12 = d0Var.h();
            if (iH == 0) {
                i12 = 2 - (zD3 ? 1 : 0);
            } else {
                int i20 = iH;
                i13 = i20 == 3 ? 1 : 2;
                i12 = (2 - (zD3 ? 1 : 0)) * (i20 == 1 ? 2 : 1);
            }
            i18 -= (iH9 + iH10) * i13;
            i19 -= (iH11 + iH12) * i12;
        }
        int i21 = i18;
        int i22 = i19;
        float f6 = 1.0f;
        if (d0Var.d() && d0Var.d()) {
            int iE4 = d0Var.e(8);
            if (iE4 == 255) {
                int iE5 = d0Var.e(16);
                int iE6 = d0Var.e(16);
                if (iE5 != 0 && iE6 != 0) {
                    f6 = iE5 / iE6;
                }
            } else {
                float[] fArr = ASPECT_RATIO_IDC_VALUES;
                if (iE4 < fArr.length) {
                    f = fArr[iE4];
                } else {
                    t.i(TAG, "Unexpected aspect_ratio_idc value: " + iE4);
                }
            }
            f = f6;
        } else {
            f = f6;
        }
        return new c(iE, iE2, iE3, iH3, iH6, i21, i22, f, zD, zD3, iH4, iH5, iH2, z6);
    }

    private static void o(d0 d0Var, int i10) {
        int iG = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i10; i12++) {
            if (iG != 0) {
                iG = ((d0Var.g() + i11) + 256) % 256;
            }
            if (iG != 0) {
                i11 = iG;
            }
        }
    }

    public static int q(byte[] bArr, int i10) {
        int i11;
        synchronized (scratchEscapePositionsLock) {
            int iD = 0;
            int i12 = 0;
            while (iD < i10) {
                try {
                    iD = d(bArr, iD, i10);
                    if (iD < i10) {
                        int[] iArr = scratchEscapePositions;
                        if (iArr.length <= i12) {
                            scratchEscapePositions = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        scratchEscapePositions[i12] = iD;
                        iD += 3;
                        i12++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i11 = i10 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = scratchEscapePositions[i15] - i14;
                System.arraycopy(bArr, i14, bArr, i13, i16);
                int i17 = i13 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i13 = i17 + 2;
                bArr[i18] = 0;
                i14 += i16 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i13, i11 - i13);
        }
        return i11;
    }

    public static void b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i10 + 1;
            if (i12 < iPosition) {
                int i13 = byteBuffer.get(i10) & 255;
                if (i11 == 3) {
                    if (i13 == 1 && (byteBuffer.get(i12) & com.google.common.base.c.US) == 7) {
                        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                        byteBufferDuplicate.position(i10 - 3);
                        byteBufferDuplicate.limit(iPosition);
                        byteBuffer.position(0);
                        byteBuffer.put(byteBufferDuplicate);
                        return;
                    }
                } else if (i13 == 0) {
                    i11++;
                }
                if (i13 != 0) {
                    i11 = 0;
                }
                i10 = i12;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    private static void p(d0 d0Var) {
        int iH = d0Var.h();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < iH; i12++) {
            if (i12 != 0 && d0Var.d()) {
                int i13 = i10 + i11;
                int iH2 = (1 - ((d0Var.d() ? 1 : 0) * 2)) * (d0Var.h() + 1);
                int i14 = i13 + 1;
                boolean[] zArr = new boolean[i14];
                for (int i15 = 0; i15 <= i13; i15++) {
                    if (!d0Var.d()) {
                        zArr[i15] = d0Var.d();
                    } else {
                        zArr[i15] = true;
                    }
                }
                int[] iArr2 = new int[i14];
                int[] iArr3 = new int[i14];
                int i16 = 0;
                for (int i17 = i11 - 1; i17 >= 0; i17--) {
                    int i18 = iArrCopyOf[i17] + iH2;
                    if (i18 < 0 && zArr[i10 + i17]) {
                        iArr2[i16] = i18;
                        i16++;
                    }
                }
                if (iH2 < 0 && zArr[i13]) {
                    iArr2[i16] = iH2;
                    i16++;
                }
                for (int i19 = 0; i19 < i10; i19++) {
                    int i20 = iArr[i19] + iH2;
                    if (i20 < 0 && zArr[i19]) {
                        iArr2[i16] = i20;
                        i16++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr2, i16);
                int i21 = 0;
                for (int i22 = i10 - 1; i22 >= 0; i22--) {
                    int i23 = iArr[i22] + iH2;
                    if (i23 > 0 && zArr[i22]) {
                        iArr3[i21] = i23;
                        i21++;
                    }
                }
                if (iH2 > 0 && zArr[i13]) {
                    iArr3[i21] = iH2;
                    i21++;
                }
                for (int i24 = 0; i24 < i11; i24++) {
                    int i25 = iArrCopyOf[i24] + iH2;
                    if (i25 > 0 && zArr[i10 + i24]) {
                        iArr3[i21] = i25;
                        i21++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr3, i21);
                iArr = iArrCopyOf2;
                i10 = i16;
                i11 = i21;
            } else {
                int iH3 = d0Var.h();
                int iH4 = d0Var.h();
                int[] iArr4 = new int[iH3];
                for (int i26 = 0; i26 < iH3; i26++) {
                    iArr4[i26] = d0Var.h() + 1;
                    d0Var.k();
                }
                int[] iArr5 = new int[iH4];
                for (int i27 = 0; i27 < iH4; i27++) {
                    iArr5[i27] = d0Var.h() + 1;
                    d0Var.k();
                }
                i10 = iH3;
                iArr = iArr4;
                i11 = iH4;
                iArrCopyOf = iArr5;
            }
        }
    }
}

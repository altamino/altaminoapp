package androidx.media3.container;

import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import com.google.common.base.c;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class NalUnitUtil {
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

    public static final class H265SpsData {
        public final int bitDepthChromaMinus8;
        public final int bitDepthLumaMinus8;
        public final int chromaFormatIdc;
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
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

        public H265SpsData(int i10, boolean z6, int i11, int i12, int i13, int i14, int i15, int[] iArr, int i16, int i17, int i18, int i19, float f, int i20, int i21, int i22) {
            this.generalProfileSpace = i10;
            this.generalTierFlag = z6;
            this.generalProfileIdc = i11;
            this.generalProfileCompatibilityFlags = i12;
            this.chromaFormatIdc = i13;
            this.bitDepthLumaMinus8 = i14;
            this.bitDepthChromaMinus8 = i15;
            this.constraintBytes = iArr;
            this.generalLevelIdc = i16;
            this.seqParameterSetId = i17;
            this.width = i18;
            this.height = i19;
            this.pixelWidthHeightRatio = f;
            this.colorSpace = i20;
            this.colorRange = i21;
            this.colorTransfer = i22;
        }
    }

    public static final class SpsData {
        public final int colorRange;
        public final int colorSpace;
        public final int colorTransfer;
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

        public SpsData(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f, boolean z6, boolean z10, int i17, int i18, int i19, boolean z11, int i20, int i21, int i22) {
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
            this.colorSpace = i20;
            this.colorRange = i21;
            this.colorTransfer = i22;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    private static void n(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (parsableNalUnitBitArray.d()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        parsableNalUnitBitArray.g();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        parsableNalUnitBitArray.g();
                    }
                } else {
                    parsableNalUnitBitArray.h();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i10, int i11, boolean z6) {
            this.picParameterSetId = i10;
            this.seqParameterSetId = i11;
            this.bottomFieldPicOrderInFramePresentFlag = z6;
        }
    }

    public static int c(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        Assertions.g(i12 >= 0);
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
        return bArr[i10 + 3] & c.US;
    }

    public static boolean g(@Nullable String str, byte b7) {
        if ("video/avc".equals(str) && (b7 & c.US) == 6) {
            return true;
        }
        return "video/hevc".equals(str) && ((b7 & 126) >> 1) == 39;
    }

    public static H265SpsData h(byte[] bArr, int i10, int i11) {
        return i(bArr, i10 + 2, i11);
    }

    public static H265SpsData i(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i10, i11);
        parsableNalUnitBitArray.l(4);
        int iE = parsableNalUnitBitArray.e(3);
        parsableNalUnitBitArray.k();
        int iE2 = parsableNalUnitBitArray.e(2);
        boolean zD = parsableNalUnitBitArray.d();
        int iE3 = parsableNalUnitBitArray.e(5);
        int i16 = 0;
        for (int i17 = 0; i17 < 32; i17++) {
            if (parsableNalUnitBitArray.d()) {
                i16 |= 1 << i17;
            }
        }
        int[] iArr = new int[6];
        for (int i18 = 0; i18 < 6; i18++) {
            iArr[i18] = parsableNalUnitBitArray.e(8);
        }
        int iE4 = parsableNalUnitBitArray.e(8);
        int i19 = 0;
        for (int i20 = 0; i20 < iE; i20++) {
            if (parsableNalUnitBitArray.d()) {
                i19 += 89;
            }
            if (parsableNalUnitBitArray.d()) {
                i19 += 8;
            }
        }
        parsableNalUnitBitArray.l(i19);
        if (iE > 0) {
            parsableNalUnitBitArray.l((8 - iE) * 2);
        }
        int iH = parsableNalUnitBitArray.h();
        int iH2 = parsableNalUnitBitArray.h();
        if (iH2 == 3) {
            parsableNalUnitBitArray.k();
        }
        int iH3 = parsableNalUnitBitArray.h();
        int iH4 = parsableNalUnitBitArray.h();
        if (parsableNalUnitBitArray.d()) {
            int iH5 = parsableNalUnitBitArray.h();
            int iH6 = parsableNalUnitBitArray.h();
            int iH7 = parsableNalUnitBitArray.h();
            int iH8 = parsableNalUnitBitArray.h();
            iH3 -= ((iH2 == 1 || iH2 == 2) ? 2 : 1) * (iH5 + iH6);
            iH4 -= (iH2 == 1 ? 2 : 1) * (iH7 + iH8);
        }
        int i21 = iH4;
        int i22 = iH3;
        int i23 = i21;
        int iH9 = parsableNalUnitBitArray.h();
        int iH10 = parsableNalUnitBitArray.h();
        int iH11 = parsableNalUnitBitArray.h();
        for (int i24 = parsableNalUnitBitArray.d() ? 0 : iE; i24 <= iE; i24++) {
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.h();
        }
        parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.h();
        if (parsableNalUnitBitArray.d() && parsableNalUnitBitArray.d()) {
            n(parsableNalUnitBitArray);
        }
        parsableNalUnitBitArray.l(2);
        if (parsableNalUnitBitArray.d()) {
            parsableNalUnitBitArray.l(8);
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.k();
        }
        p(parsableNalUnitBitArray);
        if (parsableNalUnitBitArray.d()) {
            int iH12 = parsableNalUnitBitArray.h();
            for (int i25 = 0; i25 < iH12; i25++) {
                parsableNalUnitBitArray.l(iH11 + 5);
            }
        }
        parsableNalUnitBitArray.l(2);
        int iH13 = -1;
        float f = 1.0f;
        if (parsableNalUnitBitArray.d()) {
            if (parsableNalUnitBitArray.d()) {
                int iE5 = parsableNalUnitBitArray.e(8);
                if (iE5 == 255) {
                    int iE6 = parsableNalUnitBitArray.e(16);
                    int iE7 = parsableNalUnitBitArray.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f = iE6 / iE7;
                    }
                } else {
                    float[] fArr = ASPECT_RATIO_IDC_VALUES;
                    if (iE5 < fArr.length) {
                        f = fArr[iE5];
                    } else {
                        Log.i(TAG, "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.k();
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.l(3);
                i13 = parsableNalUnitBitArray.d() ? 1 : 2;
                if (parsableNalUnitBitArray.d()) {
                    int iE8 = parsableNalUnitBitArray.e(8);
                    int iE9 = parsableNalUnitBitArray.e(8);
                    parsableNalUnitBitArray.l(8);
                    iH13 = ColorInfo.h(iE8);
                    i15 = ColorInfo.i(iE9);
                } else {
                    i15 = -1;
                }
            } else {
                i15 = -1;
                i13 = -1;
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.h();
                parsableNalUnitBitArray.h();
            }
            parsableNalUnitBitArray.k();
            if (parsableNalUnitBitArray.d()) {
                i23 *= 2;
            }
            i14 = i15;
            i12 = iH13;
        } else {
            i12 = -1;
            i13 = -1;
            i14 = -1;
        }
        return new H265SpsData(iE2, zD, iE3, i16, iH2, iH9, iH10, iArr, iE4, iH, i22, i23, f, i12, i13, i14);
    }

    public static PpsData j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10 + 1, i11);
    }

    public static PpsData k(byte[] bArr, int i10, int i11) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i10, i11);
        int iH = parsableNalUnitBitArray.h();
        int iH2 = parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.k();
        return new PpsData(iH, iH2, parsableNalUnitBitArray.d());
    }

    public static SpsData l(byte[] bArr, int i10, int i11) {
        return m(bArr, i10 + 1, i11);
    }

    /* JADX WARN: Code duplicated, block: B:99:0x01b6 A[PHI: r16
      0x01b6: PHI (r16v5 float) = (r16v4 float), (r16v9 float) binds: [B:72:0x0131, B:89:0x0181] A[DONT_GENERATE, DONT_INLINE]] */
    public static SpsData m(byte[] bArr, int i10, int i11) {
        int iH;
        boolean zD;
        boolean z6;
        int iH2;
        int iH3;
        int i12;
        int i13;
        int i14;
        int i15;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i10, i11);
        int iE = parsableNalUnitBitArray.e(8);
        int iE2 = parsableNalUnitBitArray.e(8);
        int iE3 = parsableNalUnitBitArray.e(8);
        int iH4 = parsableNalUnitBitArray.h();
        if (iE == 100 || iE == 110 || iE == 122 || iE == 244 || iE == 44 || iE == 83 || iE == 86 || iE == 118 || iE == 128 || iE == 138) {
            iH = parsableNalUnitBitArray.h();
            zD = iH == 3 ? parsableNalUnitBitArray.d() : false;
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.h();
            parsableNalUnitBitArray.k();
            if (parsableNalUnitBitArray.d()) {
                int i16 = iH != 3 ? 8 : 12;
                int i17 = 0;
                while (i17 < i16) {
                    if (parsableNalUnitBitArray.d()) {
                        o(parsableNalUnitBitArray, i17 < 6 ? 16 : 64);
                    }
                    i17++;
                }
            }
        } else {
            iH = 1;
            zD = false;
        }
        int iH5 = parsableNalUnitBitArray.h() + 4;
        int iH6 = parsableNalUnitBitArray.h();
        if (iH6 == 0) {
            iH = iH;
            zD = zD;
            iH2 = parsableNalUnitBitArray.h() + 4;
            z6 = false;
        } else {
            if (iH6 == 1) {
                boolean zD2 = parsableNalUnitBitArray.d();
                parsableNalUnitBitArray.g();
                parsableNalUnitBitArray.g();
                long jH = parsableNalUnitBitArray.h();
                for (int i18 = 0; i18 < jH; i18++) {
                    parsableNalUnitBitArray.h();
                }
                z6 = zD2;
            } else {
                z6 = false;
            }
            iH2 = 0;
        }
        int iH7 = parsableNalUnitBitArray.h();
        parsableNalUnitBitArray.k();
        int iH8 = parsableNalUnitBitArray.h() + 1;
        int iH9 = parsableNalUnitBitArray.h() + 1;
        boolean zD3 = parsableNalUnitBitArray.d();
        int i19 = (2 - (zD3 ? 1 : 0)) * iH9;
        if (!zD3) {
            parsableNalUnitBitArray.k();
        }
        parsableNalUnitBitArray.k();
        int i20 = iH8 * 16;
        int i21 = i19 * 16;
        if (parsableNalUnitBitArray.d()) {
            int iH10 = parsableNalUnitBitArray.h();
            int iH11 = parsableNalUnitBitArray.h();
            int iH12 = parsableNalUnitBitArray.h();
            int iH13 = parsableNalUnitBitArray.h();
            if (iH == 0) {
                i15 = 2 - (zD3 ? 1 : 0);
                i14 = 1;
            } else {
                int i22 = iH;
                i14 = i22 == 3 ? 1 : 2;
                i15 = (i22 == 1 ? 2 : 1) * (2 - (zD3 ? 1 : 0));
            }
            i20 -= (iH10 + iH11) * i14;
            i21 -= (iH12 + iH13) * i15;
        }
        int i23 = i20;
        float f = 1.0f;
        if (parsableNalUnitBitArray.d()) {
            if (parsableNalUnitBitArray.d()) {
                int iE4 = parsableNalUnitBitArray.e(8);
                if (iE4 == 255) {
                    int iE5 = parsableNalUnitBitArray.e(16);
                    int iE6 = parsableNalUnitBitArray.e(16);
                    if (iE5 != 0 && iE6 != 0) {
                        f = iE5 / iE6;
                    }
                } else {
                    float[] fArr = ASPECT_RATIO_IDC_VALUES;
                    if (iE4 < fArr.length) {
                        f = fArr[iE4];
                    } else {
                        Log.i(TAG, "Unexpected aspect_ratio_idc value: " + iE4);
                    }
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.k();
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.l(3);
                int i24 = parsableNalUnitBitArray.d() ? 1 : 2;
                if (parsableNalUnitBitArray.d()) {
                    int iE7 = parsableNalUnitBitArray.e(8);
                    int iE8 = parsableNalUnitBitArray.e(8);
                    parsableNalUnitBitArray.l(8);
                    iH3 = ColorInfo.h(iE7);
                    i13 = ColorInfo.i(iE8);
                    i12 = i24;
                } else {
                    i12 = i24;
                    iH3 = -1;
                }
            } else {
                iH3 = -1;
                i12 = -1;
            }
            i13 = -1;
        } else {
            iH3 = -1;
            i12 = -1;
            i13 = -1;
        }
        return new SpsData(iE, iE2, iE3, iH4, iH7, i23, i21, f, zD, zD3, iH5, iH6, iH2, z6, iH3, i12, i13);
    }

    private static void o(ParsableNalUnitBitArray parsableNalUnitBitArray, int i10) {
        int iG = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i10; i12++) {
            if (iG != 0) {
                iG = ((parsableNalUnitBitArray.g() + i11) + 256) % 256;
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

    private NalUnitUtil() {
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
                    if (i13 == 1 && (byteBuffer.get(i12) & c.US) == 7) {
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

    private static void p(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int i10;
        int i11;
        int iH = parsableNalUnitBitArray.h();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i12 = -1;
        int i13 = -1;
        for (int i14 = 0; i14 < iH; i14++) {
            if (i14 != 0 && parsableNalUnitBitArray.d()) {
                int i15 = i12 + i13;
                int iH2 = (1 - ((parsableNalUnitBitArray.d() ? 1 : 0) * 2)) * (parsableNalUnitBitArray.h() + 1);
                int i16 = i15 + 1;
                boolean[] zArr = new boolean[i16];
                for (int i17 = 0; i17 <= i15; i17++) {
                    if (!parsableNalUnitBitArray.d()) {
                        zArr[i17] = parsableNalUnitBitArray.d();
                    } else {
                        zArr[i17] = true;
                    }
                }
                int[] iArr2 = new int[i16];
                int[] iArr3 = new int[i16];
                int i18 = 0;
                for (int i19 = i13 - 1; i19 >= 0; i19--) {
                    int i20 = iArrCopyOf[i19] + iH2;
                    if (i20 < 0 && zArr[i12 + i19]) {
                        iArr2[i18] = i20;
                        i18++;
                    }
                }
                if (iH2 < 0 && zArr[i15]) {
                    iArr2[i18] = iH2;
                    i18++;
                }
                for (int i21 = 0; i21 < i12; i21++) {
                    int i22 = iArr[i21] + iH2;
                    if (i22 < 0 && zArr[i21]) {
                        iArr2[i18] = i22;
                        i18++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr2, i18);
                int i23 = 0;
                for (int i24 = i12 - 1; i24 >= 0; i24--) {
                    int i25 = iArr[i24] + iH2;
                    if (i25 > 0 && zArr[i24]) {
                        iArr3[i23] = i25;
                        i23++;
                    }
                }
                if (iH2 > 0 && zArr[i15]) {
                    iArr3[i23] = iH2;
                    i23++;
                }
                for (int i26 = 0; i26 < i13; i26++) {
                    int i27 = iArrCopyOf[i26] + iH2;
                    if (i27 > 0 && zArr[i12 + i26]) {
                        iArr3[i23] = i27;
                        i23++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr3, i23);
                iArr = iArrCopyOf2;
                i12 = i18;
                i13 = i23;
            } else {
                int iH3 = parsableNalUnitBitArray.h();
                int iH4 = parsableNalUnitBitArray.h();
                int[] iArr4 = new int[iH3];
                for (int i28 = 0; i28 < iH3; i28++) {
                    if (i28 > 0) {
                        i11 = iArr4[i28 - 1];
                    } else {
                        i11 = 0;
                    }
                    iArr4[i28] = i11 - (parsableNalUnitBitArray.h() + 1);
                    parsableNalUnitBitArray.k();
                }
                int[] iArr5 = new int[iH4];
                for (int i29 = 0; i29 < iH4; i29++) {
                    if (i29 > 0) {
                        i10 = iArr5[i29 - 1];
                    } else {
                        i10 = 0;
                    }
                    iArr5[i29] = i10 + parsableNalUnitBitArray.h() + 1;
                    parsableNalUnitBitArray.k();
                }
                i12 = iH3;
                iArr = iArr4;
                i13 = iH4;
                iArrCopyOf = iArr5;
            }
        }
    }
}

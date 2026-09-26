package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class HevcConfig {
    private static final int SPS_NAL_UNIT_TYPE = 33;

    @Nullable
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int height;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static HevcConfig a(ParsableByteArray parsableByteArray) throws ParserException {
        try {
            parsableByteArray.V(21);
            int iH = parsableByteArray.H() & 3;
            int iH2 = parsableByteArray.H();
            int iF = parsableByteArray.f();
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < iH2; i12++) {
                parsableByteArray.V(1);
                int iN = parsableByteArray.N();
                for (int i13 = 0; i13 < iN; i13++) {
                    int iN2 = parsableByteArray.N();
                    i11 += iN2 + 4;
                    parsableByteArray.V(iN2);
                }
            }
            parsableByteArray.U(iF);
            byte[] bArr = new byte[i11];
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            float f = 1.0f;
            String strC = null;
            int i19 = 0;
            int i20 = 0;
            while (i19 < iH2) {
                int iH3 = parsableByteArray.H() & 63;
                int iN3 = parsableByteArray.N();
                int i21 = i10;
                while (i21 < iN3) {
                    int iN4 = parsableByteArray.N();
                    byte[] bArr2 = NalUnitUtil.NAL_START_CODE;
                    int i22 = iH2;
                    System.arraycopy(bArr2, i10, bArr, i20, bArr2.length);
                    int length = i20 + bArr2.length;
                    System.arraycopy(parsableByteArray.e(), parsableByteArray.f(), bArr, length, iN4);
                    if (iH3 == 33 && i21 == 0) {
                        NalUnitUtil.H265SpsData h265SpsDataH = NalUnitUtil.h(bArr, length, length + iN4);
                        int i23 = h265SpsDataH.width;
                        i15 = h265SpsDataH.height;
                        i16 = h265SpsDataH.colorSpace;
                        int i24 = h265SpsDataH.colorRange;
                        int i25 = h265SpsDataH.colorTransfer;
                        float f6 = h265SpsDataH.pixelWidthHeightRatio;
                        i14 = i23;
                        strC = CodecSpecificDataUtil.c(h265SpsDataH.generalProfileSpace, h265SpsDataH.generalTierFlag, h265SpsDataH.generalProfileIdc, h265SpsDataH.generalProfileCompatibilityFlags, h265SpsDataH.constraintBytes, h265SpsDataH.generalLevelIdc);
                        i18 = i25;
                        i17 = i24;
                        f = f6;
                    }
                    i20 = length + iN4;
                    parsableByteArray.V(iN4);
                    i21++;
                    iH2 = i22;
                    iH3 = iH3;
                    iN3 = iN3;
                    i10 = 0;
                }
                i19++;
                i10 = 0;
            }
            return new HevcConfig(i11 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iH + 1, i14, i15, i16, i17, i18, f, strC);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.a("Error parsing HEVC config", e);
        }
    }

    private HevcConfig(List<byte[]> list, int i10, int i11, int i12, int i13, int i14, int i15, float f, @Nullable String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i10;
        this.width = i11;
        this.height = i12;
        this.colorSpace = i13;
        this.colorRange = i14;
        this.colorTransfer = i15;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
    }
}

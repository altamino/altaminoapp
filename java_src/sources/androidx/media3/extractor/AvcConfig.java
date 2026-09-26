package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public final class AvcConfig {

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

    public static AvcConfig b(ParsableByteArray parsableByteArray) throws ParserException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        float f;
        String strA;
        try {
            parsableByteArray.V(4);
            int iH = (parsableByteArray.H() & 3) + 1;
            if (iH == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iH2 = parsableByteArray.H() & 31;
            for (int i15 = 0; i15 < iH2; i15++) {
                arrayList.add(a(parsableByteArray));
            }
            int iH3 = parsableByteArray.H();
            for (int i16 = 0; i16 < iH3; i16++) {
                arrayList.add(a(parsableByteArray));
            }
            if (iH2 > 0) {
                NalUnitUtil.SpsData spsDataL = NalUnitUtil.l((byte[]) arrayList.get(0), iH, ((byte[]) arrayList.get(0)).length);
                int i17 = spsDataL.width;
                int i18 = spsDataL.height;
                int i19 = spsDataL.colorSpace;
                int i20 = spsDataL.colorRange;
                int i21 = spsDataL.colorTransfer;
                float f6 = spsDataL.pixelWidthHeightRatio;
                strA = CodecSpecificDataUtil.a(spsDataL.profileIdc, spsDataL.constraintsFlagsAndReservedZero2Bits, spsDataL.levelIdc);
                i13 = i20;
                i14 = i21;
                f = f6;
                i10 = i17;
                i11 = i18;
                i12 = i19;
            } else {
                i10 = -1;
                i11 = -1;
                i12 = -1;
                i13 = -1;
                i14 = -1;
                f = 1.0f;
                strA = null;
            }
            return new AvcConfig(arrayList, iH, i10, i11, i12, i13, i14, f, strA);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw ParserException.a("Error parsing AVC config", e);
        }
    }

    private AvcConfig(List<byte[]> list, int i10, int i11, int i12, int i13, int i14, int i15, float f, @Nullable String str) {
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

    private static byte[] a(ParsableByteArray parsableByteArray) {
        int iN = parsableByteArray.N();
        int iF = parsableByteArray.f();
        parsableByteArray.V(iN);
        return CodecSpecificDataUtil.d(parsableByteArray.e(), iF, iN);
    }
}

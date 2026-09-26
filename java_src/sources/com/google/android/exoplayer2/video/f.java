package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class f {
    private static final int SPS_NAL_UNIT_TYPE = 33;

    @Nullable
    public final String codecs;
    public final int height;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static f a(c0 c0Var) throws v2 {
        try {
            c0Var.Q(21);
            int iD = c0Var.D() & 3;
            int iD2 = c0Var.D();
            int iE = c0Var.e();
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < iD2; i12++) {
                c0Var.Q(1);
                int iJ = c0Var.J();
                for (int i13 = 0; i13 < iJ; i13++) {
                    int iJ2 = c0Var.J();
                    i11 += iJ2 + 4;
                    c0Var.Q(iJ2);
                }
            }
            c0Var.P(iE);
            byte[] bArr = new byte[i11];
            int i14 = -1;
            int i15 = -1;
            float f = 1.0f;
            String strC = null;
            int i16 = 0;
            int i17 = 0;
            while (i16 < iD2) {
                int iD3 = c0Var.D() & 63;
                int iJ3 = c0Var.J();
                int i18 = i10;
                while (i18 < iJ3) {
                    int iJ4 = c0Var.J();
                    byte[] bArr2 = com.google.android.exoplayer2.util.y.NAL_START_CODE;
                    int i19 = iD2;
                    System.arraycopy(bArr2, i10, bArr, i17, bArr2.length);
                    int length = i17 + bArr2.length;
                    System.arraycopy(c0Var.d(), c0Var.e(), bArr, length, iJ4);
                    if (iD3 == 33 && i18 == 0) {
                        com.google.android.exoplayer2.util.y.a aVarH = com.google.android.exoplayer2.util.y.h(bArr, length, length + iJ4);
                        int i20 = aVarH.width;
                        i15 = aVarH.height;
                        f = aVarH.pixelWidthHeightRatio;
                        i14 = i20;
                        strC = com.google.android.exoplayer2.util.e.c(aVarH.generalProfileSpace, aVarH.generalTierFlag, aVarH.generalProfileIdc, aVarH.generalProfileCompatibilityFlags, aVarH.constraintBytes, aVarH.generalLevelIdc);
                    }
                    i17 = length + iJ4;
                    c0Var.Q(iJ4);
                    i18++;
                    iD2 = i19;
                    iD3 = iD3;
                    iJ3 = iJ3;
                    i10 = 0;
                }
                i16++;
                i10 = 0;
            }
            return new f(i11 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iD + 1, i14, i15, f, strC);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw v2.a("Error parsing HEVC config", e);
        }
    }

    private f(List<byte[]> list, int i10, int i11, int i12, float f, @Nullable String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i10;
        this.width = i11;
        this.height = i12;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
    }
}

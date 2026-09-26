package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class a {

    @Nullable
    public final String codecs;
    public final int height;
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public static a b(c0 c0Var) throws v2 {
        int i10;
        int i11;
        float f;
        String strA;
        try {
            c0Var.Q(4);
            int iD = (c0Var.D() & 3) + 1;
            if (iD == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iD2 = c0Var.D() & 31;
            for (int i12 = 0; i12 < iD2; i12++) {
                arrayList.add(a(c0Var));
            }
            int iD3 = c0Var.D();
            for (int i13 = 0; i13 < iD3; i13++) {
                arrayList.add(a(c0Var));
            }
            if (iD2 > 0) {
                com.google.android.exoplayer2.util.y.c cVarL = com.google.android.exoplayer2.util.y.l((byte[]) arrayList.get(0), iD, ((byte[]) arrayList.get(0)).length);
                int i14 = cVarL.width;
                int i15 = cVarL.height;
                float f6 = cVarL.pixelWidthHeightRatio;
                strA = com.google.android.exoplayer2.util.e.a(cVarL.profileIdc, cVarL.constraintsFlagsAndReservedZero2Bits, cVarL.levelIdc);
                i10 = i14;
                i11 = i15;
                f = f6;
            } else {
                i10 = -1;
                i11 = -1;
                f = 1.0f;
                strA = null;
            }
            return new a(arrayList, iD, i10, i11, f, strA);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw v2.a("Error parsing AVC config", e);
        }
    }

    private a(List<byte[]> list, int i10, int i11, int i12, float f, @Nullable String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i10;
        this.width = i11;
        this.height = i12;
        this.pixelWidthHeightRatio = f;
        this.codecs = str;
    }

    private static byte[] a(c0 c0Var) {
        int iJ = c0Var.J();
        int iE = c0Var.e();
        c0Var.Q(iJ);
        return com.google.android.exoplayer2.util.e.d(c0Var.d(), iE, iJ);
    }
}

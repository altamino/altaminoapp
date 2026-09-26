package com.google.android.exoplayer2.util;

import android.util.Pair;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class e {
    private static final int EXTENDED_PAR = 15;
    private static final int RECTANGULAR = 0;
    private static final int VISUAL_OBJECT_LAYER = 1;
    private static final int VISUAL_OBJECT_LAYER_START = 32;
    private static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    private static final String[] HEVC_GENERAL_PROFILE_SPACE_STRINGS = {"", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C"};

    public static String a(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static List<byte[]> b(boolean z6) {
        return Collections.singletonList(z6 ? new byte[]{1} : new byte[]{0});
    }

    public static String c(int i10, boolean z6, int i11, int i12, int[] iArr, int i13) {
        Object[] objArr = new Object[5];
        objArr[0] = HEVC_GENERAL_PROFILE_SPACE_STRINGS[i10];
        objArr[1] = Integer.valueOf(i11);
        objArr[2] = Integer.valueOf(i12);
        objArr[3] = Character.valueOf(z6 ? 'H' : org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_LT);
        objArr[4] = Integer.valueOf(i13);
        StringBuilder sb = new StringBuilder(o0.z("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb.toString();
    }

    public static byte[] d(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i11];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i10, bArr3, bArr2.length, i11);
        return bArr3;
    }

    public static Pair<Integer, Integer> e(byte[] bArr) {
        c0 c0Var = new c0(bArr);
        c0Var.P(9);
        int iD = c0Var.D();
        c0Var.P(20);
        return Pair.create(Integer.valueOf(c0Var.H()), Integer.valueOf(iD));
    }

    public static boolean f(List<byte[]> list) {
        if (list.size() != 1 || list.get(0).length != 1 || list.get(0)[0] != 1) {
            return false;
        }
        return true;
    }
}

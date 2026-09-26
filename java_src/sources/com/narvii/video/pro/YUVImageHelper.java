package com.narvii.video.pro;

/* JADX INFO: loaded from: classes.dex */
public class YUVImageHelper {
    public static byte[] rotateYUV420Degree180(byte[] bArr, int i10, int i11) {
        int i12 = i10 * i11;
        int i13 = (i12 * 3) / 2;
        byte[] bArr2 = new byte[i13];
        int i14 = 0;
        for (int i15 = i12 - 1; i15 >= 0; i15--) {
            bArr2[i14] = bArr[i15];
            i14++;
        }
        for (int i16 = i13 - 1; i16 >= i12; i16 -= 2) {
            int i17 = i14 + 1;
            bArr2[i14] = bArr[i16 - 1];
            i14 += 2;
            bArr2[i17] = bArr[i16];
        }
        return bArr2;
    }

    public static byte[] rotateYUV420Degree270(byte[] bArr, int i10, int i11) {
        int i12;
        int i13 = i10 * i11;
        byte[] bArr2 = new byte[(i13 * 3) / 2];
        if (i10 == 0 && i11 == 0) {
            i13 = 0;
            i12 = 0;
        } else {
            i12 = i11 >> 1;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15++) {
            int i16 = 0;
            for (int i17 = 0; i17 < i11; i17++) {
                bArr2[i14] = bArr[i16 + i15];
                i14++;
                i16 += i10;
            }
        }
        for (int i18 = 0; i18 < i10; i18 += 2) {
            int i19 = i13;
            for (int i20 = 0; i20 < i12; i20++) {
                int i21 = i19 + i18;
                bArr2[i14] = bArr[i21];
                bArr2[i14 + 1] = bArr[i21 + 1];
                i14 += 2;
                i19 += i10;
            }
        }
        return rotateYUV420Degree180(bArr2, i10, i11);
    }

    public static byte[] rotateYUV420Degree90(byte[] bArr, int i10, int i11) {
        int i12 = i10 * i11;
        int i13 = (i12 * 3) / 2;
        byte[] bArr2 = new byte[i13];
        int i14 = 0;
        for (int i15 = 0; i15 < i10; i15++) {
            for (int i16 = i11 - 1; i16 >= 0; i16--) {
                bArr2[i14] = bArr[(i16 * i10) + i15];
                i14++;
            }
        }
        int i17 = i13 - 1;
        for (int i18 = i10 - 1; i18 > 0; i18 -= 2) {
            for (int i19 = 0; i19 < i11 / 2; i19++) {
                int i20 = (i19 * i10) + i12;
                bArr2[i17] = bArr[i20 + i18];
                bArr2[i17 - 1] = bArr[i20 + (i18 - 1)];
                i17 -= 2;
            }
        }
        return bArr2;
    }
}

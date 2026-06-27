package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Og, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0771Og implements InterfaceC0766Ob {
    private static final short[] A01 = {512, 512, 456, 512, 328, 456, 335, 512, 405, 328, 271, 456, 388, 335, 292, 512, 454, 405, 364, 328, 298, 271, 496, 456, 420, 388, 360, 335, 312, 292, 273, 512, 482, 454, 428, 405, 383, 364, 345, 328, 312, 298, 284, 271, 259, 496, 475, 456, 437, 420, 404, 388, 374, 360, 347, 335, 323, 312, 302, 292, 282, 273, 265, 512, 497, 482, 468, 454, 441, 428, 417, 405, 394, 383, 373, 364, 354, 345, 337, 328, 320, 312, 305, 298, 291, 284, 278, 271, 265, 259, 507, 496, 485, 475, 465, 456, 446, 437, 428, 420, 412, 404, 396, 388, 381, 374, 367, 360, 354, 347, 341, 335, 329, 323, 318, 312, 307, 302, 297, 292, 287, 282, 278, 273, 269, 265, 261, 512, 505, 497, 489, 482, 475, 468, 461, 454, 447, 441, 435, 428, 422, 417, 411, 405, 399, 394, 389, 383, 378, 373, 368, 364, 359, 354, 350, 345, 341, 337, 332, 328, 324, 320, 316, 312, 309, 305, 301, 298, 294, 291, 287, 284, 281, 278, 274, 271, 268, 265, 262, 259, 257, 507, 501, 496, 491, 485, 480, 475, 470, 465, 460, 456, 451, 446, 442, 437, 433, 428, 424, 420, 416, 412, 408, 404, 400, 396, 392, 388, 385, 381, 377, 374, 370, 367, 363, 360, 357, 354, 350, 347, 344, 341, 338, 335, 332, 329, 326, 323, 320, 318, 315, 312, 310, 307, 304, 302, 299, 297, 294, 292, 289, 287, 285, 282, 280, 278, 275, 273, 271, 269, 267, 265, 263, 261, 259};
    private static final byte[] A00 = {9, 11, 12, 13, 13, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24};

    /* JADX INFO: Access modifiers changed from: private */
    public static void A00(int[] iArr, int i, int div, int dst_i, int hm, int i2, int maxX) {
        int[] iArr2 = iArr;
        int i3 = 0;
        long j = 0;
        long j2 = 0;
        int i4 = 0;
        long j3 = 0;
        int wm = 0;
        long sum_b = 0;
        long j4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        long j5 = 0;
        long j6 = 0;
        int i8 = 0;
        long j7 = 0;
        long sum_out_r = 0;
        long j8 = 0;
        int x = 0;
        long j9 = 0;
        long j10 = 0;
        int i9 = 0;
        long j11 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        long j12 = 0;
        long j13 = 0;
        long j14 = 0;
        int i14 = 0;
        long j15 = 0;
        int i15 = 0;
        long j16 = 0;
        int i16 = 0;
        int i17 = 0;
        long j17 = 0;
        long j18 = 0;
        long j19 = 0;
        long j20 = 0;
        long j21 = 0;
        long j22 = 0;
        long j23 = 0;
        long j24 = 0;
        long j25 = 0;
        long j26 = 0;
        int i18 = 0;
        int i19 = 0;
        long j27 = 0;
        long j28 = 0;
        long j29 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        long j30 = 0;
        long j31 = 0;
        long j32 = 0;
        long j33 = 0;
        long j34 = 0;
        int i25 = i - 1;
        int i26 = div - 1;
        int i27 = (dst_i * 2) + 1;
        short s = A01[dst_i];
        byte b = A00[dst_i];
        int[] iArr3 = new int[i27];
        byte shr_sum = maxX == 1 ? (byte) 2 : (byte) 24;
        while (true) {
            switch (shr_sum) {
                case 2:
                    int wm2 = i2 * div;
                    wm = wm2 / hm;
                    i8 = ((i2 + 1) * div) / hm;
                    shr_sum = 3;
                    break;
                case 3:
                    if (wm >= i8) {
                        shr_sum = 47;
                        break;
                    } else {
                        shr_sum = 4;
                        break;
                    }
                case 4:
                    j6 = 0;
                    j3 = 0;
                    sum_out_r = 0;
                    j12 = 0;
                    j21 = 0;
                    j13 = 0;
                    j5 = 0;
                    j9 = 0;
                    j11 = 0;
                    i10 = i * wm;
                    x = 0;
                    shr_sum = 5;
                    break;
                case 5:
                    if (x > dst_i) {
                        shr_sum = 7;
                        break;
                    } else {
                        shr_sum = 6;
                        break;
                    }
                case 6:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[x] = iArr2[i10];
                    j11 += ((iArr2[i10] >>> 16) & 255) * (x + 1);
                    j9 += ((iArr2[i10] >>> 8) & 255) * (x + 1);
                    j5 += (iArr2[i10] & 255) * (x + 1);
                    sum_out_r += (iArr2[i10] >>> 16) & 255;
                    j3 += (iArr2[i10] >>> 8) & 255;
                    j6 += iArr2[i10] & 255;
                    x++;
                    shr_sum = 5;
                    break;
                case 7:
                    i12 = 1;
                    shr_sum = 8;
                    break;
                case 8:
                    if (i12 > dst_i) {
                        shr_sum = 12;
                        break;
                    } else {
                        shr_sum = 9;
                        break;
                    }
                case 9:
                    if (i12 > i25) {
                        shr_sum = 11;
                        break;
                    } else {
                        shr_sum = 10;
                        break;
                    }
                case 10:
                    i10++;
                    shr_sum = 11;
                    break;
                case 11:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[i12 + dst_i] = iArr2[i10];
                    j11 += ((iArr2[i10] >>> 16) & 255) * ((dst_i + 1) - i12);
                    j9 += ((iArr2[i10] >>> 8) & 255) * ((dst_i + 1) - i12);
                    j5 += (iArr2[i10] & 255) * ((dst_i + 1) - i12);
                    j13 += (iArr2[i10] >>> 16) & 255;
                    j21 += (iArr2[i10] >>> 8) & 255;
                    j12 += iArr2[i10] & 255;
                    i12++;
                    shr_sum = 8;
                    break;
                case 12:
                    i11 = dst_i;
                    i5 = dst_i;
                    if (i5 <= i25) {
                        shr_sum = 14;
                        break;
                    } else {
                        shr_sum = 13;
                        break;
                    }
                case 13:
                    i5 = i25;
                    shr_sum = 14;
                    break;
                case 14:
                    i4 = i5 + (wm * i);
                    i6 = wm * i;
                    i3 = 0;
                    shr_sum = 15;
                    break;
                case 15:
                    if (i3 >= i) {
                        shr_sum = 23;
                        break;
                    } else {
                        shr_sum = 16;
                        break;
                    }
                case 16:
                    iArr2 = iArr2;
                    iArr2[i6] = (int) ((iArr2[i6] & ViewCompat.MEASURED_STATE_MASK) | ((((s * j11) >>> b) & 255) << 16) | ((((s * j9) >>> b) & 255) << 8) | (((s * j5) >>> b) & 255));
                    i6++;
                    j15 = j11 - sum_out_r;
                    j16 = j9 - j3;
                    j4 = j5 - j6;
                    i14 = (i11 + i27) - dst_i;
                    if (i14 < i27) {
                        shr_sum = 18;
                        break;
                    } else {
                        shr_sum = 17;
                        break;
                    }
                case 17:
                    i14 -= i27;
                    shr_sum = 18;
                    break;
                case 18:
                    iArr3 = iArr3;
                    i16 = i14;
                    j10 = sum_out_r - ((iArr3[i16] >>> 16) & 255);
                    j2 = j3 - ((iArr3[i16] >>> 8) & 255);
                    j17 = j6 - (iArr3[i16] & 255);
                    if (i5 >= i25) {
                        shr_sum = 20;
                        break;
                    } else {
                        shr_sum = 19;
                        break;
                    }
                case 19:
                    i4++;
                    i5++;
                    shr_sum = 20;
                    break;
                case 20:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[i16] = iArr2[i4];
                    j18 = j13 + ((iArr2[i4] >>> 16) & 255);
                    j20 = j21 + ((iArr2[i4] >>> 8) & 255);
                    j8 = j12 + (iArr2[i4] & 255);
                    j11 = j15 + j18;
                    j9 = j16 + j20;
                    j5 = j4 + j8;
                    i11++;
                    if (i11 < i27) {
                        shr_sum = 22;
                        break;
                    } else {
                        shr_sum = 21;
                        break;
                    }
                case 21:
                    i11 = 0;
                    shr_sum = 22;
                    break;
                case 22:
                    iArr3 = iArr3;
                    sum_out_r = j10 + ((iArr3[i11] >>> 16) & 255);
                    j3 = j2 + ((iArr3[i11] >>> 8) & 255);
                    j6 = j17 + (iArr3[i11] & 255);
                    j13 = j18 - ((iArr3[i11] >>> 16) & 255);
                    j21 = j20 - ((iArr3[i11] >>> 8) & 255);
                    j12 = j8 - (iArr3[i11] & 255);
                    i3++;
                    shr_sum = 15;
                    break;
                case 23:
                    wm++;
                    shr_sum = 3;
                    break;
                case 24:
                    if (maxX != 2) {
                        shr_sum = 47;
                        break;
                    } else {
                        shr_sum = 25;
                        break;
                    }
                case 25:
                    i17 = (i2 * i) / hm;
                    i13 = ((i2 + 1) * i) / hm;
                    shr_sum = 26;
                    break;
                case 26:
                    if (i17 >= i13) {
                        shr_sum = 47;
                        break;
                    } else {
                        shr_sum = 27;
                        break;
                    }
                case 27:
                    j19 = 0;
                    j22 = 0;
                    j7 = 0;
                    j27 = 0;
                    j28 = 0;
                    j29 = 0;
                    j23 = 0;
                    j24 = 0;
                    j25 = 0;
                    i18 = i17;
                    i7 = 0;
                    shr_sum = 28;
                    break;
                case 28:
                    if (i7 > dst_i) {
                        shr_sum = 30;
                        break;
                    } else {
                        shr_sum = 29;
                        break;
                    }
                case 29:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[i7] = iArr2[i18];
                    j25 += ((iArr2[i18] >>> 16) & 255) * (i7 + 1);
                    j24 += ((iArr2[i18] >>> 8) & 255) * (i7 + 1);
                    j23 += (iArr2[i18] & 255) * (i7 + 1);
                    j7 += (iArr2[i18] >>> 16) & 255;
                    j22 += (iArr2[i18] >>> 8) & 255;
                    j19 += iArr2[i18] & 255;
                    i7++;
                    shr_sum = 28;
                    break;
                case 30:
                    i19 = 1;
                    shr_sum = 31;
                    break;
                case 31:
                    if (i19 > dst_i) {
                        shr_sum = 35;
                        break;
                    } else {
                        shr_sum = 32;
                        break;
                    }
                case 32:
                    if (i19 > i26) {
                        shr_sum = 34;
                        break;
                    } else {
                        shr_sum = 33;
                        break;
                    }
                case 33:
                    i18 += i;
                    shr_sum = 34;
                    break;
                case 34:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[i19 + dst_i] = iArr2[i18];
                    j25 += ((iArr2[i18] >>> 16) & 255) * ((dst_i + 1) - i19);
                    j24 += ((iArr2[i18] >>> 8) & 255) * ((dst_i + 1) - i19);
                    j23 += (iArr2[i18] & 255) * ((dst_i + 1) - i19);
                    j29 += (iArr2[i18] >>> 16) & 255;
                    j28 += (iArr2[i18] >>> 8) & 255;
                    j27 += iArr2[i18] & 255;
                    i19++;
                    shr_sum = 31;
                    break;
                case 35:
                    i21 = dst_i;
                    i9 = dst_i;
                    if (i9 <= i26) {
                        shr_sum = 37;
                        break;
                    } else {
                        shr_sum = 36;
                        break;
                    }
                case 36:
                    i9 = i26;
                    shr_sum = 37;
                    break;
                case 37:
                    i24 = i17 + (i9 * i);
                    i22 = i17;
                    i20 = 0;
                    shr_sum = 38;
                    break;
                case 38:
                    if (i20 >= div) {
                        shr_sum = 46;
                        break;
                    } else {
                        shr_sum = 39;
                        break;
                    }
                case 39:
                    iArr2 = iArr2;
                    iArr2[i22] = (int) ((iArr2[i22] & ViewCompat.MEASURED_STATE_MASK) | ((((s * j25) >>> b) & 255) << 16) | ((((s * j24) >>> b) & 255) << 8) | (((s * j23) >>> b) & 255));
                    i22 += i;
                    j31 = j25 - j7;
                    j32 = j24 - j22;
                    j33 = j23 - j19;
                    i23 = (i21 + i27) - dst_i;
                    if (i23 < i27) {
                        shr_sum = 41;
                        break;
                    } else {
                        shr_sum = 40;
                        break;
                    }
                case 40:
                    i23 -= i27;
                    shr_sum = 41;
                    break;
                case 41:
                    iArr3 = iArr3;
                    i15 = i23;
                    j34 = j7 - ((iArr3[i15] >>> 16) & 255);
                    j30 = j22 - ((iArr3[i15] >>> 8) & 255);
                    j = j19 - (iArr3[i15] & 255);
                    if (i9 >= i26) {
                        shr_sum = 43;
                        break;
                    } else {
                        shr_sum = 42;
                        break;
                    }
                case 42:
                    i24 += i;
                    i9++;
                    shr_sum = 43;
                    break;
                case 43:
                    iArr2 = iArr2;
                    iArr3 = iArr3;
                    iArr3[i15] = iArr2[i24];
                    j14 = j29 + ((iArr2[i24] >>> 16) & 255);
                    sum_b = j28 + ((iArr2[i24] >>> 8) & 255);
                    j26 = j27 + (iArr2[i24] & 255);
                    j25 = j31 + j14;
                    j24 = j32 + sum_b;
                    j23 = j33 + j26;
                    i21++;
                    if (i21 < i27) {
                        shr_sum = 45;
                        break;
                    } else {
                        shr_sum = 44;
                        break;
                    }
                case 44:
                    i21 = 0;
                    shr_sum = 45;
                    break;
                case 45:
                    iArr3 = iArr3;
                    j7 = j34 + ((iArr3[i21] >>> 16) & 255);
                    j22 = j30 + ((iArr3[i21] >>> 8) & 255);
                    j19 = j + (iArr3[i21] & 255);
                    j29 = j14 - ((iArr3[i21] >>> 16) & 255);
                    j28 = sum_b - ((iArr3[i21] >>> 8) & 255);
                    j27 = j26 - (iArr3[i21] & 255);
                    i20++;
                    shr_sum = 38;
                    break;
                case 46:
                    i17++;
                    shr_sum = 26;
                    break;
                case 47:
                    return;
            }
        }
    }

    public final Bitmap A02(Bitmap bitmap, float f) throws InterruptedException {
        Bitmap bitmap2 = bitmap;
        int w = 0;
        int[] iArr = null;
        ArrayList arrayList = null;
        int i = 0;
        ArrayList arrayList2 = null;
        Bitmap bitmapCreateBitmap = null;
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        int i2 = width * height;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        iArr = new int[i2];
                        c = 4;
                        break;
                    } catch (OutOfMemoryError unused) {
                        bitmapCreateBitmap = null;
                        c = 18;
                        break;
                    }
                case 4:
                    bitmap2 = bitmap2;
                    iArr = iArr;
                    bitmap2.getPixels(iArr, 0, width, 0, 0, width, height);
                    w = C0773Oi.A00;
                    arrayList2 = new ArrayList(w);
                    arrayList = new ArrayList(w);
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    if (i >= w) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iArr = iArr;
                    arrayList2 = arrayList2;
                    arrayList = arrayList;
                    arrayList2.add(new CallableC0770Of(iArr, width, height, (int) f, w, i, 1));
                    arrayList.add(new CallableC0770Of(iArr, width, height, (int) f, w, i, 2));
                    i++;
                    c = 5;
                    break;
                case 7:
                    try {
                        C0773Oi.A01.invokeAll(arrayList2);
                        try {
                            C0773Oi.A01.invokeAll(arrayList);
                            try {
                                bitmapCreateBitmap = Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
                                c = 18;
                                break;
                            } catch (OutOfMemoryError unused2) {
                                bitmapCreateBitmap = null;
                                c = 18;
                                break;
                            }
                        } catch (InterruptedException unused3) {
                            bitmapCreateBitmap = null;
                            c = 18;
                            break;
                        }
                    } catch (InterruptedException unused4) {
                        bitmapCreateBitmap = null;
                        c = 18;
                        break;
                    }
                case 18:
                    return bitmapCreateBitmap;
            }
        }
    }
}

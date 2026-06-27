package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0582Gu implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-27, -14, -24, -10, -13, -19, -24, -78, -20, -27, -10, -24, -5, -27, -10, -23, -78, -9, -23, -14, -9, -13, -10, -78, -27, -15, -26, -19, -23, -14, -8, -29, -8, -23, -15, -12, -23, -10, -27, -8, -7, -10, -23, -48, -62, -53, -48, -52, -49, -68, -60, -42, -49, -52, -22, -9, -19, -5, -8, -14, -19, -73, -15, -22, -5, -19, 0, -22, -5, -18, -73, -4, -18, -9, -4, -8, -5, -73, -4, -3, -18, -7, -20, -8, -2, -9, -3, -18, -5, -67, -54, -64, -50, -53, -59, -64, -118, -60, -67, -50, -64, -45, -67, -50, -63, -118, -49, -63, -54, -49, -53, -50, -118, -60, -59, -62, -59, -69, -49, -63, -54, -49, -53, -50, -49, 14, 0, 9, 14, 10, 13, -6, 14, 15, 0, 11, -6, -2, 10, 16, 9, 15, -87, -74, -84, -70, -73, -79, -84, 118, -80, -87, -70, -84, -65, -87, -70, -83, 118, -69, -83, -74, -69, -73, -70, 118, -86, -87, -70, -73, -75, -83, -68, -83, -70, 33, 19, 28, 33, 29, 32, 13, 22, 23, 20, 23, -54, -68, -59, -54, -58, -55, -74, -72, -70, -70, -68, -61, -68, -55, -58, -60, -68, -53, -68, -55, -34, -21, -31, -17, -20, -26, -31, -85, -27, -34, -17, -31, -12, -34, -17, -30, -85, -16, -30, -21, -16, -20, -17, -85, -28, -10, -17, -20, -16, -32, -20, -19, -30, -88, -75, -85, -71, -74, -80, -85, 117, -81, -88, -71, -85, -66, -88, -71, -84, 117, -70, -84, -75, -70, -74, -71, 117, -86, -74, -76, -73, -88, -70, -70, -72, -86, -77, -72, -76, -73, -92, -72, -71, -86, -75, -92, -87, -86, -71, -86, -88, -71, -76, -73, 6, -8, 1, 6, 2, 5, -14, -11, -12, 5, 2, 0, -8, 7, -8, 5, -1, 12, 2, 16, 13, 7, 2, -52, 6, -1, 16, 2, 21, -1, 16, 3, -52, 17, 3, 12, 17, 13, 16, -52, 17, 18, 3, 14, 2, 3, 18, 3, 1, 18, 13, 16, -7, 6, -4, 10, 7, 1, -4, -58, 0, -7, 10, -4, 15, -7, 10, -3, -58, 11, -3, 6, 11, 7, 10, -58, 0, -3, -7, 10, 12, 10, -7, 12, -3, -85, -92, -95, -92, -91, -83, -92, 21, 7, 16, 21, 17, 20, 1, 5, 17, 15, 18, 3, 21, 21, -27, -14, -24, -10, -13, -19, -24, -78, -20, -27, -10, -24, -5, -27, -10, -23, -78, -9, -23, -14, -9, -13, -10, -78, -12, -10, -13, -4, -19, -15, -19, -8, -3, 10, 23, 13, 27, 24, 18, 13, -41, 17, 10, 27, 13, 32, 10, 27, 14, -41, 28, 14, 23, 28, 24, 27, -41, 10, 12, 12, 14, 21, 14, 27, 24, 22, 14, 29, 14, 27, 4, -10, -1, 4, 0, 3, -16, -7, -10, -14, 3, 5, -15, -29, -20, -15, -19, -16, -35, -18, -16, -19, -10, -25, -21, -25, -14, -9, -43, -57, -48, -43, -47, -44, -63, -61, -49, -60, -53, -57, -48, -42, -63, -42, -57, -49, -46, -57, -44, -61, -42, -41, -44, -57};
    }

    public C0582Gu(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0582Gu c0582Gu = this;
        c0582Gu.A00.A03(A00(186, 20, 34), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(429, 37, 116))));
        c0582Gu.A00.A03(A00(290, 16, 94), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(ScriptIntrinsicBLAS.RIGHT, 33, 19))));
        c0582Gu.A00.A03(A00(43, 11, 40), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(206, 33, 72))));
        c0582Gu.A00.A03(A00(382, 14, 109), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(239, 31, 18))));
        c0582Gu.A00.A03(A00(478, 16, 73), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(396, 33, 79))));
        char c = Build.VERSION.SDK_INT < 19 ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A02(A00(125, 17, 102), A00(375, 7, 1));
                    c0582Gu.A00.A02(A00(270, 20, 16), A00(375, 7, 1));
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 20) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A02(A00(466, 12, 92), A00(375, 7, 1));
                    c = 5;
                    break;
                case 5:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(494, 26, 45), A00(375, 7, 1));
                    c = 7;
                    break;
                case 7:
                    if (Build.VERSION.SDK_INT >= 23) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(175, 11, 121), A00(375, 7, 1));
                    c = '\t';
                    break;
                case '\t':
                    return;
                case '\n':
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(175, 11, 121), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(89, 36, 39))));
                    c = '\t';
                    break;
                case 11:
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(494, 26, 45), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(0, 43, 79))));
                    c = 7;
                    break;
                case '\f':
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(466, 12, 92), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(342, 33, 99))));
                    c = 5;
                    break;
                case '\r':
                    c0582Gu = c0582Gu;
                    c0582Gu.A00.A03(A00(125, 17, 102), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(54, 35, 84))));
                    c0582Gu.A00.A03(A00(270, 20, 16), Boolean.valueOf(c0582Gu.A00.A02.hasSystemFeature(A00(306, 36, 105))));
                    c = 3;
                    break;
            }
        }
    }
}

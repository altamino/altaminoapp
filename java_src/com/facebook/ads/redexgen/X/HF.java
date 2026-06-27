package com.facebook.ads.redexgen.X;

import android.util.DisplayMetrics;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HF implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 125);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{50, 55, 65, 62, 58, 47, 71, 45, 50, 51, 60, 65, 55, 66, 71, 45, 50, 62, 55, -24, -19, -9, -12, -16, -27, -3, -29, -24, -23, -14, -9, -19, -8, -3, 25, 30, 40, 37, 33, 22, 46, 20, 45, 20, 25, 37, 30, -1, 4, 14, 11, 7, -4, 20, -6, 20, -6, -1, 11, 4, 95, 100, 110, 107, 103, 92, 116, 90, 114, 100, 95, 111, 99, 90, 107, 100, 115, 96, 103, 110, -26, -21, -11, -14, -18, -29, -5, -31, -22, -25, -21, -23, -22, -10, -31, -14, -21, -6, -25, -18, -11};
    }

    public HF(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        DisplayMetrics displayMetrics = this.A00.A00.getResources().getDisplayMetrics();
        this.A00.A03(A00(19, 15, 7), Float.valueOf(displayMetrics.density));
        this.A00.A03(A00(0, 19, 81), Integer.valueOf(displayMetrics.densityDpi));
        this.A00.A03(A00(60, 20, 126), Integer.valueOf(displayMetrics.widthPixels));
        this.A00.A03(A00(80, 21, 5), Integer.valueOf(displayMetrics.heightPixels));
        this.A00.A03(A00(34, 13, 56), Float.valueOf(displayMetrics.xdpi));
        this.A00.A03(A00(47, 13, 30), Float.valueOf(displayMetrics.ydpi));
    }
}

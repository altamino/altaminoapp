package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0581Gt implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{28, 26, 38, 30, 43, 26, 24, 43, 30, 26, 43, -13, -15, -3, -11, 2, -15, -17, -10, -4, -15, 3, -8, -22, -9, -19, -5, -8, -14, -19, -73, -15, -22, -5, -19, 0, -22, -5, -18, -73, -20, -22, -10, -18, -5, -22, -1, -3, 9, 1, 14, -3, -5, 2, 14, 11, 10, 16, 58, 71, 61, 75, 72, 66, 61, 7, 65, 58, 75, 61, 80, 58, 75, 62, 7, 60, 58, 70, 62, 75, 58, 7, 63, 69, 58, 76, 65, 17, 30, 20, 34, 31, 25, 20, -34, 24, 17, 34, 20, 39, 17, 34, 21, -34, 19, 17, 29, 21, 34, 17, -34, 22, 34, 31, 30, 36};
    }

    public C0581Gt(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(0, 11, 88), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(23, 23, 40))));
        this.A00.A03(A00(46, 12, 59), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(87, 29, 79))));
        this.A00.A03(A00(11, 12, 47), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(58, 29, 120))));
    }
}

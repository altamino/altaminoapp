package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G6 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GC A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 84);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{54, 53, 32, 32, 49, 38, 45, 11, 36, 49, 38, 55, 49, 58, 32, 53, 51, 49, 125, 116, 103, 116, 125, 119, 96, 96, 125, 96, 26, 10, 8, 5, 12, 35, 56, 61, 56, 57, 33, 56};
    }

    public G6(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G6 g6 = this;
        int intExtra = 0;
        int intExtra2 = 0;
        int scale = g6.A00.A02 ? 2 : 3;
        while (true) {
            switch (scale) {
                case 2:
                    g6 = g6;
                    if (g6.A00.A01 != null) {
                        scale = 5;
                        break;
                    } else {
                        scale = 3;
                        break;
                    }
                case 3:
                    g6 = g6;
                    g6.A00.A02(A00(0, 18, 0), A00(33, 7, 2));
                    scale = 4;
                    break;
                case 4:
                    return;
                case 5:
                    g6 = g6;
                    intExtra = g6.A00.A01.getIntExtra(A00(18, 5, 69), -1);
                    intExtra2 = g6.A00.A01.getIntExtra(A00(28, 5, 61), -1);
                    if (intExtra == -1) {
                        scale = 8;
                        break;
                    } else {
                        scale = 6;
                        break;
                    }
                case 6:
                    if (intExtra2 <= 0) {
                        scale = 8;
                        break;
                    } else {
                        scale = 7;
                        break;
                    }
                case 7:
                    g6 = g6;
                    g6.A00.A03(A00(0, 18, 0), Integer.valueOf((int) ((intExtra / intExtra2) * 100.0f)));
                    scale = 4;
                    break;
                case 8:
                    g6 = g6;
                    g6.A00.A02(A00(0, 18, 0), A00(23, 5, 70));
                    scale = 4;
                    break;
            }
        }
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum B9 {
    A04(A00(0, 4, 102)),
    A03(A00(4, 5, 83)),
    A05(A00(14, 7, 113));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{47, 40, 32, 41, 22, 1, 1, 28, 1, 77, 90, 90, 71, 90, 38, 48, 35, 63, 56, 63, 54, 49, 39, 52, 40, 47, 40, 33, 127, 120, 112, 121};
    }

    static {
        A01();
    }

    B9(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

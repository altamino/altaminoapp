package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum HX {
    A08(A00(56, 8, 3)),
    A05(A00(0, 12, 61)),
    A07(A00(64, 10, 67)),
    A04(A00(43, 13, 11)),
    A06(A00(25, 14, 98)),
    A03(A00(14, 7, 116));

    private static byte[] A01;
    public final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{0, 2, 31, 20, 5, 19, 4, 15, 4, 9, 0, 21, 3, 44, 73, 88, 93, 93, 80, 87, 94, 104, 43, 126, 104, 78, 95, 95, 80, 92, 74, 92, 92, 70, 64, 65, 80, 70, 75, 31, 2, 29, 12, 39, 54, 54, 57, 36, 51, 40, 34, 42, 35, 57, 47, 34, 43, 56, 43, 32, 58, 49, 39, 42, 107, 120, 107, 96, 122, 113, 122, 119, 126, 107, 21, 8};
    }

    static {
        A01();
    }

    HX(String str) {
        this.A00 = str;
    }
}

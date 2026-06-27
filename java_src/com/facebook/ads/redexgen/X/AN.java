package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum AN {
    A08,
    A05,
    A02,
    A06,
    A07,
    A04,
    A03,
    A09;

    private static byte[] A00;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 119);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-43, -58, -44, -43, 13, 2, -5, 12, -1, -2, 25, 10, 12, -1, 0, 13, -34, -38, -52, -39, -22, -14, -11, -7, -2, -21, -40, -21, 5, -6, -21, -7, -6, -50, -45, -36, -49, -51, -34, 41, 27, 40, 44, 31, 25, 27, -50, -63, -62, -56, -63, -65, -48, -59, -53, -54};
    }

    static {
        A01();
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum F9 {
    A06,
    A09,
    A05,
    A0C,
    A02,
    A03,
    A07,
    A0D,
    A0A,
    A08,
    A0B,
    A04;

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
        A00 = new byte[]{8, 21, 21, 18, 11, 7, 20, 8, 13, 19, -25, -22, -23, -30, 29, 24, 30, 12, 17, 29, 30, 28, 19, 24, 17, 57, 75, 73, 74, 69, 67, 85, 69, 56, 64, 59, 57, 74, 6, 12, 15, 1, 20, 1, -13, -4, 1, -3, 0, 13, 26, 26, 23, 26, 57, 54, 64, 65, 59, 64, 70, 81, 51, 68, 68, 51, 75, 12, 0, 15};
    }

    static {
        A01();
    }
}

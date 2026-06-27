package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum M6 {
    A09,
    A07,
    A06,
    A08,
    A05,
    A0B,
    A0A,
    A0C,
    A02,
    A03,
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 12);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{94, 89, 67, 82, 69, 68, 67, 94, 67, 94, 86, 91, 72, 89, 86, 67, 94, 65, 82, 72, 71, 91, 86, 78, 86, 85, 91, 82, 16, 23, 13, 28, 11, 10, 13, 16, 13, 16, 24, 21, 6, 23, 24, 13, 16, 15, 28, 6, 15, 16, 29, 28, 22, 87, 80, 74, 91, 76, 77, 74, 87, 74, 87, 95, 82, 65, 80, 95, 74, 87, 72, 91, 65, 93, 95, 76, 81, 75, 77, 91, 82, 8, 21, 2, 13, 1, 5, 15, 19, 5, 2, 24, 9, 30, 31, 24, 5, 24, 5, 13, 0, 15, 24, 10, 28, 15, 25, 24, 25, 2, 13, 17, 28, 4, 28, 31, 17, 24, 47, 40, 50, 35, 52, 53, 50, 47, 50, 47, 39, 42, 57, 40, 39, 50, 47, 48, 35, 57, 47, 43, 39, 33, 35, 85, 70, 95, 95, 76, 64, 80, 65, 86, 86, 93, 76, 69, 90, 87, 86, 92, 53, 34, 48, 38, 53, 35, 34, 35, 56, 49, 46, 35, 34, 40, 49, 44, 59, 52, 56, 60, 54, 42, 39, 48, 34, 52, 39, 49, 48, 49, 42, 35, 60, 49, 48, 58, 79, 95, 66, 90, 94, 72, 95, 37, 50, 32, 54, 37, 51, 50, 51, 40, 33, 62, 51, 50, 56, 40, 52, 63, 56, 56, 36, 50, 40, 46, 56, 34, 37, 40, 56, 32, 57, 40, 54, 51};
    }

    static {
        A01();
    }
}

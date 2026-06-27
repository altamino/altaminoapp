package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum B7 {
    A03,
    A02,
    A05,
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 16);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{8, 31, 12, 31, 8, 9, 31, 5, 27, 20, 19, 23, 27, 14, 31, 30, 46, 33, 38, 34, 46, 59, 38, 33, 40, 88, 79, 92, 79, 88, 89, 79, 85, 75, 68, 67, 71, 75, 94, 67, 68, 77, 91, 84, 83, 87, 91, 78, 95, 94};
    }

    static {
        A01();
    }
}

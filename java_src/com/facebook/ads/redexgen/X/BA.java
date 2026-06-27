package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum BA {
    A09(A00(19, 12, 100)),
    A04(A00(75, 14, 88)),
    A07(A00(177, 14, 117)),
    A08(A00(89, 19, 45)),
    A03(A00(121, 14, 30)),
    A05(A00(191, 19, 68)),
    A06(A00(62, 13, 95));

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{95, 69, 75, 66, 77, 64, 83, 79, 67, 66, 95, 88, 94, 89, 79, 88, 69, 67, 66, 52, 41, 45, 37, 50, 31, 35, 33, 44, 44, 37, 36, 114, 117, 109, 122, 119, 114, 127, 100, 121, 127, 100, 105, 126, 104, 107, 116, 117, 104, 126, 62, 35, 39, 47, 56, 53, 41, 43, 38, 38, 47, 46, 9, 14, 21, 15, 18, 22, 30, 36, 30, 9, 9, 20, 9, 25, 10, 25, 18, 8, 35, 19, 31, 31, 9, 14, 14, 25, 24, 122, 96, 110, 103, 104, 101, 86, 106, 102, 103, 122, 125, 123, 124, 106, 125, 96, 102, 103, 50, 53, 46, 52, 41, 45, 37, 63, 37, 50, 50, 47, 50, 89, 85, 84, 92, 83, 93, 101, 74, 91, 72, 73, 83, 84, 93, 17, 7, 17, 17, 11, 13, 12, 29, 14, 13, 5, 5, 7, 6, 12, 31, 12, 7, 29, 22, 6, 10, 10, 28, 27, 27, 12, 13, 9, 5, 4, 12, 3, 13, 21, 26, 11, 24, 25, 3, 4, 13, 34, 52, 34, 34, 56, 62, 63, 14, 61, 62, 54, 54, 52, 53, 9, 14, 22, 1, 12, 9, 4, 63, 2, 4, 63, 18, 5, 19, 16, 15, 14, 19, 5};
    }

    static {
        A01();
    }

    BA(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

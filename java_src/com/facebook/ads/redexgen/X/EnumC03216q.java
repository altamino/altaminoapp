package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.6q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC03216q {
    A04,
    A08,
    A07,
    A0A,
    A05,
    A02,
    A06,
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 43);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{60, 49, 57, 48, 7, 22, 2, 4, 18, 19, 100, 99, 118, 101, 99, 114, 115, 90, 77, 94, 94, 93, 74, 81, 86, 95, 127, 104, 104, 117, 104, 13, 15, 24, 13, 28, 15, 24, 25, 12, 16, 29, 5, 30, 29, 31, 23, 3, 31, 19, 17, 12, 16, 25, 8, 25, 24, 32, 34, 53, 32, 49, 34, 57, 62, 55, 115, 107, 105, 112, 112, 101, 100};
    }

    static {
        A01();
    }
}

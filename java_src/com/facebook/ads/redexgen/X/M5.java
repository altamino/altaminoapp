package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum M5 {
    A06(0),
    A08(1),
    A09(2),
    A03(3),
    A05(4),
    A07(5),
    A04(6),
    A0A(7),
    A0B(10);

    private static byte[] A01;
    public final int A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{63, 39, 37, 60, 14, 19, 23, 31, 70, 89, 85, 71, 81, 82, 92, 85, 79, 89, 93, 64, 66, 85, 67, 67, 89, 95, 94, 5, 29, 28, 13, 3, 28, 13, 83, 79, 66, 90, 24, 9, 29, 27, 13, 60, 39, 36, 60, 61, 44, 86, 65, 87, 81, 73, 65};
    }

    static {
        A01();
    }

    M5(int i) {
        this.A00 = i;
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum SO {
    A05(0),
    A04(1),
    A03(2);

    private static byte[] A01;
    private int A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 125);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{36, 59, 38, 32, 38, 53, 61, 32, 81, 74, 87, 84, 65, 71, 77, 66, 77, 65, 64, 37, 40, 39, 45, 58, 42, 40, 57, 44};
    }

    static {
        A02();
    }

    SO(int i) {
        this.A00 = i;
    }

    public static SO A00(int i) {
        SO so = null;
        SO[] soArrValues = values();
        int length = soArrValues.length;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    soArrValues = soArrValues;
                    so = soArrValues[i2];
                    if (so.A00 != i) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return so;
                case 5:
                    i2++;
                    c = 2;
                    break;
                case 6:
                    so = A04;
                    c = 4;
                    break;
            }
        }
    }

    public final int A03() {
        return this.A00;
    }
}

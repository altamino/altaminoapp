package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3C, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum C3C {
    A05(A01(0, 16, 59)),
    A04(A01(29, 14, 12)),
    A03(A01(16, 13, 97));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{92, 78, 73, 93, 66, 78, 92, 84, 91, 89, 78, 72, 74, 72, 67, 78, 23, 24, 29, 20, 14, 1, 3, 20, 18, 16, 18, 25, 20, 108, 110, 115, 100, 101, 99, 108, 110, 121, 127, 125, 127, 116, 121};
    }

    static {
        A02();
    }

    C3C(String str) {
        this.A00 = str;
    }

    public static C3C A00(String str) {
        C3C c3c = null;
        C3C[] c3cArrValues = values();
        int length = c3cArrValues.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    c3cArrValues = c3cArrValues;
                    c3c = c3cArrValues[i];
                    if (!c3c.A00.equalsIgnoreCase(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return c3c;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    c3c = A03;
                    c = 4;
                    break;
            }
        }
    }
}

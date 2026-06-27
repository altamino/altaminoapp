package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum F6 {
    A06(0),
    A04(1),
    A05(2),
    A03(3);

    private static byte[] A01;
    private int A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{8, 9, 14, 25, 13, 15, 10, 10, 9, 12, 14, -1, -2, -84, -83, -67, -82, -93, -80, -85, -89, -79, -79, -89, -83, -84, -29, -22, -31, -31, -85, -92, -95, -92, -91, -83, -92};
    }

    static {
        A01();
    }

    F6(int i) {
        this.A00 = i;
    }

    public final int A02() {
        return this.A00;
    }
}

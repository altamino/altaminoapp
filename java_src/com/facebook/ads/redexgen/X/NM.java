package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum NM {
    A04(0),
    A0C(1),
    A07(2),
    A0A(3),
    A08(4),
    A0B(5),
    A03(6),
    A09(7),
    A05(8),
    A06(9);

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-80, -73, -82, -82, -63, -91, -79, -80, -74, -89, -70, -74, -90, -83, -92, -92, -73, -103, -101, -84, -95, -82, -95, -84, -95, -99, -85, -73, -86, -99, -98, -92, -99, -101, -84, -95, -89, -90, -52, -63, -43, -50, -61, -56, -59, -46, -33, -58, -49, -43, -50, -60, -33, -63, -48, -55, -78, -79, -66, -65, -49, -68, -79, -59, -66, -77, -72, -75, -62, -49, -74, -65, -59, -66, -76, -49, -62, -75, -74, -68, -75, -77, -60, -71, -65, -66, -63, -62, -46, -65, -76, -56, -63, -74, -69, -72, -59, -46, -71, -62, -56, -63, -73, -46, -76, -61, -68, -91, -92, 127, 116, -120, -127, 118, 123, 120, -123, -110, 121, -126, -120, -127, 119, -110, -123, 120, 121, 127, 120, 118, -121, 124, -126, -127, -29, -31, -22, -31, -18, -27, -33, -5, -31, -18, -18, -21, -18, -95, -94, -78, -91, -88, -95, -95, -100, -95, -102, -78, -89, -108, -90, -98, -90, -5, -4, 12, -18, -16, 1, -10, 3, -10, 1, 6, 12, 0, -14, -1, 3, -10, -16, -14, -51, -43, -40, -36, -31, -25, -55, -53, -36, -47, -34, -47, -36, -47, -51, -37, -25, -38, -51, -50, -44, -51, -53, -36, -47, -41, -42};
    }

    static {
        A01();
    }

    NM(int i) {
        this.A00 = i;
    }
}

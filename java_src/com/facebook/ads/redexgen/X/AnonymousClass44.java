package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.44, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum AnonymousClass44 {
    A02,
    A06,
    A05,
    A07,
    A08,
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-10, -7, -21, -18, -13, -8, -15, 8, -3, 4, 12, -2, 3, -4, -29, -16, -16, -19, -16, -77, -76, -62, -61, -63, -66, -56, -76, -77, -95, -106, -99, -91, -100, -71, -68, -82, -79, -78, -79, -104, -89, -102, -106, -87, -102, -103};
    }

    static {
        A01();
    }
}

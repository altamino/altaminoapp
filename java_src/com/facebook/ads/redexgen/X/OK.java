package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum OK {
    A08(0),
    A07(0),
    A06(1),
    A03(2),
    A04(3),
    A05(4);

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 18);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-67, -66, -67, -76, 102, 104, 91, 98, 101, 94, 120, 77, 96, -104, -102, -115, -108, -105, -112, -86, 125, -110, 112, 114, 101, 108, 111, 104, -126, 86, 106, -99, -106, -109, -106, -105, -97, -106, -67, -65, -78, -71, -68, -75, -49, -71, -66, -60, -75, -62, -66, -75, -60};
    }

    static {
        A01();
    }

    OK(int i) {
        this.A00 = i;
    }
}

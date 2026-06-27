package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum FG {
    A05(A00(6, 7, 87)),
    A04(A00(13, 5, 19)),
    A03(A00(22, 3, 71));

    private static byte[] A01;
    private String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{52, 47, 38, 85, 82, 81, 5, 30, 23, 123, 100, 99, 96, 65, 90, 83, 63, 35, 113, 106, 99, 19, 11, 2, 115};
    }

    static {
        A01();
    }

    FG(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

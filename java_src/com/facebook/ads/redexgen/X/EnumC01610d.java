package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0d, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC01610d {
    A04(A00(0, 7, 115)),
    A03(A00(24, 10, 91));

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-16, -14, -17, -10, -23, -28, -27, -46, -45, -29, -57, -52, -59, -46, -53, -55, -41, 111, 113, 110, 117, 104, 99, 100, -42, -41, -107, -53, -48, -55, -42, -49, -51, -37};
    }

    static {
        A01();
    }

    EnumC01610d(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0B, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum C0B {
    A03(A00(10, 4, 18)),
    A04(A00(14, 6, 26));

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 3);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-126, -123, -120, -120, -53, -58, -70, -73, -54, -69, 123, 126, -127, -127, -110, -115, -127, 126, -111, -126};
    }

    static {
        A01();
    }

    C0B(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

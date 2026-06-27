package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0f, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC01630f {
    A03,
    A04,
    A02,
    A06,
    A05;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-26, -15, -18, -12, -17, -2, -24, -29, -95, -93, -112, -111, -102, -113, -95, -95, -109, -95, -38, -53, -39, -38, -39, -116, -119, -126, -110, -127, -110, -103, -97, -121, -110, -113, -107, -112, -81, -84, -91, -75, -92, -75, -68};
    }

    static {
        A01();
    }
}

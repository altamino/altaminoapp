package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum C1R {
    A02,
    A03;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 114);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{3, 1, 14, 14, 15, 20, 31, 20, 18, 1, 3, 11, -18, -20, -7, -7, -6, -1, 10, -6, -5, -16, -7};
    }

    static {
        A01();
    }

    public static boolean A02(@Nullable C1R c1r) {
        boolean z = false;
        char c = !A02.equals(c1r) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c1r = c1r;
                    if (!A03.equals(c1r)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}

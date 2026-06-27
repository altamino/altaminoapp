package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1U, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum C1U {
    A03,
    A02,
    A04;

    private static byte[] A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 45);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-13, -12, -13, -22, -124, -119, -114, -113, 124, -121, -121, -128, 127, -56, -55, -50, -39, -61, -56, -51, -50, -69, -58, -58, -65, -66};
    }

    static {
        A02();
    }

    public static C1U A00(String str) {
        C1U c1uValueOf = null;
        char c = TextUtils.isEmpty(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c1uValueOf = A03;
                    c = 3;
                    break;
                case 3:
                    return c1uValueOf;
                case 4:
                    try {
                        c1uValueOf = valueOf(str.toUpperCase(Locale.US));
                        c = 3;
                        break;
                    } catch (IllegalArgumentException unused) {
                        c1uValueOf = A03;
                        c = 3;
                        break;
                    }
            }
        }
    }
}

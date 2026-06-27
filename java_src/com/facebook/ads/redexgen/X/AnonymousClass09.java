package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.09, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum AnonymousClass09 {
    A03(A01(0, 4, 55)),
    A04(A01(39, 4, 21));

    private static byte[] A01;
    private String A00;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{-20, -5, -14, -14, -99, -105, -105, -94, -38, -1, 7, -14, -3, -6, -11, -79, 4, -10, 3, 7, -10, 3, -79, 3, -10, 4, 1, 0, -1, 4, -10, -53, -79, -74, 4, -75, -60, -69, -69, -49, -55, -55, -44};
    }

    static {
        A02();
    }

    AnonymousClass09(String str) {
        this.A00 = str;
    }

    public static AnonymousClass09 A00(String str) {
        AnonymousClass09 anonymousClass09 = null;
        int i = 0;
        AnonymousClass09[] anonymousClass09ArrValues = values();
        int length = anonymousClass09ArrValues.length;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    str = str;
                    anonymousClass09ArrValues = anonymousClass09ArrValues;
                    anonymousClass09 = anonymousClass09ArrValues[i];
                    if (!anonymousClass09.A00.equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return anonymousClass09;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    throw new IllegalArgumentException(String.format(Locale.US, A01(8, 27, 66), str));
            }
        }
    }
}

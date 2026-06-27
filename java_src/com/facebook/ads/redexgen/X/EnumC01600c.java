package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0c, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC01600c {
    A03(A01(0, 3, 115)),
    A04(A01(30, 7, 120));

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{61, 63, 55, 102, 65, 89, 78, 67, 70, 75, 15, 92, 74, 93, 89, 74, 93, 15, 93, 74, 92, 95, 64, 65, 92, 74, 21, 15, 10, 92, 34, 57, 60, 57, 56, 32, 57, 83, 81, 89, 9, 18, 23, 18, 19, 11, 18};
    }

    static {
        A02();
    }

    EnumC01600c(String str) {
        this.A00 = str;
    }

    public static EnumC01600c A00(String str) {
        EnumC01600c enumC01600c = null;
        int i = 0;
        EnumC01600c[] enumC01600cArrValues = values();
        int length = enumC01600cArrValues.length;
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
                    enumC01600cArrValues = enumC01600cArrValues;
                    enumC01600c = enumC01600cArrValues[i];
                    if (!enumC01600c.A00.equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC01600c;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    throw new IllegalArgumentException(String.format(Locale.US, A01(3, 27, 0), str));
            }
        }
    }
}

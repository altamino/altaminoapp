package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum AL {
    A03(A01(27, 5, 54)),
    A05(A01(16, 5, 86)),
    A04(A01(5, 6, 86));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{108, 115, 126, 127, 117, 74, 70, 85, 76, 82, 87, 124, 120, 116, 114, 112, 81, 78, 67, 66, 72, 22, 26, 9, 16, 14, 11, 46, 42, 38, 32, 34};
    }

    static {
        A02();
    }

    AL(String str) {
        this.A00 = str;
    }

    @Nullable
    public static AL A00(@Nullable String str) {
        AL al = null;
        AL[] alArrValues = values();
        int length = alArrValues.length;
        int i = 0;
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
                    alArrValues = alArrValues;
                    al = alArrValues[i];
                    if (!al.A00.equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return al;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    al = null;
                    c = 4;
                    break;
            }
        }
    }
}

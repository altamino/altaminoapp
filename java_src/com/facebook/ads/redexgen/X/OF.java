package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.StringTokenizer;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OF {
    private static byte[] A00;

    static {
        A02();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{108, 100, 100, 100};
    }

    private OF() {
    }

    public static String A01(String str) {
        StringTokenizer stringTokenizer = null;
        int length = 0;
        int i = 0;
        String str2 = str;
        int maxLength = str != null ? 2 : 10;
        while (true) {
            switch (maxLength) {
                case 2:
                    str = str;
                    stringTokenizer = new StringTokenizer(str, A00(0, 1, 57), true);
                    i = 0;
                    int maxLength2 = str.length();
                    if (maxLength2 <= 90) {
                        maxLength = 10;
                        break;
                    } else {
                        maxLength = 3;
                        break;
                    }
                case 3:
                    str = str;
                    if (str.length() > 93) {
                        maxLength = 5;
                        break;
                    } else {
                        maxLength = 4;
                        break;
                    }
                case 4:
                    str = str;
                    if (!str.endsWith(A00(1, 3, 35))) {
                        maxLength = 5;
                        break;
                    } else {
                        maxLength = 10;
                        break;
                    }
                case 5:
                    stringTokenizer = stringTokenizer;
                    if (!stringTokenizer.hasMoreTokens()) {
                        maxLength = 8;
                        break;
                    } else {
                        maxLength = 6;
                        break;
                    }
                case 6:
                    stringTokenizer = stringTokenizer;
                    length = stringTokenizer.nextToken().length();
                    int maxLength3 = i + length;
                    if (maxLength3 >= 90) {
                        maxLength = 5;
                        break;
                    } else {
                        maxLength = 7;
                        break;
                    }
                case 7:
                    i += length;
                    maxLength = 5;
                    break;
                case 8:
                    if (i != 0) {
                        maxLength = 11;
                        break;
                    } else {
                        maxLength = 9;
                        break;
                    }
                case 9:
                    str = str;
                    str2 = str.substring(0, 90) + A00(1, 3, 35);
                    maxLength = 10;
                    break;
                case 10:
                    return str2;
                case 11:
                    str = str;
                    str2 = str.substring(0, i) + A00(1, 3, 35);
                    maxLength = 10;
                    break;
            }
        }
    }
}

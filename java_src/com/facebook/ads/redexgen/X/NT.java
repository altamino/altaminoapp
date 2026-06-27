package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NT {
    private static boolean A00;
    private static boolean A01;
    private static byte[] A02;
    private static final Map<String, String> A03;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{116, 112, 60, 119, 32, 119, 60, 69, 65, 13, 81, 86, 77, 77, 74, 77, 68, 124, 70, 17, 70, 64, 70, 65, 81};
    }

    static {
        A03();
        A01 = false;
        A00 = false;
        A03 = Collections.synchronizedMap(new HashMap());
    }

    private NT() {
    }

    @Nullable
    public static synchronized String A01(String str) {
        String property;
        if (A04()) {
            property = System.getProperty(A00(0, 7, 47) + str);
        } else {
            property = null;
        }
        return property;
    }

    public static Map<String, String> A02() {
        Map<String, String> mapEmptyMap = null;
        char c = !A04() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    mapEmptyMap = Collections.emptyMap();
                    c = 3;
                    break;
                case 3:
                    return mapEmptyMap;
                case 4:
                    mapEmptyMap = A03;
                    c = 3;
                    break;
            }
        }
    }

    public static synchronized boolean A04() {
        if (!A00) {
            A01 = A00(21, 4, 9).equals(System.getProperty(A00(7, 14, 30)));
            A00 = true;
        }
        return A01;
    }

    public static synchronized boolean A05(String str) {
        return !TextUtils.isEmpty(A01(str));
    }
}

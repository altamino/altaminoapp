package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ka, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0665Ka {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{42, 58, 43, 60, 60, 55, 6, 46, 48, 61, 45, 49, 72, 75, 71, 69, 72, 65, 55, 33, 55, 55, 45, 43, 42, 27, 45, 32, 29, 6, 30, 6, 24, 101, 121, 85, 124, 111, 120, 109, 124, 124, 83, 98, 109, 97, 105, 100, 120, 1, 16, 3, 5, 31, 20, 3, 46, 20, 31, 21, 1, 30, 24, 31, 5, 33, 54, 57, 13, 36, 55, 32, 33, 59, 61, 60, 15, 31, 14, 25, 25, 18, 35, 20, 25, 21, 27, 20, 8, 86, 121, 115, 101, 120, 126, 115, 114, 115, 96, 127, 117, 115, 73, 123, 121, 114, 115, 122, 74, 86, 91, 67, 91, 88, 86, 95, 101, 84, 91, 87, 95};
    }

    private C0665Ka() {
    }

    public static Map<String, String> A01(Context context, String str, String str2, String str3) {
        HashMap map = new HashMap();
        JF jf = new JF(context);
        int i = context.getResources().getDisplayMetrics().widthPixels;
        int i2 = context.getResources().getDisplayMetrics().heightPixels;
        map.put(A00(18, 10, 106), str);
        map.put(A00(108, 13, 20), str2);
        map.put(A00(49, 16, 95), str3);
        map.put(A00(96, 12, 56), String.valueOf(jf.A08()));
        map.put(A00(0, 12, 119), String.valueOf((int) (i / OY.A01)));
        map.put(A00(76, 13, 82), String.valueOf((int) (i2 / OY.A01)));
        map.put(A00(47, 2, 37), A00(89, 7, 57));
        map.put(A00(33, 6, 36), JF.A02);
        map.put(A00(12, 6, 10), Locale.getDefault().toString());
        map.put(A00(65, 11, 124), A00(28, 5, 6));
        map.put(A00(39, 8, 34), jf.A04());
        return map;
    }
}

package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0647Jh {
    private static HashMap<String, String> A00;
    private static byte[] A01;

    static {
        A03();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{74, 86, 33, 48, 48, 46, 33, 45, 37, 32, 55, 44, 38, 46, 39, 92, 77, 77, 95, 72, 84, 81, 89, 73, 94, 81, 89, 91, 80, 81, 88, 14, 25, 22, 2, 11, 24, 15, 14, 20, 18, 19, 7, 8, 2, 20, 9, 15, 2, 118, 103, 103, 97, 114, 101, 100, 48, 31, 21, 3, 30, 24, 21, 26, 12, 26, 26, 0, 6, 7, 22, 0, 13, 86, 74, 79, 92, 75, 74};
    }

    private C0647Jh() {
    }

    public static synchronized Map<String, String> A01(Context context) {
        HashMap map;
        if (A00 != null) {
            map = new HashMap(A00);
        } else {
            O2.A04();
            A00 = new HashMap<>();
            A00.put(A00(9, 6, 97), context.getPackageName());
            A02(context, A00);
            map = new HashMap(A00);
        }
        return map;
    }

    public static synchronized Map<String, String> A02(Context context, Map<String, String> map) {
        map.put(A00(23, 3, 25), A00(42, 7, 101));
        map.put(A00(31, 11, 94), BuildConfigApi.getVersionName(context));
        map.put(A00(0, 2, 6), A00(56, 7, 114));
        map.put(A00(73, 6, 26), JF.A02);
        JF jf = new JF(context);
        map.put(A00(49, 7, 52), jf.A05());
        map.put(A00(2, 7, 99), jf.A04());
        map.put(A00(15, 8, 30), String.valueOf(jf.A03()));
        map.put(A00(26, 5, 23), jf.A09());
        map.put(A00(63, 10, 74), O2.A02());
        return map;
    }
}

package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IC {
    private static byte[] A00;
    private static final Map<String, C0605Hr> A01;
    private static final Set<String> A02;
    private static final Set<String> A03;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 45);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{123, 119, 100, 125, 99, 102, 47, 48, 61, 60, 54, 102, 125, 120, 125, 124, 100, 125, 98, 97, 111, 106};
    }

    static {
        A02();
        A01 = Collections.synchronizedMap(new HashMap());
        A02 = Collections.newSetFromMap(Collections.synchronizedMap(new HashMap()));
        A03 = Collections.newSetFromMap(Collections.synchronizedMap(new HashMap()));
    }

    private IC() {
    }

    public static I9 A00(String str, String str2) {
        String strA01 = null;
        C0605Hr c0605Hr = A01.get(str);
        char c = c0605Hr == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    c0605Hr = new C0605Hr(str, A01(11, 7, 62), A01(11, 7, 62));
                    c = 3;
                    break;
                case 3:
                    c0605Hr = c0605Hr;
                    if (!c0605Hr.A03) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strA01 = A01(0, 6, 59);
                    c = 5;
                    break;
                case 5:
                    C0605Hr c0605Hr2 = c0605Hr;
                    I9 i9 = new I9(c0605Hr2.A04, c0605Hr2.A05, strA01, str2, c0605Hr2.A06);
                    i9.A00 = c0605Hr2.A00;
                    return i9;
                case 6:
                    strA01 = A01(6, 5, 116);
                    c = 5;
                    break;
            }
        }
    }

    public static synchronized void A03(C0605Hr c0605Hr, @Nullable Integer num) {
        if (IA.A09()) {
            c0605Hr.A00 = num;
            A01.put(c0605Hr.A06, c0605Hr);
            A03.add(c0605Hr.A06);
            A02.remove(c0605Hr.A06);
        }
    }

    public static boolean A04(I9 i9) {
        boolean z = true;
        char c = A01(18, 4, 35).equals(i9.A02) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    i9 = i9;
                    if (!A02.contains(i9.A05)) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    i9 = i9;
                    A02.add(i9.A05);
                    c = 2;
                    break;
                case 5:
                    z = false;
                    c = 2;
                    break;
            }
        }
    }

    public static boolean A05(String str) {
        return A03.remove(str);
    }
}

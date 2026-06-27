package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IW {
    private static byte[] A03;
    private final String A00;
    private final String A01;
    private final Map<String, String> A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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

    private static void A01() {
        A03 = new byte[]{125, -45, -44, -63, -61, -53, -44, -46, -63, -61, -59, 117, -58, -60, -40, -54, -53, -41, -62, -56, -37, -58, -56, -45, -41, -52, -46, -47};
    }

    public IW(String str, Map<String, String> map) {
        this(str, map, false);
    }

    public IW(String str, Map<String, String> map, boolean z) {
        this.A01 = str;
        this.A02 = map;
        this.A00 = z ? A00(11, 1, 49) : A00(0, 1, 58);
    }

    public final Map<String, String> A02() {
        HashMap map = new HashMap();
        map.put(A00(1, 10, 77), this.A01);
        map.put(A00(12, 16, 80), this.A00);
        map.putAll(this.A02);
        return map;
    }
}

package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KX {
    private static byte[] A02;
    private final KM A00;
    private final String A01;

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{7, 1, 22, 0, 13, 4, 17};
    }

    public KX(String str, KM km) {
        this.A01 = str;
        this.A00 = km;
    }

    public final void A02(KW kw, @Nullable Map<String, String> map) {
        A03(kw.A02(), map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.HashMap] */
    public final void A03(String str, @Nullable Map<String, String> map) {
        KX kx = this;
        char c = !KZ.A0B(kx.A01, str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    map = (Map) map;
                    if (map != 0) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    map = new HashMap<>();
                    c = 5;
                    break;
                case 5:
                    kx = kx;
                    str = str;
                    map = (Object) map;
                    map.put(A00(0, 7, 51), str);
                    kx.A00.A4F(kx.A01, map);
                    c = 2;
                    break;
            }
        }
    }
}

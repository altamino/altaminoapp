package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class UB {
    private static byte[] A03;
    private final int A00;
    private final int A01;
    private final AnonymousClass32 A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{39, 37, 54, 40, 45, 50, 40, -65, -67, -50, -64, -65, -54, -48};
    }

    public UB(int i, int i2, AnonymousClass32 anonymousClass32) {
        this.A01 = i;
        this.A00 = i2;
        this.A02 = anonymousClass32;
    }

    public final int A02() {
        return this.A01;
    }

    public final AnonymousClass32 A03() {
        return this.A02;
    }

    public final Map<String, String> A04() {
        HashMap map = new HashMap();
        map.put(A00(0, 7, 112), this.A01 + A00(7, 0, 24));
        map.put(A00(7, 7, 8), this.A00 + A00(7, 0, 24));
        return map;
    }
}

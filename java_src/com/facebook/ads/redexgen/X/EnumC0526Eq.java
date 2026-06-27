package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Eq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0526Eq {
    A04(0),
    A05(100);

    private static byte[] A01;
    private static final Map<Integer, EnumC0526Eq> A02;
    private int A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 90);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{80, 81, 82, 85, 65, 88, 64, 22, 23, 25, 22};
    }

    static {
        A02();
        A02 = new HashMap();
        for (EnumC0526Eq enumC0526Eq : values()) {
            A02.put(Integer.valueOf(enumC0526Eq.A00), enumC0526Eq);
        }
    }

    EnumC0526Eq(int i) {
        this.A00 = i;
    }

    public static EnumC0526Eq A00(int i) {
        EnumC0526Eq enumC0526Eq = A02.get(Integer.valueOf(i));
        return enumC0526Eq == null ? A04 : enumC0526Eq;
    }
}

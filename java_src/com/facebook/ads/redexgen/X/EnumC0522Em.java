package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Em, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0522Em {
    A05(0),
    A07(1024),
    A06(2048),
    A04(4096);

    private static byte[] A01;
    private static final Map<Integer, EnumC0522Em> A02;
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{59, 42, 57, 42, 37, 36, 34, 47, 73, 79, 73, 74, 83, 89, 83, 85, 79, 73, 126, 121, 114, 117, 123, 114, 99, 117, 123, 114, 115, 110, 121, 111, 104, 99, 100, 106, 99, 114, 110, 98, 97, 97, 104, 110, 121};
    }

    static {
        A02();
        A02 = new HashMap();
        for (EnumC0522Em enumC0522Em : values()) {
            A02.put(Integer.valueOf(enumC0522Em.A00), enumC0522Em);
        }
    }

    EnumC0522Em(int i) {
        this.A00 = i;
    }

    public static EnumC0522Em A00(int i) {
        EnumC0522Em enumC0522Em = A02.get(Integer.valueOf(i));
        return enumC0522Em == null ? A05 : enumC0522Em;
    }

    public final int A03() {
        return this.A00;
    }
}

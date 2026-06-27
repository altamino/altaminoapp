package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.0k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC01660k {
    A07(A00(147, 13, 123), EnumC01640i.A02, true),
    A06(A00(130, 17, 14), EnumC01640i.A03, true),
    A05(A00(59, 14, 18), EnumC01640i.A03, false),
    A08(A00(0, 23, 82), EnumC01640i.A03, false),
    A09(A00(23, 13, 34), EnumC01640i.A03, true);

    private static byte[] A03;
    private EnumC01640i A00;
    private String A01;
    private boolean A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{49, 51, 36, 39, 36, 53, 34, 41, 36, 37, 108, 32, 37, 108, 51, 36, 50, 49, 46, 47, 50, 36, 50, 65, 67, 84, 87, 84, 69, 82, 89, 110, 68, 67, 93, 66, 97, 99, 116, 119, 116, 101, 114, 121, 116, 117, 110, 112, 117, 110, 99, 116, 98, 97, 126, 127, 98, 116, 98, 103, 100, 96, 117, 116, 115, 100, 44, 98, 110, 111, 103, 104, 102, 31, 3, 14, 12, 10, 2, 10, 1, 27, 16, 9, 0, 29, 2, 14, 27, 28, 9, 10, 14, 27, 26, 29, 10, 16, 12, 0, 1, 9, 6, 8, 32, 60, 49, 51, 53, 61, 53, 62, 36, 47, 57, 52, 35, 32, 34, 53, 54, 53, 36, 51, 56, 47, 37, 34, 60, 35, 109, 113, 124, 126, 120, 112, 120, 115, 105, 48, 123, 114, 111, 112, 124, 105, 110, 24, 4, 9, 11, 13, 5, 13, 6, 28, 69, 1, 12, 27};
    }

    static {
        A01();
    }

    EnumC01660k(String str, EnumC01640i enumC01640i, boolean z) {
        this.A01 = str;
        this.A00 = enumC01640i;
        this.A02 = z;
    }

    public final EnumC01640i A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A01;
    }

    public final boolean A04() {
        return this.A02;
    }
}

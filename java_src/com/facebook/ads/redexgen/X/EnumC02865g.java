package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5g, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC02865g {
    A0K(0),
    A0I(1),
    A07(2),
    A0G(3),
    A0H(4),
    A06(5),
    A0F(6),
    A0A(7),
    A08(8),
    A0C(9),
    A0D(10),
    A0B(11),
    A0J(12),
    A03(13),
    A0E(14),
    A09(15),
    A04(16),
    A05(17);

    private static byte[] A01;
    private final int A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{6, 1, 25, 14, 3, 6, 11, 16, 11, 6, 2, 10, 1, 28, 6, 0, 1, 28, 106, 111, 116, 98, 120, 116, 127, 121, 106, 101, 120, 123, 106, 121, 110, 101, 127, 52, 49, 42, 58, 51, 51, 38, 54, 39, 48, 48, 59, 42, 33, 58, 37, 70, 67, 88, 78, 73, 88, 75, 72, 68, 76, 84, 68, 85, 66, 66, 73, 38, 33, 57, 46, 35, 38, 43, 48, 56, 38, 33, 43, 32, 56, 106, 111, 116, 98, 120, 116, 101, 126, 103, 103, 62, 59, 32, 48, 57, 57, 44, 60, 45, 58, 58, 49, 32, 55, 48, 45, 54, 37, 48, 49, 43, 62, 51, 51, 38, 116, 115, 107, 124, 113, 116, 121, 98, 109, 124, 111, 120, 115, 105, 74, 90, 75, 92, 92, 87, 70, 87, 86, 77, 70, 80, 87, 77, 92, 75, 88, 90, 77, 80, 79, 92, 98, 103, 124, 106, 112, 124, 109, 108, 119, 124, 117, 106, 112, 106, 97, 111, 102, 70, 92, 80, 89, 70, 74, 88, 78, 77, 67, 74, 107, 110, 117, 101, 108, 108, 121, 105, 120, 111, 111, 100, 117, 104, 101, 126, 126, 101, 103, 116, 113, 106, 124, 102, 106, 122, 119, 102, 97, 103, 96, 118, 97, 112, 113, 106, 119, 108, 106, 126, 112, 108, 114, 96, 116, 103, 113, 37, 62, 59, 62, 63, 39, 62, 106, 111, 116, 98, 120, 116, 100, 105, 120, 127, 121, 126, 104, 127, 110, 111, 103, 98, 121, 111, 117, 121, 104, 105, 114, 121, 111, 104, 121, 103, 101, 114, 111, 112, 111, 114, 127, 30, 27, 0, 9, 22, 26, 8, 30, 29, 22, 19, 22, 11, 6, 0, 11, 22, 28, 20, 0, 27, 10, 13, 30, 11, 22, 16, 17, 120, 125, 102, 112, 119, 106, 108, 127, 127, 112, 122, 112, 124, 119, 109, 102, 111, 112, 106, 112, 123, 117, 124, 102, 120, 107, 124, 120};
    }

    static {
        A01();
    }

    EnumC02865g(int i) {
        this.A00 = i;
    }

    public final int A02() {
        return this.A00;
    }
}

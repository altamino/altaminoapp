package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.79, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class AnonymousClass79 {
    private static byte[] A06;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C8G A04;
    public C8G A05;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A06 = new byte[]{110, 98, 44, 39, 53, 10, 45, 46, 38, 39, 48, 127, 23, 60, 53, 58, 51, 49, 29, 58, 50, 59, 47, 59, 56, 48, 28, 59, 56, 48, 49, 38, 105, 38, 42, 108, 120, 101, 103, 82, 55, 60, 48, 100, 127, 73, 45, 55, 59, 125, 105, 116, 118, 66, 38, 24, 20, 64, 91, 108, 9};
    }

    private AnonymousClass79(C8G c8g, C8G c8g2) {
        this.A05 = c8g;
        this.A04 = c8g2;
    }

    public AnonymousClass79(C8G c8g, C8G c8g2, int i, int i2, int i3, int i4) {
        this(c8g, c8g2);
        this.A00 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A03 = i4;
    }

    public final String toString() {
        return A00(12, 21, 31) + this.A05 + A00(0, 12, 9) + this.A04 + A00(33, 8, 65) + this.A00 + A00(47, 8, 80) + this.A01 + A00(55, 6, 127) + this.A02 + A00(41, 6, 91) + this.A03 + '}';
    }
}

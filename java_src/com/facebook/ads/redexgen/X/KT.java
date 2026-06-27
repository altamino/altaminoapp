package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KT {
    private static byte[] A06;
    private int A00;
    private int A01;
    private int A02;
    private int A03;
    private int A04;
    private boolean A05;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A06 = new byte[]{52, 38, 45, 38, 36, 53, 38, 37, 32, 34, 37, 32, 42, 47, 37, 38, 57, -25, -15, -35, -14, -25, -21, -29, -19, -13, -14, -56, -44, -38, -45, -39, -55, -44, -36, -45, -60, -39, -50, -46, -54, -60, -46, -40, -72, -71, -70, -75, -55, -64, -56, -77, -75, -72, -77, -67, -62, -72, -71, -52, 41, 44, 39, 43, 55, 61, 54, 60, -27, -20, -31, -16, -13, -27, -28, -33, -12, -23, -19, -27, -33, -26, -14, -17, -19, -33, -12, -23, -19, -27, -14, -33, -19, -13};
    }

    public final Map<String, String> A02() {
        HashMap map = new HashMap();
        map.put(A00(17, 10, 47), Boolean.toString(this.A05));
        map.put(A00(60, 8, 121), Integer.toString(this.A02));
        map.put(A00(44, 16, 5), Integer.toString(this.A00));
        map.put(A00(0, 17, 114), Integer.toString(this.A03));
        map.put(A00(68, 26, 49), Integer.toString(this.A01));
        map.put(A00(27, 17, 22), Integer.toString(this.A04));
        return map;
    }

    public final void A03(int i) {
        this.A00 = i;
    }

    public final void A04(int i) {
        this.A01 = i;
    }

    public final void A05(int i) {
        this.A02 = i;
    }

    public final void A06(int i) {
        this.A03 = i;
    }

    public final void A07(int i) {
        this.A04 = i;
    }

    public final void A08(boolean z) {
        this.A05 = z;
    }
}

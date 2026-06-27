package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8D, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C8D {
    private static byte[] A0H;
    public int A01;
    public int A02;
    public int A06;
    public int A07;
    public long A08;
    private SparseArray<Object> A0G;
    private int A0F = -1;
    public int A05 = 0;
    public int A00 = 0;
    public int A04 = 1;
    public int A03 = 0;
    public boolean A0D = false;
    public boolean A09 = false;
    public boolean A0E = false;
    public boolean A0A = false;
    public boolean A0C = false;
    public boolean A0B = false;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0H = new byte[]{-101, -113, -36, -63, -28, -35, -62, -40, -36, -33, -37, -44, -80, -35, -40, -36, -48, -29, -40, -34, -35, -30, -84, -45, -57, 20, -6, 27, 25, 28, 10, 27, 28, 25, 12, -22, 15, 8, 21, 14, 12, 11, -28, -119, -53, -34, -35, -119, -46, -35, -119, -46, -36, -119, -29, -8, 16, 6, 12, 11, -73, 10, 11, -8, 11, -4, -73, 10, -1, 6, 12, 3, -5, -73, -7, -4, -73, 6, 5, -4, -73, 6, -3, -73, -35, -47, 30, -11, 18, 37, 18, -18, 109, 97, -82, -118, -75, -90, -82, -124, -80, -74, -81, -75, 126, -94, -106, -29, -58, -24, -37, -20, -33, -27, -21, -23, -62, -41, -17, -27, -21, -22, -65, -22, -37, -29, -71, -27, -21, -28, -22, -77, -62, -74, 3, -24, 11, 4, -26, 8, -5, -6, -1, -7, 10, -1, 12, -5, -41, 4, -1, 3, -9, 10, -1, 5, 4, 9, -45, -88, -100, -23, -59, -22, -52, -18, -31, -56, -35, -11, -21, -15, -16, -71, -109, -121, -44, -85, -52, -45, -52, -37, -52, -53, -80, -43, -35, -48, -38, -48, -55, -45, -52, -80, -37, -52, -44, -86, -42, -36, -43, -37, -70, -48, -43, -54, -52, -73, -39, -52, -35, -48, -42, -36, -38, -77, -56, -32, -42, -36, -37, -92, -94, -61, -80, -61, -76, -54, -68, -93, -80, -63, -74, -76, -61, -97, -66, -62, -72, -61, -72, -66, -67, -116};
    }

    public final int A03() {
        C8D c8d = this;
        int i = 0;
        char c = c8d.A09 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c8d = c8d;
                    i = c8d.A05 - c8d.A00;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c8d = c8d;
                    i = c8d.A03;
                    c = 3;
                    break;
            }
        }
    }

    public final void A04(int i) {
        if ((this.A04 & i) == 0) {
            throw new IllegalStateException(A01(54, 30, 93) + Integer.toBinaryString(i) + A01(43, 11, 47) + Integer.toBinaryString(this.A04));
        }
    }

    public final void A05(AbstractC02102g abstractC02102g) {
        this.A04 = 1;
        this.A03 = abstractC02102g.A03();
        this.A09 = false;
        this.A0E = false;
        this.A0A = false;
    }

    public final boolean A06() {
        boolean z = false;
        char c = this.A0F != -1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A07() {
        return this.A09;
    }

    public final boolean A08() {
        return this.A0B;
    }

    public final String toString() {
        return A01(222, 22, 21) + this.A0F + A01(84, 8, 119) + this.A0G + A01(92, 13, 7) + this.A03 + A01(105, 27, 60) + this.A05 + A01(174, 48, 45) + this.A00 + A01(23, 20, 109) + this.A0D + A01(159, 15, 66) + this.A09 + A01(0, 23, 53) + this.A0C + A01(132, 27, 92) + this.A0B + '}';
    }
}

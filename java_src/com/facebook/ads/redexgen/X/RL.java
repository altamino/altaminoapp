package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class RL implements RK {
    private static byte[] A01;
    private final boolean A00;

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{36, 48, 46, -17, 39, 34, 36, 38, 35, 48, 48, 44, -17, 34, 37, 52, -17, 42, 47, 53, 38, 51, 52, 53, 42, 53, 42, 34, 45, -17, 38, 51, 51, 48, 51, 20, 32, 30, -33, 23, 18, 20, 22, 19, 32, 32, 28, -33, 18, 21, 36, -33, 26, 31, 37, 22, 35, 36, 37, 26, 37, 26, 18, 29, -33, 35, 22, 40, 18, 35, 21, 16, 36, 22, 35, 39, 22, 35, 16, 23, 18, 26, 29, 38, 35, 22, 9, 21, 19, -44, 12, 7, 9, 11, 8, 21, 21, 17, -44, 7, 10, 25, -44, 15, 20, 26, 11, 24, 25, 26, 15, 26, 15, 7, 18, -44, 24, 11, 29, 7, 24, 10, 53, 65, 63, 0, 56, 51, 53, 55, 52, 65, 65, 61, 0, 51, 54, 69, 0, 59, 64, 70, 55, 68, 69, 70, 59, 70, 59, 51, 62, 0, 53, 62, 59, 53, 61, 55, 54, 36, 48, 46, -17, 39, 34, 36, 38, 35, 48, 48, 44, -17, 34, 37, 52, -17, 42, 47, 53, 38, 51, 52, 53, 42, 53, 42, 34, 45, -17, 51, 38, 56, 34, 51, 37, 32, 52, 38, 51, 55, 38, 51, 32, 52, 54, 36, 36, 38, 52, 52, 29, 41, 39, -24, 32, 27, 29, 31, 28, 41, 41, 37, -24, 27, 30, 45, -24, 35, 40, 46, 31, 44, 45, 46, 35, 46, 35, 27, 38, -24, 32, 35, 40, 35, 45, 34, 25, 27, 29, 46, 35, 48, 35, 46, 51, -14, -2, -4, -67, -11, -16, -14, -12, -15, -2, -2, -6, -67, -16, -13, 2, -67, -8, -3, 3, -12, 1, 2, 3, -8, 3, -8, -16, -5, -67, -8, -4, -1, 1, -12, 2, 2, -8, -2, -3, -67, -5, -2, -10, -10, -12, -13};
    }

    public RL(boolean z) {
        this.A00 = z;
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3B() {
        return A00(86, 36, 45);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3O() {
        return A00(122, 37, 89);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3S() {
        return A00(210, 45, 65);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3V() {
        return A00(0, 35, 72);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3Z() {
        return A00(255, 47, 22);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3e() {
        return AdPlacementType.INTERSTITIAL.toString();
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3g() {
        return A00(35, 51, 56);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final String A3h() {
        return A00(159, 51, 72);
    }

    @Override // com.facebook.ads.redexgen.X.RK
    public final boolean A74() {
        return this.A00;
    }
}

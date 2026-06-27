package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.2V, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public enum C2V {
    A03(A00(28, 9, 50)),
    A05(A00(37, 9, 76)),
    A04(A00(55, 19, 16));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{49, 50, 66, 49, 36, 55, 44, 57, 40, 66, 36, 39, 66, 47, 36, 60, 50, 56, 55, -54, -59, -59, -43, -55, -61, -73, -62, -62, -7, 14, -7, 1, 4, -7, -6, 4, -3, 38, 33, 33, 17, 37, 31, 19, 30, 30, -53, -32, -53, -45, -42, -53, -52, -42, -49, -28, -27, -43, -28, -41, -22, -33, -20, -37, -43, -41, -38, -43, -30, -41, -17, -27, -21, -22};
    }

    static {
        A01();
    }

    C2V(String str) {
        this.A00 = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.A00;
    }
}

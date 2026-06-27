package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC02664k {
    A05(A00(0, 6, 95)),
    A03(A00(14, 4, 4)),
    A04(A00(18, 4, 122));

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_UNKNOWN_HOST);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{58, 45, 56, 55, 58, 60, -71, -70, -75, -74, 22, 23, 22, 13, -43, -42, -47, -46, 81, 82, 81, 72, -43, -56, -45, -46, -43, -41};
    }

    static {
        A01();
    }

    EnumC02664k(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}

package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ig, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0620Ig {
    private static byte[] A04;
    private double A00;
    private double A01 = System.currentTimeMillis() / 1000.0d;
    private String A02;
    private Map<String, String> A03;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
        A04 = new byte[]{-35, -34, -37, -18, -32};
    }

    public C0620Ig(double d, String str, Map<String, String> map) {
        this.A00 = d;
        this.A02 = str;
        this.A03 = map;
    }

    public final double A02() {
        return this.A00;
    }

    public final double A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A02;
    }

    public final String A05() {
        return A00(0, 5, 16);
    }

    public final Map<String, String> A06() {
        return this.A03;
    }
}

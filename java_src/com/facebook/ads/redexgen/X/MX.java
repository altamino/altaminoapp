package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class MX {
    private static byte[] A04;
    public MZ A00;
    public String A01;
    public String A02;
    public byte[] A03;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A04 = new byte[]{-6};
    }

    public MX(String str, C0718Me c0718Me) {
        this.A02 = A00(1, 0, 125);
        if (str != null) {
            this.A02 = str;
        }
        if (c0718Me != null) {
            this.A02 += A00(0, 1, 78) + c0718Me.A06();
        }
    }

    public final MZ A02() {
        return this.A00;
    }

    public final String A03() {
        return this.A01;
    }

    public final String A04() {
        return this.A02;
    }

    public final byte[] A05() {
        return this.A03;
    }
}

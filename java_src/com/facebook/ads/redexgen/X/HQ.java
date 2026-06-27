package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HQ implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HT A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 58);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{6, -3, 12, 15, 7, 10, 3, -9, 7, 8, -3, 10, -7, 12, 7, 10, -46, -33, -33, -36, -33};
    }

    public HQ(HT ht) {
        this.A00 = ht;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        HQ hq = this;
        char c = hq.A00.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hq = hq;
                    hq.A00.A02(A00(0, 16, 94), A00(16, 5, 51));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    hq = hq;
                    hq.A00.A03(A00(0, 16, 94), hq.A00.A01.getNetworkOperator());
                    c = 3;
                    break;
            }
        }
    }
}

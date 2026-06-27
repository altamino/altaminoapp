package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H5 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 38);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{28, 29, 14, 17, 27, 29, 39, 10, 23, 23, 12, 29, 28};
    }

    public H5(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        boolean zA07 = false;
        HK hk = this.A00;
        String strA00 = A00(0, 13, 94);
        char c = !HK.A0A() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (!HK.A09()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    if (!HK.A08()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    zA07 = true;
                    c = 5;
                    break;
                case 5:
                    hk.A03(strA00, Boolean.valueOf(zA07));
                    return;
                case 6:
                    zA07 = HK.A07();
                    c = 5;
                    break;
            }
        }
    }
}

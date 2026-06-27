package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HP implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-39, -49, -45, -59, -55, -43, -37, -44, -38, -40, -33, -7, 6, 6, 3, 6};
    }

    public HP(HT ht) {
        this.A00 = ht;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        HP hp = this;
        char c = hp.A00.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    hp = hp;
                    hp.A00.A02(A00(0, 11, 17), A00(11, 5, 63));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    hp = hp;
                    hp.A00.A03(A00(0, 11, 17), hp.A00.A01.getSimCountryIso());
                    c = 3;
                    break;
            }
        }
    }
}

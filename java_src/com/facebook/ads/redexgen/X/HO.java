package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HO implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 117);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{113, 102, 102, 123, 102, 55, 60, 45, 46, 54, 43, 50, 6, 54, 41, 60, 43, 56, 45, 54, 43, 6, 55, 56, 52, 60};
    }

    public HO(HT ht) {
        this.A00 = ht;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        HO ho = this;
        char c = ho.A00.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ho = ho;
                    ho.A00.A02(A00(5, 21, 44), A00(0, 5, 97));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    ho = ho;
                    ho.A00.A03(A00(5, 21, 44), ho.A00.A01.getNetworkOperatorName());
                    c = 3;
                    break;
            }
        }
    }
}

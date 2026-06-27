package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class T4 implements T3 {
    private static byte[] A02;
    public final /* synthetic */ T0 A00;
    public final /* synthetic */ TC A01;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A02 = new byte[]{27, 23, 21, 86, 30, 25, 27, 29, 26, 23, 23, 19, 86, 25, 28, 11, 86, 17, 22, 12, 29, 10, 11, 12, 17, 12, 17, 25, 20, 86, 10, 29, 15, 25, 10, 28};
    }

    public T4(TC tc, T0 t0) {
        this.A01 = tc;
        this.A00 = t0;
    }

    @Override // com.facebook.ads.redexgen.X.T3
    public final void A5O() {
        this.A00.A08().A2f(A00(0, 36, 1));
        this.A01.A03.A07();
    }
}

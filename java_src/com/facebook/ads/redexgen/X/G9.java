package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G9 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GC A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 41);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{28, 17, 21, 24, 0, 28, 24, 27, 14, 14, 31, 8, 3, 37, 18, 31, 27, 22, 14, 18, 70, 93, 88, 93, 92, 68, 93};
    }

    public G9(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G9 g9 = this;
        char c = g9.A00.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    g9 = g9;
                    if (g9.A00.A01 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    g9 = g9;
                    g9.A00.A02(A00(6, 14, 83), A00(20, 7, 26));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    g9 = g9;
                    g9.A00.A03(A00(6, 14, 83), Integer.valueOf(g9.A00.A01.getIntExtra(A00(0, 6, 93), 0)));
                    c = 4;
                    break;
            }
        }
    }
}

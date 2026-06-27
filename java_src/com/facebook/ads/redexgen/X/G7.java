package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G7 implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{36, 56, 33, 51, 51, 49, 48, 69, 70, 83, 83, 66, 85, 94, 120, 87, 75, 82, 64, 64, 66, 67, 16, 11, 14, 11, 10, 18, 11};
    }

    public G7(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G7 g7 = this;
        char c = g7.A00.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    g7 = g7;
                    if (g7.A00.A01 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    g7 = g7;
                    g7.A00.A02(A00(7, 15, 111), A00(22, 7, 45));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    g7 = g7;
                    g7.A00.A03(A00(7, 15, 111), Integer.valueOf(g7.A00.A01.getIntExtra(A00(0, 7, 28), 0)));
                    c = 4;
                    break;
            }
        }
    }
}

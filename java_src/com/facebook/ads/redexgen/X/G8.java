package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G8 implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{46, 41, 60, 41, 40, 46, 92, 95, 74, 74, 91, 76, 71, 97, 77, 74, 95, 74, 75, 77, 27, 0, 5, 0, 1, 25, 0};
    }

    public G8(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G8 g8 = this;
        char c = g8.A00.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    g8 = g8;
                    if (g8.A00.A01 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    g8 = g8;
                    g8.A00.A02(A00(6, 14, 56), A00(20, 7, 104));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    g8 = g8;
                    g8.A00.A03(A00(6, 14, 56), Integer.valueOf(g8.A00.A01.getIntExtra(A00(0, 6, 91), 0)));
                    c = 4;
                    break;
            }
        }
    }
}

package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G3 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ G4 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{94, 69, 66, 75, 73, 94, 115, 65, 67, 72, 73, 124, 107, 107, 118, 107};
    }

    public G3(G4 g4) {
        this.A00 = g4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G3 g3 = this;
        char c = g3.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    g3 = g3;
                    g3.A00.A02(A00(0, 11, 106), A00(11, 5, 95));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    g3 = g3;
                    g3.A00.A03(A00(0, 11, 106), Integer.valueOf(g3.A00.A00.getRingerMode()));
                    c = 3;
                    break;
            }
        }
    }
}

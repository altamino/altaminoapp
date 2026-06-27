package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G0 implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{70, 71, 69, 56, 52, 64, 50, 70, 76, 70, 71, 56, 64, 56, 69, 69, 66, 69, 102, 103, 101, 88, 84, 96, 82, 101, 92, 97, 90, 81, 82, 80, 67, 63, 75, 61, 66, 82, 75, 68, 0, 1, -1, -14, -18, -6, -20, -18, -7, -18, -1, -6, -3, -2, -4, -17, -21, -9, -23, -8, -7, -2, -13, -16, -13, -19, -21, -2, -13, -7, -8, -2, -1, -3, -16, -20, -8, -22, -8, 0, -2, -12, -18, -16, -15, -17, -30, -34, -22, -36, -13, -20, -26, -32, -30, -36, -32, -34, -23, -23};
    }

    public G0(G4 g4) {
        this.A00 = g4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G0 g0 = this;
        char c = g0.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    g0 = g0;
                    g0.A00.A02(A00(0, 13, 90), A00(13, 5, 90));
                    g0.A00.A02(A00(52, 19, 17), A00(13, 5, 90));
                    g0.A00.A02(A00(71, 12, 18), A00(13, 5, 90));
                    g0.A00.A02(A00(18, 11, 122), A00(13, 5, 90));
                    g0.A00.A02(A00(29, 11, 101), A00(13, 5, 90));
                    g0.A00.A02(A00(83, 17, 4), A00(13, 5, 90));
                    g0.A00.A02(A00(40, 12, 20), A00(13, 5, 90));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    g0 = g0;
                    g0.A00.A03(A00(0, 13, 90), Integer.valueOf(g0.A00.A00.getStreamVolume(1)));
                    g0.A00.A03(A00(52, 19, 17), Integer.valueOf(g0.A00.A00.getStreamVolume(5)));
                    g0.A00.A03(A00(71, 12, 18), Integer.valueOf(g0.A00.A00.getStreamVolume(3)));
                    g0.A00.A03(A00(18, 11, 122), Integer.valueOf(g0.A00.A00.getStreamVolume(2)));
                    g0.A00.A03(A00(29, 11, 101), Integer.valueOf(g0.A00.A00.getStreamVolume(8)));
                    g0.A00.A03(A00(83, 17, 4), Integer.valueOf(g0.A00.A00.getStreamVolume(0)));
                    g0.A00.A03(A00(40, 12, 20), Integer.valueOf(g0.A00.A00.getStreamVolume(4)));
                    c = 3;
                    break;
            }
        }
    }
}

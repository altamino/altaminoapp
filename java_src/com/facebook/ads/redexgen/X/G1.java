package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G1 implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{32, 56, 62, 36, 46, 18, 44, 46, 57, 36, 59, 40, 93, 74, 74, 87, 74, 25, 26, 15, 11, 1, 15, 24, 26, 2, 5, 4, 15};
    }

    public G1(G4 g4) {
        this.A00 = g4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G1 g1 = this;
        char c = g1.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    g1 = g1;
                    g1.A00.A02(A00(0, 12, 117), A00(12, 5, 0));
                    g1.A00.A02(A00(17, 12, 82), A00(12, 5, 0));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    g1 = g1;
                    g1.A00.A03(A00(0, 12, 117), Boolean.valueOf(g1.A00.A00.isMusicActive()));
                    g1.A00.A03(A00(17, 12, 82), Boolean.valueOf(g1.A00.A00.isSpeakerphoneOn()));
                    c = 3;
                    break;
            }
        }
    }
}

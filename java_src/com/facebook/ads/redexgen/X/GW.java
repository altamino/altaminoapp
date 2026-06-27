package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GW implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0563Gb A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{30, 26, 14, 22, 30, 10, 27, 29, 26, 35, 36, 10, 32, 30, 16, 29, 1, 13, 13, 9, -57, -6, 0, -2, 7, 13, 53, 57, -12, 39, 56, 41, 46, -31, -35, -47, -39, -31, -66, -32, -35, -26, -25, -60, -45, -32, -31, -41, -35, -36, 16, 12, 0, 8, 16, -4, 13, 15, 12, 21, 22, -4, 19, 2, 15, 16, 6, 12, 11, -37, -31, -37, -36, -51, -43, -57, -41, -37, -57, -42, -55, -43, -51, -29, -33, -45, -37, -29, -49, -32, -30, -33, -24, -23, -49, -40, -33, -29, -28, -12, 0, 0, -4, -21, -4, -2, -5, 4, 5, -21, -4, -5, -2, 0, -59, -47, -47, -51, -68, -46, -48, -62, -49, -68, -66, -60, -62, -53, -47, -53, -41, -41, -45, -62, -45, -43, -46, -37, -36, -62, -40, -42, -56, -43, 26, 22, 10, 18, 26, -9, 25, 22, 31, 32, -9, 22, 25, 27, -23, -11, -11, -15, -32, -15, -13, -16, -7, -6, -32, -23, -16, -12, -11, -42, -46, -58, -50, -42, -77, -43, -46, -37, -36, -85, -46, -42, -41, 21, 25, -44, 20, 7, 19, 11, -9, -3, -9, -8, -23, -15, -29, -13, -9, -29, -27, -10, -25, -20, -19, -8, -23, -25, -8, -7, -10, -23, -46, -40, -46, -45, -60, -52, -66, -50, -46, -66, -43, -60, -47, -46, -56, -50, -51, -46, -34, -34, -38, -104, -38, -36, -39, -30, -29, -65, -35, -49, -36, -41, -29, -29, -33, -50, -33, -31, -34, -25, -24, -50, -35, -34, -35, -50, -33, -31, -34, -25, -24, -50, -41, -34, -30, -29, -54, -63, -42, -63, -114, -50, -59, -44, -114, -45, -49, -61, -53, -45, -114, -43, -45, -59, -46, -50, -63, -51, -59, 54, 50, 38, 46, 54, 34, 51, 53, 50, 59, 60, 34, 51, 50, 53, 55, -7, 5, 5, 1, -65, -1, 0, -1, -31, 3, 0, 9, 10, -39, 0, 4, 5, 4, -35, -31, -100, -28, -45, -32, -31, -41, -35, -36, -70, -58, -58, -62, -128, -62, -60, -63, -54, -53, -102, -63, -59, -58, -62, -50, -50, -54, -120, -54, -52, -55, -46, -45, -86, -55, -52, -50};
    }

    public GW(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(158, 15, 58), System.getProperty(A00(339, 14, 11)));
        this.A00.A03(A00(99, 15, 69), System.getProperty(A00(353, 14, 19)));
        this.A00.A03(A00(129, 15, 28), System.getProperty(A00(233, 14, 35)));
        this.A00.A03(A00(247, 25, 40), System.getProperty(A00(FetchService.ACTION_PAUSE, 18, 74)));
        this.A00.A03(A00(114, 15, 22), System.getProperty(A00(16, 10, 82)));
        this.A00.A03(A00(83, 16, 41), System.getProperty(A00(173, 14, 28)));
        this.A00.A03(A00(295, 16, 124), System.getProperty(A00(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 14, 96)));
        this.A00.A03(A00(50, 19, 86), System.getProperty(A00(33, 17, 39)));
        this.A00.A03(A00(0, 16, 100), System.getProperty(A00(272, 23, 25)));
        this.A00.A03(A00(194, 22, 61), System.getProperty(A00(26, 7, 127)));
        this.A00.A03(A00(69, 14, 33), System.getProperty(A00(187, 7, 95)));
        this.A00.A03(A00(216, 17, 24), System.getProperty(A00(329, 10, 39)));
    }
}

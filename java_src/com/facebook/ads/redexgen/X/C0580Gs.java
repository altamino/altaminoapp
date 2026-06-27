package com.facebook.ads.redexgen.X;

import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gs, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0580Gs implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_BAD_REQUEST);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{20, 33, 23, 37, 34, 28, 23, -31, 27, 20, 37, 23, 42, 20, 37, 24, -31, 39, 34, 40, 22, 27, 38, 22, 37, 24, 24, 33, -31, 32, 40, 31, 39, 28, 39, 34, 40, 22, 27, -31, 29, 20, 45, 45, 27, 20, 33, 23, 35, 48, 38, 52, 49, 43, 38, -16, 42, 35, 52, 38, 57, 35, 52, 39, -16, 40, 35, 45, 39, 54, 49, 55, 37, 42, -16, 47, 55, 46, 54, 43, 54, 49, 55, 37, 42, -16, 44, 35, 60, 60, 42, 35, 48, 38, 58, 71, 61, 75, 72, 66, 61, 7, 65, 58, 75, 61, 80, 58, 75, 62, 7, 77, 72, 78, 60, 65, 76, 60, 75, 62, 62, 71, -13, -18, -12, -30, -25, -14, -30, -15, -28, -28, -19, -34, -20, -12, -21, -13, -24, -13, -18, -12, -30, -25, 33, 28, 34, 16, 21, 32, 16, 31, 18, 18, 27, 12, 19, 14, 24, 18, 33, 28, 34, 16, 21, 12, 32, 34, 29, 29, 28, 31, 33, 80, 93, 83, 97, 94, 88, 83, 29, 87, 80, 97, 83, 102, 80, 97, 84, 29, 85, 80, 90, 84, 99, 94, 100, 82, 87, 29, 92, 100, 91, 99, 88, 99, 94, 100, 82, 87, 29, 83, 88, 98, 99, 88, 93, 82, 99, 62, 75, 65, 79, 76, 70, 65, 11, 69, 62, 79, 65, 84, 62, 79, 66, 11, 67, 62, 72, 66, 81, 76, 82, 64, 69, 31, 26, 32, 14, 19, 30, 14, 29, 16, 16, 25, 10, 24, 32, 23, 31, 20, 31, 26, 32, 14, 19, 10, 15, 20, 30, 31, 20, 25, 14, 31, 74, 69, 75, 57, 62, 73, 57, 72, 59, 59, 68, 55, 50, 56, 38, 43, 54, 38, 53, 40, 40, 49, 34, 41, 36, 46, 40, 55, 50, 56, 38, 43, 34, 48, 56, 47, 55, 44, 55, 50, 56, 38, 43, 34, 45, 36, 61, 61, 43, 36, 49, 39, 100, 95, 101, 83, 88, 99, 83, 98, 85, 85, 94, 79, 86, 81, 91, 85, 100, 95, 101, 83, 88, 79, 93, 101, 92, 100, 89, 100, 95, 101, 83, 88, 79, 84, 89, 99, 100, 89, 94, 83, 100, 5, 18, 8, 22, 19, 13, 8, -46, 12, 5, 22, 8, 27, 5, 22, 9, -46, 24, 19, 25, 7, 12, 23, 7, 22, 9, 9, 18, -46, 17, 25, 16, 24, 13, 24, 19, 25, 7, 12, -46, 8, 13, 23, 24, 13, 18, 7, 24, 66, 79, 69, 83, 80, 74, 69, 15, 73, 66, 83, 69, 88, 66, 83, 70, 15, 85, 80, 86, 68, 73, 84, 68, 83, 70, 70, 79, 15, 78, 86, 77, 85, 74, 85, 80, 86, 68, 73, 82, 77, 83, 65, 70, 81, 65, 80, 67, 67, 76, 61, 75, 83, 74, 82, 71, 82, 77, 83, 65, 70, 61, 72, 63, 88, 88, 70, 63, 76, 66};
    }

    public C0580Gs(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(122, 22, 11), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(417, 39, 109))));
        this.A00.A03(A00(245, 31, 55), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(369, 48, 48))));
        this.A00.A03(A00(456, 31, 106), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(0, 48, 63))));
        this.A00.A03(A00(276, 11, 98), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(94, 28, 101))));
        this.A00.A03(A00(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 29, 57), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(219, 26, 105))));
        this.A00.A03(A00(328, 41, 124), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(173, 46, 123))));
        this.A00.A03(A00(287, 41, 79), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(48, 46, 78))));
    }
}

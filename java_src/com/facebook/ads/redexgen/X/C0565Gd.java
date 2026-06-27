package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0565Gd implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{125, 114, 120, 110, 115, 117, 120, 50, 116, 125, 110, 120, 107, 125, 110, 121, 50, 104, 121, 112, 121, 108, 116, 115, 114, 101, 30, 15, 6, 15, 26, 2, 5, 4, 19, 53, 13, 25, 7, 53, 26, 24, 15, 25, 15, 4, 30, 53, 58, 48, 38, 59, 61, 48, 122, 60, 53, 38, 48, 35, 53, 38, 49, 122, 32, 49, 56, 49, 36, 60, 59, 58, 45, 122, 51, 39, 57, 55, 56, 50, 36, 57, 63, 50, 120, 62, 55, 36, 50, 33, 55, 36, 51, 120, 34, 51, 58, 51, 38, 62, 57, 56, 47, 120, 53, 50, 59, 55, 105, 120, 113, 120, 109, 117, 114, 115, 100, 66, 109, 111, 120, 110, 120, 115, 105, 122, 107, 98, 107, 126, 102, 97, 96, 119, 81, 109, 106, 99, 111, 81, 126, 124, 107, 125, 107, 96, 122};
    }

    public C0565Gd(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(108, 17, 83), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(0, 26, 82))));
        this.A00.A03(A00(125, 22, 64), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(77, 31, 24))));
        this.A00.A03(A00(26, 21, 36), Boolean.valueOf(this.A00.A02.hasSystemFeature(A00(47, 30, 26))));
    }
}

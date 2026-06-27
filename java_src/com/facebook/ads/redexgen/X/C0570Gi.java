package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gi, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0570Gi implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{106, 123, 103, 106, 125, 97, 106, 123, 115, 109, 98, 109, 91, 96, 109, 118, 97, 103, 112, 121, 118, 124, 106, 119, 113, 124, 54, 112, 121, 106, 124, 111, 121, 106, 125, 54, 125, 108, 112, 125, 106, 118, 125, 108, 98, 100, 117, 72, 127, 120, 100, 99, 108, 99, 105, 127, 98, 100, 105, 35, 101, 108, 127, 105, 122, 108, 127, 104, 35, 99, 107, 110, 35, 44, 38, 48, 45, 43, 38, 108, 42, 35, 48, 38, 53, 35, 48, 39, 108, 55, 49, 32, 108, 42, 45, 49, 54, 99, 108, 102, 112, 109, 107, 102, 44, 106, 99, 112, 102, 117, 99, 112, 103, 44, 117, 107, 100, 107, 44, 102, 107, 112, 103, 97, 118, 35, 56, 61, 56, 57, 33, 56, 86, 94, 91};
    }

    public C0570Gi(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0570Gi c0570Gi = this;
        c0570Gi.A00.A03(A00(132, 3, 105), Boolean.valueOf(c0570Gi.A00.A02.hasSystemFeature(A00(52, 20, 92))));
        c0570Gi.A00.A03(A00(44, 8, 70), Boolean.valueOf(c0570Gi.A00.A02.hasSystemFeature(A00(72, 25, 19))));
        c0570Gi.A00.A03(A00(8, 11, 85), Boolean.valueOf(c0570Gi.A00.A02.hasSystemFeature(A00(97, 28, 83))));
        char c = Build.VERSION.SDK_INT < 26 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0570Gi = c0570Gi;
                    c0570Gi.A00.A02(A00(0, 8, 94), A00(125, 7, 7));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0570Gi = c0570Gi;
                    c0570Gi.A00.A03(A00(0, 8, 94), Boolean.valueOf(c0570Gi.A00.A02.hasSystemFeature(A00(19, 25, 73))));
                    c = 3;
                    break;
            }
        }
    }
}

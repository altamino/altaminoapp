package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gk, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0572Gk implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-69, -56, -66, -52, -55, -61, -66, -120, -62, -69, -52, -66, -47, -69, -52, -65, -120, -57, -61, -67, -52, -55, -54, -62, -55, -56, -65, -65, -52, -62, -48, -51, -57, -62, -116, -58, -65, -48, -62, -43, -65, -48, -61, -116, -60, -57, -52, -59, -61, -48, -50, -48, -57, -52, -46, -67, -54, -64, -50, -53, -59, -64, -118, -49, -53, -62, -48, -45, -67, -50, -63, -118, -52, -50, -59, -54, -48, 53, 55, 46, 51, 57, 46, 51, 44, -25, -28, -26, -9, -4, -17, -14, -22, -11, -28, -16, -13, -20, -23, -20, -19, -11, -20, 14, 10, 4, 19, 16, 17, 9, 16, 15, 6};
    }

    public C0572Gk(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0572Gk c0572Gk = this;
        c0572Gk.A00.A03(A00(103, 10, 89), Boolean.valueOf(c0572Gk.A00.A02.hasSystemFeature(A00(0, 27, 18))));
        char c = Build.VERSION.SDK_INT < 20 ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    c0572Gk = c0572Gk;
                    c0572Gk.A00.A02(A00(77, 8, 125), A00(96, 7, 54));
                    c = 3;
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 23) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0572Gk = c0572Gk;
                    c0572Gk.A00.A02(A00(85, 11, 59), A00(96, 7, 54));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    c0572Gk = c0572Gk;
                    c0572Gk.A00.A03(A00(85, 11, 59), Boolean.valueOf(c0572Gk.A00.A02.hasSystemFeature(A00(27, 28, 22))));
                    c = 5;
                    break;
                case 7:
                    c0572Gk = c0572Gk;
                    c0572Gk.A00.A03(A00(77, 8, 125), Boolean.valueOf(c0572Gk.A00.A02.hasSystemFeature(A00(55, 22, 20))));
                    c = 3;
                    break;
            }
        }
    }
}

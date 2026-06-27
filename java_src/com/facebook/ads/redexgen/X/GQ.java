package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GQ implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GT A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{5, 18, 18, 15, 18, -52, -58, -38, -56, -42, -62, -45, -59, -64, -51, -48, -60, -52, -58, -59, -15, -22, -25, -22, -21, -13, -22};
    }

    public GQ(GT gt) {
        this.A00 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GQ gq = this;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gq = gq;
                    gq.A00.A02(A00(5, 15, 11), A00(20, 7, 38));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gq = gq;
                    if (gq.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gq = gq;
                    gq.A00.A02(A00(5, 15, 11), A00(0, 5, 74));
                    c = 3;
                    break;
                case 6:
                    gq = gq;
                    gq.A00.A03(A00(5, 15, 11), Boolean.valueOf(gq.A00.A00.isKeyguardLocked()));
                    c = 3;
                    break;
            }
        }
    }
}

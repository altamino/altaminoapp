package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H1 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ H2 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{83, 94, 68, 71, 91, 86, 78, 104, 86, 84, 67, 94, 65, 82, 38, 49, 49, 44, 49};
    }

    public H1(H2 h2) {
        this.A00 = h2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        H1 h1 = this;
        char c = h1.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    h1 = h1;
                    h1.A00.A02(A00(0, 14, 108), A00(14, 5, 24));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (Build.VERSION.SDK_INT >= 20) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    h1 = h1;
                    h1.A00.A02(A00(0, 14, 108), Boolean.valueOf(h1.A00.A00.isScreenOn()));
                    c = 3;
                    break;
                case 6:
                    h1 = h1;
                    h1.A00.A03(A00(0, 14, 108), Boolean.valueOf(h1.A00.A00.isInteractive()));
                    c = 3;
                    break;
            }
        }
    }
}

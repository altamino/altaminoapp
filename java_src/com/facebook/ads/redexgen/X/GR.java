package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GR implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{96, 119, 119, 106, 119, 41, 50, 55, 50, 51, 43, 50, 84, 85, 70, 89, 83, 85, 111, 67, 85, 83, 69, 66, 85};
    }

    public GR(GT gt) {
        this.A00 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GR gr = this;
        char c = Build.VERSION.SDK_INT < 23 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gr = gr;
                    gr.A00.A02(A00(12, 13, 21), A00(5, 7, 121));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gr = gr;
                    if (gr.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gr = gr;
                    gr.A00.A02(A00(12, 13, 21), A00(0, 5, 32));
                    c = 3;
                    break;
                case 6:
                    gr = gr;
                    gr.A00.A03(A00(12, 13, 21), Boolean.valueOf(gr.A00.A00.isDeviceSecure()));
                    c = 3;
                    break;
            }
        }
    }
}

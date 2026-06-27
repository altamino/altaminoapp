package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QY implements Runnable {
    private static byte[] A01;
    public final /* synthetic */ C0836Qt A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{27, 36, 41, 40, 34, 109, 35, 40, 59, 40, 63, 109, 62, 57, 44, 63, 57, 40, 41, 109, 61, 33, 44, 52, 36, 35, 42};
    }

    public QY(C0836Qt c0836Qt) {
        this.A00 = c0836Qt;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.A00.A0J) {
            return;
        }
        this.A00.A0f(A00(0, 27, 76));
    }
}

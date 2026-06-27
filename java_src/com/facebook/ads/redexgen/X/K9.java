package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class K9 {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-51, -47, -52, -62, -41, -56, -42, -41, -62, -43, -56, -42, -40, -49, -41};
    }

    private K9() {
    }

    public static void A02(Context context) {
        if (K1.A14(context)) {
            A03(context);
        }
    }

    private static void A03(Context context) {
        new Thread(new K8(context)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A04(Context context) {
        try {
            A05(context);
        } catch (Throwable unused) {
        }
    }

    private static void A05(Context context) {
        KD result = K6.A02(context);
        PA pa = new PA(result.toString());
        pa.A03(1);
        P7.A07(context, A00(0, 15, 48), P8.A1h, pa);
    }
}

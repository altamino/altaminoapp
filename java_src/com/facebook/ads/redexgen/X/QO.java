package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.Log;
import android.view.View;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class QO {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 44);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{55, 51, 48, 4, 21, 24, 20, 31, 18, 20, 63, 20, 5, 6, 30, 3, 26, 69, 98, 106, 111, 35, 119, 108, 35, 113, 102, 109, 103, 102, 113, 35, 77, 98, 119, 106, 117, 102, 35, 119, 102, 110, 115, 111, 98, 119, 102, 45, 35, 70, 110, 115, 119, 122, 35, 66, 109, 103, 113, 108, 106, 103, 35, 85, 106, 102, 116, 35, 116, 106, 111, 111, 35, 97, 102, 35, 113, 102, 119, 118, 113, 109, 102, 103, 45, 11, 4, 17, 12, 19, 0, 58, 17, 0, 8, 21, 9, 4, 17, 0};
    }

    private QO() {
    }

    public static View A00(Context context, Throwable th) {
        A03(context, th);
        return new View(context);
    }

    private static void A03(Context context, Throwable th) {
        P7.A07(context, A01(85, 15, 73), P8.A1N, new PA(th));
        Log.e(A01(0, 17, 93), A01(17, 68, 47), th);
    }
}

package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BC {
    private static InterfaceC0419Am A00;
    private static byte[] A01;
    private static final String A02;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{9, 52, 47, 41, 60, 56, 37, 35, 34, 108, 40, 57, 62, 37, 34, 43, 108, 41, 52, 41, 47, 57, 56, 37, 35, 34, 98};
    }

    static {
        A01();
        A02 = BC.class.getSimpleName();
    }

    private BC() {
    }

    public static void A02(InterfaceC0419Am interfaceC0419Am) {
        A00 = interfaceC0419Am;
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public static void A03(Throwable th) {
        char c = A00 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    th = th;
                    A00.A6t(th);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    th = th;
                    Log.e(A02, A00(0, 27, 79), th);
                    c = 3;
                    break;
            }
        }
    }
}

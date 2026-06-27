package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Log;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hf, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0593Hf {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-119, -68, -89, -87, -76, -72, -83, -77, -78, 100, -88, -71, -74, -83, -78, -85, 100, -87, -68, -87, -89, -71, -72, -83, -77, -78, 114};
    }

    static {
        A01();
        A02 = C0593Hf.class.getSimpleName();
    }

    private C0593Hf() {
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public static void A02(Throwable th) {
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
                    Log.e(A02, A00(0, 27, 59), th);
                    c = 3;
                    break;
            }
        }
    }
}

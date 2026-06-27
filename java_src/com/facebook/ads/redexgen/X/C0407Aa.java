package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Aa, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0407Aa {

    @Nullable
    private static InterfaceC0408Ab A00;
    private static boolean A01;
    private static byte[] A02;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 49);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{-5, -2, 7, -4, 1, 6, -6, 11, 4};
    }

    static {
        A02();
        A01 = false;
        A00 = null;
    }

    private C0407Aa() {
    }

    public static void A01() {
        synchronized (C0407Aa.class) {
            if (A00 != null) {
                PA pa = new PA(A00.A6s());
                pa.A03(1);
                P7.A0E(A00(0, 9, 104), 3401, pa);
                A00.reset();
            }
        }
    }

    public static void A03(long j) {
        if (j > 0) {
            A00 = new C0409Ac();
            new C0410Ad(j);
        }
    }
}

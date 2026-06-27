package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class H0 implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{113, 102, 102, 123, 102, 45, 50, 42, 56, 47, 2, 46, 60, 43, 56, 2, 48, 50, 57, 56, 78, 85, 80, 85, 84, 76, 85};
    }

    public H0(H2 h2) {
        this.A00 = h2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        H0 h0 = this;
        char c = h0.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    h0 = h0;
                    h0.A00.A02(A00(5, 15, 71), A00(0, 5, 14));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (Build.VERSION.SDK_INT >= 21) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    h0 = h0;
                    h0.A00.A02(A00(5, 15, 71), A00(20, 7, 33));
                    c = 3;
                    break;
                case 6:
                    h0 = h0;
                    h0.A00.A03(A00(5, 15, 71), Boolean.valueOf(h0.A00.A00.isPowerSaveMode()));
                    c = 3;
                    break;
            }
        }
    }
}

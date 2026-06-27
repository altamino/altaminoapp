package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0587Gz implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-10, -9, 8, -5, -11, -9, -15, -5, -10, -2, -9, -109, -96, -96, -99, -96, -30, -37, -40, -37, -36, -28, -37};
    }

    public C0587Gz(H2 h2) {
        this.A00 = h2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0587Gz c0587Gz = this;
        char c = c0587Gz.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0587Gz = c0587Gz;
                    c0587Gz.A00.A02(A00(0, 11, 122), A00(11, 5, 22));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    if (Build.VERSION.SDK_INT >= 23) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0587Gz = c0587Gz;
                    c0587Gz.A00.A02(A00(0, 11, 122), A00(16, 7, 85));
                    c = 3;
                    break;
                case 6:
                    c0587Gz = c0587Gz;
                    c0587Gz.A00.A03(A00(0, 11, 122), Boolean.valueOf(c0587Gz.A00.A00.isDeviceIdleMode()));
                    c = 3;
                    break;
            }
        }
    }
}

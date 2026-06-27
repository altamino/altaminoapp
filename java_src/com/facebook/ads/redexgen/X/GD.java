package com.facebook.ads.redexgen.X;

import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GD implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GO A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-22, -4, -7, -7, -20, -11, -5, -26, -24, -4, -5, -10, -26, -23, -7, -16, -18, -17, -5, -11, -20, -6, -6, -60, -47, -47, -50, -47, 49, 33, 48, 35, 35, 44, 29, 32, 48, 39, 37, 38, 50, 44, 35, 49, 49, 29, 43, 45, 34, 35};
    }

    public GD(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            this.A00.A03(A00(0, 23, 72), Integer.valueOf(Settings.System.getInt(this.A00.A00.getContentResolver(), A00(28, 22, 127))));
        } catch (Throwable unused) {
            this.A00.A02(A00(0, 23, 72), A00(23, 5, 32));
        }
    }
}

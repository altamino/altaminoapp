package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GK implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 33);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-58, -57, -76, -52, -78, -62, -63, -78, -54, -69, -68, -65, -72, -78, -61, -65, -56, -70, -70, -72, -73, -78, -68, -63, -27, -14, -14, -17, -14, -6, -5, -24, 0, -26, -10, -11, -26, -2, -17, -16, -13, -20, -26, -9, -13, -4, -18, -18, -20, -21, -16, -11, -35, -42, -45, -42, -41, -33, -42};
    }

    public GK(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        if (Build.VERSION.SDK_INT < 17) {
            this.A00.A02(A00(29, 23, 102), A00(52, 7, 71));
            return;
        }
        try {
            this.A00.A03(A00(29, 23, 102), Integer.valueOf(Settings.Global.getInt(this.A00.A00.getContentResolver(), A00(0, 24, 50))));
        } catch (Settings.SettingNotFoundException unused) {
            this.A00.A02(A00(29, 23, 102), A00(24, 5, 95));
        }
    }
}

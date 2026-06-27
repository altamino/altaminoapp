package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GI implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{29, 15, 12, 15, 5, 21, 20, 16, 2, -1, 2, -8, -2, 7, -6, -5, 5, -2, -3, -26, -33, -36, -33, -32, -24, -33};
    }

    public GI(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GI gi = this;
        GO go = null;
        String strA00 = null;
        boolean z = true;
        boolean z2 = false;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gi = gi;
                    gi.A00.A02(A00(7, 12, 103), A00(19, 7, 63));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gi = gi;
                    if (!gi.A00.A05(gi.A00.A00)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    gi = gi;
                    z2 = false;
                    gi.A00.A03(A00(7, 12, 103), false);
                    c = 3;
                    break;
                case 6:
                    gi = gi;
                    z2 = false;
                    go = gi.A00;
                    strA00 = A00(7, 12, 103);
                    if (Settings.Global.getInt(gi.A00.A00.getContentResolver(), A00(0, 7, 116), 0) != z) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    go = go;
                    strA00 = strA00;
                    go.A03(strA00, Boolean.valueOf(z));
                    c = 3;
                    break;
                case '\b':
                    z = z2;
                    c = 7;
                    break;
            }
        }
    }
}

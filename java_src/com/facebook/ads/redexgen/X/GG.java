package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GG implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{94, 80, 73, 89, 72, 83, 83, 72, 84, 99, 89, 82, 93, 94, 80, 89, 88, 8, 6, 31, 15, 30, 5, 5, 30, 2, 53, 5, 4, 17, 10, 15, 10, 11, 19, 10};
    }

    public GG(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GG gg = this;
        GO go = null;
        String strA00 = null;
        boolean z = true;
        boolean z2 = false;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gg = gg;
                    gg.A00.A02(A00(0, 17, 49), A00(29, 7, 105));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gg = gg;
                    if (!gg.A00.A04(gg.A00.A00)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    gg = gg;
                    z2 = false;
                    gg.A00.A03(A00(0, 17, 49), false);
                    c = 3;
                    break;
                case 6:
                    gg = gg;
                    z2 = false;
                    go = gg.A00;
                    strA00 = A00(0, 17, 49);
                    if (Settings.Global.getInt(gg.A00.A00.getContentResolver(), A00(17, 12, 103), 0) != z) {
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

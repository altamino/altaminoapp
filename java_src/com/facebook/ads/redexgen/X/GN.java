package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GN implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{2, 15, 15, 12, 15, -29, -31, -48, -51, -47, -35, -36, -36, -45, -47, -30, -45, -46, -106, -94, -95, -95, -104, -106, -89, -104, -105, -90, -77, -87, -73, -76, -82, -87, 115, -83, -90, -73, -87, -68, -90, -73, -86, 115, -70, -72, -89, 115, -90, -88, -71, -82, -76, -77, 115, -102, -104, -121, -92, -104, -103, -122, -103, -118};
    }

    public GN(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GN gn = this;
        Intent intentRegisterReceiver = gn.A00.A00.registerReceiver(null, new IntentFilter(A00(27, 37, 21)));
        char c = intentRegisterReceiver != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    intentRegisterReceiver = intentRegisterReceiver;
                    if (intentRegisterReceiver.getExtras() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    intentRegisterReceiver = intentRegisterReceiver;
                    if (!intentRegisterReceiver.hasExtra(A00(18, 9, 3))) {
                        c = 4;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 4:
                    gn = gn;
                    gn.A00.A02(A00(5, 13, 62), A00(0, 5, 109));
                    c = 5;
                    break;
                case 5:
                    return;
                case 6:
                    gn = gn;
                    intentRegisterReceiver = intentRegisterReceiver;
                    gn.A00.A03(A00(5, 13, 62), Boolean.valueOf(intentRegisterReceiver.getBooleanExtra(A00(18, 9, 3), false)));
                    c = 5;
                    break;
            }
        }
    }
}

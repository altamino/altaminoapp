package com.facebook.ads.redexgen.X;

import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GF implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-66, -64, -64, -62, -48, -48, -58, -65, -58, -55, -58, -47, -42, -68, -62, -53, -66, -65, -55, -62, -63, -50, -48, -48, -46, -32, -32, -42, -49, -42, -39, -42, -31, -26, -52, -32, -46, -33, -29, -42, -48, -46, -32, -52, -46, -37, -50, -49, -39, -46, -47};
    }

    public GF(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(21, 30, 38), Boolean.valueOf(Settings.Secure.getInt(this.A00.A00.getContentResolver(), A00(0, 21, 22), 0) == 1));
    }
}

package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GS implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GT A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 56);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-15, -2, -2, -5, -2, 25, 18, 15, 18, 19, 27, 18, -86, -92, -72, -90, -76, -96, -79, -93, -98, -78, -92, -94, -76, -79, -92};
    }

    public GS(GT gt) {
        this.A00 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GS gs = this;
        char c = Build.VERSION.SDK_INT < 16 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gs = gs;
                    gs.A00.A02(A00(12, 15, 7), A00(5, 7, 108));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gs = gs;
                    if (gs.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gs = gs;
                    gs.A00.A02(A00(12, 15, 7), A00(0, 5, 84));
                    c = 3;
                    break;
                case 6:
                    gs = gs;
                    gs.A00.A03(A00(12, 15, 7), Boolean.valueOf(gs.A00.A00.isKeyguardSecure()));
                    c = 3;
                    break;
            }
        }
    }
}

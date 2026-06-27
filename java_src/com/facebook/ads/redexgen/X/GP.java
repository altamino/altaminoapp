package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GP implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-90, -89, -72, -85, -91, -89, -95, -82, -79, -91, -83, -89, -90, -91, -78, -78, -81, -78, -45, -52, -55, -52, -51, -43, -52};
    }

    public GP(GT gt) {
        this.A00 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GP gp = this;
        char c = Build.VERSION.SDK_INT < 22 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gp = gp;
                    gp.A00.A02(A00(0, 13, 51), A00(18, 7, 79));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gp = gp;
                    if (gp.A00.A00 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gp = gp;
                    gp.A00.A02(A00(0, 13, 51), A00(13, 5, 49));
                    c = 3;
                    break;
                case 6:
                    gp = gp;
                    gp.A00.A03(A00(0, 13, 51), Boolean.valueOf(gp.A00.A00.isDeviceLocked()));
                    c = 3;
                    break;
            }
        }
    }
}

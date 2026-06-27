package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class GC extends AbstractC0556Fu {
    private static byte[] A03;
    private Context A00;
    private Intent A01;
    private boolean A02;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A03 = new byte[]{-71, -69, -82, -68, -82, -73, -67, -104, -91, -101, -87, -90, -96, -101, 101, -96, -91, -85, -100, -91, -85, 101, -104, -102, -85, -96, -90, -91, 101, 121, 120, -117, -117, 124, -119, -112, -106, 122, 127, 120, -123, 126, 124, 123};
    }

    public GC(Context context) {
        this.A00 = context;
        this.A01 = this.A00.registerReceiver(null, new IntentFilter(A02(7, 37, 34)));
        if (this.A01 != null) {
            this.A02 = this.A01.getBooleanExtra(A02(0, 7, 52), true);
        }
    }

    public final InterfaceC0552Fq A07() {
        return new GB(this);
    }

    public final InterfaceC0552Fq A08() {
        return new G9(this);
    }

    public final InterfaceC0552Fq A09() {
        return new G6(this);
    }

    public final InterfaceC0552Fq A0A() {
        return new G7(this);
    }

    public final InterfaceC0552Fq A0B() {
        return new G5(this);
    }

    public final InterfaceC0552Fq A0C() {
        return new G8(this);
    }

    public final InterfaceC0552Fq A0D() {
        return new GA(this);
    }
}

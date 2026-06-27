package com.facebook.ads.redexgen.X;

import android.app.KeyguardManager;
import android.content.Context;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class GT extends AbstractC0556Fu {
    private static byte[] A01;
    private final KeyguardManager A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{9, 3, 23, 5, 19, -1, 16, 2};
    }

    public GT(Context context) {
        this.A00 = (KeyguardManager) context.getSystemService(A01(0, 8, 48));
    }

    public final InterfaceC0552Fq A07() {
        return new GP(this);
    }

    public final InterfaceC0552Fq A08() {
        return new GR(this);
    }

    public final InterfaceC0552Fq A09() {
        return new GQ(this);
    }

    public final InterfaceC0552Fq A0A() {
        return new GS(this);
    }
}

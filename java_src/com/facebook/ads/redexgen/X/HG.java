package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Locale;
import java.util.MissingResourceException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HG implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{89, 90, 86, 84, 89, 80, 106, 89, 84, 91, 82, 64, 84, 82, 80, 14, 13, 1, 3, 14, 7, 61, 1, 13, 23, 12, 22, 16, 27, 119, 116, 120, 122, 119, 126, 68, 117, 122, 118, 126, 90, 77, 77, 80, 77};
    }

    public HG(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            this.A00.A03(A00(0, 15, 85), Locale.getDefault().getISO3Language());
            this.A00.A03(A00(15, 14, 2), Locale.getDefault().getISO3Country());
        } catch (MissingResourceException unused) {
            this.A00.A02(A00(0, 15, 85), A00(40, 5, 95));
            this.A00.A02(A00(15, 14, 2), A00(40, 5, 95));
        }
        this.A00.A03(A00(29, 11, 123), Locale.getDefault().getDisplayName());
    }
}

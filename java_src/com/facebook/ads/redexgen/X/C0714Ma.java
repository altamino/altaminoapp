package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ma, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0714Ma extends MX {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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

    private static void A01() {
        A00 = new byte[]{-83, -68, -68, -72, -75, -81, -83, -64, -75, -69, -70, 123, -60, 121, -61, -61, -61, 121, -78, -69, -66, -71, 121, -63, -66, -72, -79, -70, -81, -69, -80, -79, -80, -121, -81, -76, -83, -66, -65, -79, -64, -119, -95, -96, -110, 121, -124};
    }

    public C0714Ma(String str, C0718Me c0718Me) {
        super(str, null);
        this.A00 = MZ.A05;
        this.A02 = str;
        this.A01 = A00(0, 47, 55);
        if (c0718Me != null) {
            this.A03 = c0718Me.A08();
        }
    }

    public C0714Ma(String str, C0718Me c0718Me, String str2, byte[] bArr) {
        super(str, c0718Me);
        this.A00 = MZ.A05;
        this.A01 = str2;
        this.A03 = bArr;
    }
}

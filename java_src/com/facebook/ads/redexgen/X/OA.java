package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class OA implements O7 {
    private static byte[] A03;
    private int A00;

    @Nullable
    private String A01;
    private final O7 A02;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{101, 101, 87, 90};
    }

    public OA(O7 o7) {
        this.A02 = o7;
    }

    private void A01() {
        if (this.A01 != null) {
            this.A02.A6c(this.A01 + A00(0, 4, 1) + this.A00);
            this.A01 = null;
            this.A00 = 0;
        }
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void A6c(String str) {
        OA oa = this;
        String strA04 = null;
        char c = OE.A0A(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    oa = oa;
                    str = str;
                    oa.A01();
                    oa.A02.A6c(str);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    oa = oa;
                    str = str;
                    strA04 = OE.A04(str);
                    if (!strA04.equals(oa.A01)) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    oa = oa;
                    oa.A00++;
                    c = 3;
                    break;
                case 6:
                    oa = oa;
                    strA04 = strA04;
                    oa.A01();
                    oa.A01 = strA04;
                    oa.A00 = 1;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.O7
    public final void flush() {
        A01();
        this.A02.flush();
    }
}

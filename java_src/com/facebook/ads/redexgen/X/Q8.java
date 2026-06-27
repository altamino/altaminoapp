package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q8 extends AbstractC02052b {
    private static byte[] A01;
    public final /* synthetic */ Q9 A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 105);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{31, 19, 17, 82, 26, 29, 31, 25, 30, 19, 19, 23, 82, 29, 24, 15, 82, 21, 18, 8, 25, 14, 15, 8, 21, 8, 21, 29, 16, 82, 21, 17, 12, 14, 25, 15, 15, 21, 19, 18, 82, 16, 19, 27, 27, 25, 24};
    }

    public Q8(Q9 q9) {
        this.A00 = q9;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        Q8 q8 = this;
        char c = !q8.A00.A0D.A07() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    q8 = q8;
                    q8.A00.A0D.A05();
                    if (!TextUtils.isEmpty(((AbstractC0810Pt) q8.A00).A08.A0D())) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    q8 = q8;
                    ((AbstractC0810Pt) q8.A00).A09.A4H(((AbstractC0810Pt) q8.A00).A08.A0D(), new SN().A04(q8.A00.A0Q).A03(q8.A00.A0D).A05(((AbstractC0810Pt) q8.A00).A08.A0F()).A07());
                    if (q8.A00.getAudienceNetworkListener() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q8 = q8;
                    q8.A00.getAudienceNetworkListener().A2f(A00(0, 47, 21));
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}

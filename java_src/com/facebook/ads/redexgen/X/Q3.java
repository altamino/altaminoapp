package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q3 extends C9P {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-12, -25, -30, -29, -19, -57, -20, -14, -29, -16, -15, -14, -25, -14, -33, -22, -61, -12, -29, -20, -14};
    }

    public Q3(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(KF kf) {
        Q3 q3 = this;
        char c = q3.A00.getAudienceNetworkListener() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q3 = q3;
                    kf = kf;
                    q3.A00.getAudienceNetworkListener().A2g(A00(0, 21, 106), kf);
                    c = 3;
                    break;
                case 3:
                    q3 = q3;
                    if (q3.A00.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q3 = q3;
                    kf = kf;
                    q3.A00.A01.A04(kf);
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}

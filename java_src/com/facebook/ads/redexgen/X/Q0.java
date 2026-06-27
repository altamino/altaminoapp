package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q0 extends C9N {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 7);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-39, -52, -57, -56, -46, -84, -47, -41, -56, -43, -42, -41, -52, -41, -60, -49, -88, -39, -56, -47, -41};
    }

    public Q0(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(K4 k4) {
        Q0 q0 = this;
        char c = !q0.A00.A08 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q0 = q0;
                    q0.A00.A0Q.A0T();
                    q0.A00.A08 = true;
                    c = 3;
                    break;
                case 3:
                    q0 = q0;
                    if (q0.A00.getAudienceNetworkListener() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q0 = q0;
                    k4 = k4;
                    q0.A00.getAudienceNetworkListener().A2g(A00(0, 21, 92), k4);
                    c = 5;
                    break;
                case 5:
                    q0 = q0;
                    if (q0.A00.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    q0 = q0;
                    k4 = k4;
                    q0.A00.A01.A05(k4);
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }
}

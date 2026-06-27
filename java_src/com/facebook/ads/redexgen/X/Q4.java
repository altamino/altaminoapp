package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q4 extends C9T {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{36, 59, 54, 55, 61, 27, 60, 38, 55, 32, 33, 38, 59, 38, 51, 62, 23, 36, 55, 60, 38};
    }

    public Q4(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(LN ln) {
        Q4 q4 = this;
        q4.A00.A0S.set(true);
        char c = q4.A00.getAudienceNetworkListener() != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q4 = q4;
                    ln = ln;
                    q4.A00.getAudienceNetworkListener().A2g(A00(0, 21, 84), ln);
                    c = 3;
                    break;
                case 3:
                    q4 = q4;
                    if (q4.A00.A01 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q4 = q4;
                    ln = ln;
                    q4.A00.A01.A0R(ln);
                    c = 5;
                    break;
                case 5:
                    q4 = q4;
                    if (((AbstractC0810Pt) q4.A00).A0B == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    q4 = q4;
                    ((AbstractC0810Pt) q4.A00).A0B.setToolbarActionMode(q4.A00.getCloseButtonStyle());
                    c = 7;
                    break;
                case 7:
                    return;
            }
        }
    }
}

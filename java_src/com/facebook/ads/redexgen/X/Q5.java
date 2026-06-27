package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class Q5 extends C9L {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{126, 97, 108, 109, 103, 65, 102, 124, 109, 122, 123, 124, 97, 124, 105, 100, 77, 126, 109, 102, 124};
    }

    public Q5(Q9 q9) {
        this.A00 = q9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(K2 k2) {
        Q5 q5 = this;
        q5.A00.A05 = true;
        char c = !q5.A00.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    q5 = q5;
                    q5.A00.A0R.set(q5.A00.A0F.A0U());
                    q5.A00.A0F();
                    c = 3;
                    break;
                case 3:
                    q5 = q5;
                    if (q5.A00.getAudienceNetworkListener() == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    q5 = q5;
                    k2 = k2;
                    q5.A00.getAudienceNetworkListener().A2g(A00(0, 21, 94), k2);
                    c = 5;
                    break;
                case 5:
                    q5 = q5;
                    if (q5.A00.A01 == null) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    q5 = q5;
                    k2 = k2;
                    q5.A00.A01.A0S(k2);
                    c = 7;
                    break;
                case 7:
                    q5 = q5;
                    if (!q5.A00.A0E()) {
                        c = '\b';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\b':
                    q5 = q5;
                    if (!q5.A00.A0F.isShown()) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    q5 = q5;
                    q5.A00.A0E();
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    q5 = q5;
                    q5.A00.setOnAdShownListener(q5.A00.A0E);
                    c = '\n';
                    break;
            }
        }
    }
}

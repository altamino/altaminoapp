package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0807Pq extends AbstractC02052b {
    private static byte[] A01;
    public final /* synthetic */ C0811Pu A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-4, 8, 6, -57, -1, -6, -4, -2, -5, 8, 8, 4, -57, -6, -3, 12, -57, 2, 7, 13, -2, 11, 12, 13, 2, 13, 2, -6, 5, -57, 2, 6, 9, 11, -2, 12, 12, 2, 8, 7, -57, 5, 8, 0, 0, -2, -3};
    }

    public C0807Pq(C0811Pu c0811Pu) {
        this.A00 = c0811Pu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        C0807Pq c0807Pq = this;
        char c = !c0807Pq.A00.A01.A07() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0807Pq = c0807Pq;
                    c0807Pq.A00.A01.A05();
                    c0807Pq.A00.A09.A4H(c0807Pq.A00.A08.A0D(), new SN().A04(c0807Pq.A00.A03).A03(c0807Pq.A00.A01).A05(c0807Pq.A00.A08.A0F()).A07());
                    if (c0807Pq.A00.getAudienceNetworkListener() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0807Pq = c0807Pq;
                    c0807Pq.A00.getAudienceNetworkListener().A2f(A00(0, 47, 117));
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }
}

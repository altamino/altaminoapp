package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0919Tz extends AbstractC02052b {
    private static byte[] A01;
    public final /* synthetic */ C0902Th A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{75, 71, 69, 6, 78, 73, 75, 77, 74, 71, 71, 67, 6, 73, 76, 91, 6, 65, 70, 92, 77, 90, 91, 92, 65, 92, 65, 73, 68, 6, 65, 69, 88, 90, 77, 91, 91, 65, 71, 70, 6, 68, 71, 79, 79, 77, 76};
    }

    public C0919Tz(C0902Th c0902Th) {
        this.A00 = c0902Th;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02052b
    public final void A02() {
        C0919Tz c0919Tz = this;
        char c = !c0919Tz.A00.A0B.A07() ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    c0919Tz = c0919Tz;
                    c0919Tz.A00.A0B.A05();
                    if (c0919Tz.A00.getAudienceNetworkListener() == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0919Tz = c0919Tz;
                    c0919Tz.A00.getAudienceNetworkListener().A2f(A00(0, 47, 87));
                    c = 4;
                    break;
                case 4:
                    c0919Tz = c0919Tz;
                    if (!TextUtils.isEmpty(c0919Tz.A00.A09)) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0919Tz = c0919Tz;
                    ((AbstractC0810Pt) ((AbstractC0810Pt) c0919Tz.A00)).A09.A4H(c0919Tz.A00.A09, new SN().A04(c0919Tz.A00.A08).A03(c0919Tz.A00.A0B).A05(((AbstractC0810Pt) ((AbstractC0810Pt) c0919Tz.A00)).A08.A0F()).A07());
                    c = 6;
                    break;
                case 6:
                    return;
            }
        }
    }
}

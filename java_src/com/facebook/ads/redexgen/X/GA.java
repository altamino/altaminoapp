package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GA implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GC A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-77, -92, -84, -81, -92, -79, -96, -77, -76, -79, -92, 12, 11, 30, 30, 15, 28, 35, 9, 30, 15, 23, 26, 15, 28, 11, 30, 31, 28, 15, -66, -73, -76, -73, -72, -64, -73};
    }

    public GA(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GA ga = this;
        char c = ga.A00.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ga = ga;
                    if (ga.A00.A01 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    ga = ga;
                    ga.A00.A02(A00(11, 19, 127), A00(30, 7, 30));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    ga = ga;
                    ga.A00.A03(A00(11, 19, 127), Float.valueOf(ga.A00.A01.getIntExtra(A00(0, 11, 20), 0) / 10.0f));
                    c = 4;
                    break;
            }
        }
    }
}

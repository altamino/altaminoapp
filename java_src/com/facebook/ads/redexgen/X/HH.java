package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HH implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ HK A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{83, 81, 92, 87, 82, 91, 97, 92, 71, 74, 91, 77, 97, 76, 70, 82, 80, 93, 86, 83, 90, 96, 93, 70, 75, 90, 76, 96, 75, 71, 118, 109, 118, 99, 110, 93, 96, 123, 118, 103, 113, 93, 118, 122, 73, 82, 73, 92, 81, 98, 95, 68, 73, 88, 78, 98, 79, 69};
    }

    public HH(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(44, 14, 38), Long.valueOf(FH.A02(TrafficStats.getTotalRxBytes())));
        this.A00.A03(A00(30, 14, 25), Long.valueOf(FH.A02(TrafficStats.getTotalTxBytes())));
        this.A00.A03(A00(0, 15, 37), Long.valueOf(FH.A02(TrafficStats.getMobileRxBytes())));
        this.A00.A03(A00(15, 15, 36), Long.valueOf(FH.A02(TrafficStats.getMobileTxBytes())));
    }
}

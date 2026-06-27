package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.TimeZone;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HD implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 123);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{109, 112, 116, 124, 70, 99, 118, 119, 124, 70, 119, 120, 116, 124, 53, 36, 36, 11, 36, 53, 55, 63, 53, 51, 49, 11, 58, 53, 57, 49, 124, 97, 101, 109, 87, 114, 103, 102, 109};
    }

    public HD(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A03(A00(14, 16, 47), this.A00.A00.getPackageName());
        this.A00.A03(A00(0, 14, 98), TimeZone.getDefault().getDisplayName());
        this.A00.A03(A00(30, 9, 115), Integer.valueOf(TimeZone.getDefault().getRawOffset()));
    }
}

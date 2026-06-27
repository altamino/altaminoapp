package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class HA implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{68, 75, 78, 66, 73, 83, 120, 78, 67, 120, 69, 70, 84, 66, 122, 107, 98, 107, 126, 102, 97, 96, 119, 32, 98, 122, 107, 65, 96, 77, 106, 99, 111, 74, 107, 120, 103, 109, 107, 3, 14, 0, 19, 5, 62, 17, 13, 0, 21, 7, 14, 19, 12, 105, 126, 98, 103, 111, 84, 104, 99, 106, 121, 106, 104, 127, 110, 121, 98, 120, 127, 98, 104, 120, 57, 33, 48, 10, 58, 59, 10, 54, 49, 56, 52, 77, 89, 81, 73, 99, 76, 78, 83, 76, 89, 78, 72, 85, 89, 79, 91, 70, 7, 74, 70, 68, 7, 78, 70, 70, 78, 69, 76, 7, 74, 69, 64, 76, 71, 93, 64, 77, 75, 72, 90, 76, 7, 26, 91, 23, 0, 28, 25, 17, 91, 22, 29, 20, 7, 20, 22, 1, 16, 7, 28, 6, 1, 28, 22, 6, 101, 120, 57, 124, 114, 101, 121, 114, 123, 57, 102, 114, 122, 98, 46, 51, 114, 62, 51, 61, 46, 56, 114, 44, 48, 61, 40, 58, 51, 46, 49};
    }

    public HA(HK hk) {
        this.A00 = hk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        this.A00.A06(A00(0, 14, 65), A00(100, 26, 79));
        this.A00.A06(A00(39, 14, 7), A00(164, 17, 58));
        this.A00.A06(A00(53, 21, 109), A00(126, 24, 19));
        this.A00.A06(A00(74, 11, 51), A00(14, 25, 104));
        this.A00.A06(A00(85, 15, 90), A00(150, 14, 113));
    }
}

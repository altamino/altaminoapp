package com.facebook.ads.redexgen.X;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NI extends NF {
    private static byte[] A01;
    private final long A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{38, 10, 19, 75, 24, 2, 17, 14, 75, 6, 30, 24, 31, 75, 9, 14, 75, 27, 4, 24, 2, 31, 2, 29, 14, 75, 5, 30, 6, 9, 14, 25, 74};
    }

    public NI(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException(A00(0, 33, 21));
        }
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.NF
    public final boolean A06(File file, long j, int i) {
        boolean z = false;
        char c = j <= this.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.NF, com.facebook.ads.redexgen.X.N8
    public final /* bridge */ /* synthetic */ void A7B(File file) throws IOException {
        super.A7B(file);
    }
}

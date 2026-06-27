package com.facebook.ads.redexgen.X;

import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum BX {
    A03(1),
    A07(4),
    A09(2),
    A06(Build.VERSION.SDK_INT >= 19 ? 20 : -1),
    A0A(0),
    A0B(8),
    A0D(Build.VERSION.SDK_INT >= 19 ? 18 : -1),
    A08(5),
    A05(6),
    A04(13),
    A0C(12);

    private static byte[] A01;
    private int A00;

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
        A01 = new byte[]{123, 121, 100, 115, 98, 102, 98, 127, 114, 116, 120, 110, 101, 120, 100, 121, 57, 58, 41, 52, 54, 62, 47, 62, 41, 36, 40, 62, 53, 40, 52, 41, 24, 5, 30, 18, 25, 3, 22, 3, 30, 24, 25, 8, 4, 18, 25, 4, 24, 5, 78, 89, 80, 93, 72, 85, 74, 89, 67, 84, 73, 81, 85, 88, 85, 72, 69, 67, 79, 89, 82, 79, 83, 78, 109, 97, 103, 110, 101, 116, 111, 109, 101, 116, 101, 114, 127, 115, 101, 110, 115, 111, 114, 102, 100, 110, 108, 96, 102, 111, 100, 117, 104, 98, 126, 115, 110, 117, 96, 117, 104, 110, 111, 126, 114, 100, 111, 114, 110, 115, 106, 109, 124, 105, 102, 125, 124, 109, 124, 122, 109, 118, 107, 102, 106, 124, 119, 106, 118, 107, 101, 105, 102, 109, 97, 106, 112, 123, 112, 97, 105, 116, 97, 118, 101, 112, 113, 118, 97, 123, 119, 97, 106, 119, 107, 118, 105, 107, 107, 109, 100, 109, 122, 103, 101, 109, 124, 109, 122, 119, 123, 109, 102, 123, 103, 122, 16, 14, 5, 24, 4, 20, 24, 7, 18, 8, 4, 18, 25, 4, 24, 5, 44, 41, 39, 40, 52, 63, 51, 37, 46, 51, 47, 50};
    }

    static {
        A01();
    }

    BX(int i) {
        this.A00 = i;
    }

    public final int A02() {
        return this.A00;
    }
}

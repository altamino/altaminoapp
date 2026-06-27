package com.facebook.ads.redexgen.X;

import android.support.annotation.VisibleForTesting;
import android.util.Log;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OO {
    private static byte[] A00;

    @VisibleForTesting
    public static final ON A01 = null;

    static {
        A07();
    }

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A07() {
        A00 = new byte[]{24, 7, 27, 26, 29, 110, 76, 67, 10, 89, 13, 75, 66, 95, 64, 76, 89, 13, 89, 68, 64, 72, 3, 48, 59, 38, 115};
    }

    private OO() {
    }

    public static long A00() {
        long jCurrentTimeMillis = 0;
        char c = A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jCurrentTimeMillis = A01.currentTimeMillis();
                    c = 3;
                    break;
                case 3:
                    return jCurrentTimeMillis;
                case 4:
                    jCurrentTimeMillis = System.currentTimeMillis();
                    c = 3;
                    break;
            }
        }
    }

    private static long A01(long j) {
        return System.currentTimeMillis() - j;
    }

    public static String A02(double d) {
        try {
            return String.format(Locale.US, A03(23, 4, 73), Double.valueOf(d));
        } catch (Exception e) {
            Log.e(OO.class.getSimpleName(), A03(5, 18, 113), e);
            return A03(0, 5, 117);
        }
    }

    public static String A04(long j) {
        return String.valueOf(A01(j));
    }

    @Deprecated
    public static String A05(long j) {
        return A02(j / 1000.0d);
    }

    public static String A06(long j) {
        return Long.toString(j);
    }
}

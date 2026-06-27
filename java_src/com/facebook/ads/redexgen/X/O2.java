package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import io.agora.rtc.Constants;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class O2 {
    private static double A00;
    private static double A01;
    private static String A02;
    private static byte[] A03;
    private static final String A04;
    private static volatile boolean A05;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A03 = new byte[]{-70, -72, -57, -90, -72, -58, -58, -68, -62, -63, -100, -73, 115, -74, -76, -65, -65, -72, -73, 115, -54, -68, -57, -69, -62, -56, -57, 115, -68, -63, -68, -57, -68, -76, -65, -68, -51, -76, -57, -68, -62, -63, -127, -51, -64, -53, -54, -51, -49, -92, -55, -60, -49, -98, -54, -56, -53, -57, -64, -49, -64, -65, -83, -85, -70, -103, -85, -71, -71, -81, -75, -76, -104, -89, -76, -86, -75, -77, 102, -87, -89, -78, -78, -85, -86, 102, -67, -81, -70, -82, -75, -69, -70, 102, -81, -76, -81, -70, -81, -89, -78, -81, -64, -89, -70, -81, -75, -76, 116, -77, -79, -64, -97, -79, -65, -65, -75, -69, -70, -96, -75, -71, -79, 108, -81, -83, -72, -72, -79, -80, 108, -61, -75, -64, -76, -69, -63, -64, 108, -75, -70, -75, -64, -75, -83, -72, -75, -58, -83, -64, -75, -69, -70, 122, 122, -87, 121, 116, -88, -89, 122, -90, -41, -23, -9, -9, -19, -13, -14, -92, -24, -27, -8, -27, -92, -19, -14, -19, -8, -19, -27, -16, -19, -2, -23, -24};
    }

    static {
        A05();
        A04 = O2.class.getSimpleName();
        A05 = false;
    }

    private O2() {
    }

    public static synchronized double A00() {
        if (BuildConfigApi.isDebug() && !A05) {
            Log.w(A04, A03(62, 47, 39));
        }
        return A00;
    }

    public static synchronized double A01() {
        if (BuildConfigApi.isDebug() && !A05) {
            Log.w(A04, A03(109, 45, 45));
        }
        return A01;
    }

    public static String A02() {
        char c = BuildConfigApi.isDebug() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (!A05) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    Log.w(A04, A03(0, 43, 52));
                    c = 4;
                    break;
                case 4:
                    return A02;
            }
        }
    }

    public static void A04() {
        if (!A05) {
            synchronized (A04) {
                if (!A05) {
                    A05 = true;
                    A01 = System.currentTimeMillis() / 1000.0d;
                    A02 = UUID.randomUUID().toString();
                    A00 = Math.random();
                    A06();
                }
            }
        }
    }

    private static void A06() {
        C0695Lf.A05(A03(43, 19, 60), A03(162, 24, 101), A03(Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 8, 36));
    }
}

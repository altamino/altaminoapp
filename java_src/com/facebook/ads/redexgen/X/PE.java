package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class PE {
    private static byte[] A00;
    private static final String A01;

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 33);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-99, -100, -92, -110, -97, -124, -73, -94, -92, -81, -77, -88, -82, -83, 95, -88, -83, 95, -78, -94, -79, -92, -92, -83, 95, -88, -83, -77, -92, -79, -96, -94, -77, -88, -75, -92, 95, -94, -89, -92, -94, -86, 107, 95, -96, -78, -78, -76, -84, -88, -83, -90, 95, -88, -83, -77, -92, -79, -96, -94, -77, -88, -75, -92, 109, -86, -95, -85, -93, -79};
    }

    static {
        A01();
        A01 = PE.class.getSimpleName();
    }

    private PE() {
    }

    public static boolean A02(Context context) {
        boolean z = false;
        char c = A03(context) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    if (!PF.A03(context)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public static boolean A03(Context context) {
        PowerManager powerManager = null;
        boolean zIsScreenOn = true;
        char c = context == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return zIsScreenOn;
                case 3:
                    powerManager = (PowerManager) context.getSystemService(A00(0, 5, 12));
                    if (Build.VERSION.SDK_INT < 20) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    try {
                        powerManager = powerManager;
                        zIsScreenOn = powerManager.isInteractive();
                        c = 2;
                        break;
                    } catch (Exception e) {
                        Log.e(A01, A00(5, 60, 30), e);
                        P7.A07(context, A00(65, 5, 23), P8.A1b, new PA(e));
                        c = 2;
                        break;
                    }
                case '\n':
                    powerManager = powerManager;
                    zIsScreenOn = powerManager.isScreenOn();
                    c = 2;
                    break;
            }
        }
    }
}

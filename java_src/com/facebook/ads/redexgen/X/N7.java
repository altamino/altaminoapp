package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import io.agora.rtc.Constants;
import java.io.File;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class N7 {
    private static byte[] A00;

    static {
        A04();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A00 = new byte[]{-117, -87, -74, 111, -68, 104, -84, -83, -82, -79, -74, -83, 104, -69, -63, -69, -68, -83, -75, 104, -85, -87, -85, -80, -83, 104, -84, -79, -70, -83, -85, -68, -73, -70, -63, 105, 104, 111, -27, -40, -45, -44, -34, -100, -46, -48, -46, -41, -44, -84, -59, -72, -71, -61, -68, 119, -53, -58, 119, -70, -55, -68, -72, -53, -68, 119, -68, -49, -53, -68, -55, -59, -72, -61, 119, -70, -72, -70, -65, -68, 119, -69, -64, -55, -68, -70, -53, -58, -55, -48, 107, -115, -118, -109, -108, 94, 124, 126, -125, -128, -112, -115, -96, -115, 115, -88, -91, -72, -91, 115, -88, -91, -72, -91, 115, -101, -56, -66, -52, -55, -61, -66, -78, -26, -28, -26, -21, -24, -78, -70, -72, -70, -65, -68, 112, -66, 114, 107, -62, -76, -73, -73, 107, -83, -80, 107, -64, -66, -80, -81, 121, -76, -74, -68, -75, -69, -84, -85};
    }

    private N7() {
    }

    public static File A00(Context context) {
        File cacheDir = A02(context, true);
        return new File(cacheDir, A03(38, 11, 100));
    }

    private static File A01(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), A03(115, 7, 79)), A03(100, 4, 33)), context.getPackageName()), A03(129, 5, 76));
        char c = !file.exists() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.mkdirs()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    Log.w(A03(90, 10, 16), A03(49, 41, 76));
                    file = null;
                    c = 4;
                    break;
                case 4:
                    return file;
            }
        }
    }

    private static File A02(Context context, boolean z) {
        String externalStorageState = null;
        File file = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        externalStorageState = Environment.getExternalStorageState();
                        c = 5;
                        break;
                    } catch (NullPointerException unused) {
                        externalStorageState = A03(115, 0, 71);
                        c = 5;
                        break;
                    }
                case 5:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    externalStorageState = externalStorageState;
                    if (!A03(Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 7, 60).equals(externalStorageState)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    context = context;
                    file = A01(context);
                    c = '\b';
                    break;
                case '\b':
                    if (file != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    context = context;
                    file = context.getCacheDir();
                    c = '\n';
                    break;
                case '\n':
                    if (file != null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    context = context;
                    String str = A03(104, 11, 57) + context.getPackageName() + A03(122, 7, 120);
                    Log.w(A03(90, 10, 16), A03(0, 38, 61) + str + A03(134, 17, 64));
                    file = new File(str);
                    c = '\f';
                    break;
                case '\f':
                    return file;
            }
        }
    }
}

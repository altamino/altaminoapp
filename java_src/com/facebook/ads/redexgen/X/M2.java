package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class M2 {
    private static byte[] A00;

    static {
        A05();
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{-39, -27, -27, -31, -28, -85, -96, -96, -40, -29, -46, -31, -39, -97, -41, -46, -44, -42, -45, -32, -32, -36, -97, -44, -32, -34, -96, -89, -86, -92, -86, -90, -92, -86, -91, -95, -86, -86, -88, -86, -95, -94, -96, -45, -26, -40, -28, 7, 19, 19, 15, 18, -39, -50, -50, 22, 22, 22, -51, -60, 18, -51, 5, 0, 2, 4, 1, 14, 14, 10, -51, 2, 14, 12, -50, 0, 3, 13, 22, -2, 11, 14, 6, 6, 8, 13, 6, -50, -18, -6, -6, -10, -7, -64, -75, -75, -3, -3, -3, -76, -20, -25, -23, -21, -24, -11, -11, -15, -76, -23, -11, -13, -75, -25, -22, -12, -3, -27, -14, -11, -19, -19, -17, -12, -19, -75, 28, 40, 40, 36, 39, -18, -29, -29, 27, 38, 21, 36, 28, -30, -39, 39, -30, 26, 21, 23, 25, 22, 35, 35, 31, -30, 23, 35, 33, -29, -22, -19, -25, -19, -23, -25, -19, -24, -28, -19, -19, -21, -19, -28, -27, -29, 22, 41, 27, 39, -21, -21, -21, 45, 57, 57, 53, 56, -1, -12, -12, 44, 55, 38, 53, 45, -13, -22, 56, -13, 43, 38, 40, 42, 39, 52, 52, 48, -13, 40, 52, 50, -12, 51, 42, 57, 60, 52, 55, 48, 36, 38, 41, 56, 36, 40, 52, 50, 50, 52, 51, -47, -35, -35, -39, -36, -93, -104, -104, -32, -32, -32, -105, -114, -36, -105, -49, -54, -52, -50, -53, -40, -40, -44, -105, -52, -40, -42, -104, -54, -51, -41, -32, -56, -36, -30, -41, -52, -18, -6, -6, -10, -7, -64, -75, -75, -3, -3, -3, -76, -20, -25, -23, -21, -24, -11, -11, -15, -76, -23, -11, -13, -75, -25, -22, -12, -3, -27, -7, -1, -12, -23, 54, 66, 66, 62, 65, 8, -3, -3, 53, 64, 47, 62, 54, -4, 52, 47, 49, 51, 48, 61, 61, 57, -4, 49, 61, 59, -3, 60, 51, 66, 69, 61, 64, 57, 45, 47, 50, 65, 45, 49, 61, 59, 59, 61, 60};
    }

    private M2() {
    }

    public static String A00() {
        String prefix = null;
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        char c = TextUtils.isEmpty(urlPrefix) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    prefix = A03(298, 45, 126);
                    c = 3;
                    break;
                case 3:
                    return prefix;
                case 4:
                    urlPrefix = urlPrefix;
                    prefix = String.format(Locale.US, A03(179, 48, 117), urlPrefix);
                    c = 3;
                    break;
            }
        }
    }

    public static String A01() {
        String prefix = null;
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        char c = TextUtils.isEmpty(urlPrefix) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    prefix = A03(0, 47, 33);
                    c = 3;
                    break;
                case 3:
                    return prefix;
                case 4:
                    urlPrefix = urlPrefix;
                    prefix = String.format(Locale.US, A03(126, 50, 100), urlPrefix);
                    c = 3;
                    break;
            }
        }
    }

    public static String A02() {
        String prefix = null;
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        char c = TextUtils.isEmpty(urlPrefix) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    prefix = A03(264, 34, 54);
                    c = 3;
                    break;
                case 3:
                    return prefix;
                case 4:
                    urlPrefix = urlPrefix;
                    prefix = String.format(Locale.US, A03(227, 37, 25), urlPrefix);
                    c = 3;
                    break;
            }
        }
    }

    public static String A04(Context context) {
        String prefix = null;
        String strA0b = null;
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        char c = TextUtils.isEmpty(urlPrefix) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    prefix = A03(88, 38, 54);
                    c = 3;
                    break;
                case 3:
                    context = context;
                    strA0b = K1.A0b(context);
                    if (!TextUtils.isEmpty(strA0b)) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    String url = prefix;
                    return url;
                case 5:
                    strA0b = strA0b;
                    prefix = prefix.replace(A03(176, 3, 36), strA0b);
                    c = 4;
                    break;
                case 6:
                    urlPrefix = urlPrefix;
                    prefix = String.format(Locale.US, A03(47, 41, 79), urlPrefix);
                    c = 3;
                    break;
            }
        }
    }
}

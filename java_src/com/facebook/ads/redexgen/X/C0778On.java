package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.On, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0778On {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{22, 0, 17, 40, 12, 29, 0, 1, 38, 10, 11, 17, 0, 11, 17, 40, 10, 1, 0, 74, 73, 68, 94, 95, 17, 73, 71, 74, 69, 64, 56, 36, 36, 32, 35, 106, 127, 127, 39, 39, 39, 126, 54, 49, 51, 53, 50, 63, 63, 59, 126, 51, 63, 61, 127, 65, 93, 93, 89, 90, 19, 6, 6, 94, 94, 94, 7, 12, 90, 7, 79, 72, 74, 76, 75, 70, 70, 66, 7, 74, 70, 68};
    }

    private C0778On() {
    }

    public static String A00() {
        String urlPrefix = null;
        String urlPrefix2 = AdInternalSettings.getUrlPrefix();
        char c = TextUtils.isEmpty(urlPrefix2) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    urlPrefix = A01(30, 25, 88);
                    c = 3;
                    break;
                case 3:
                    return urlPrefix;
                case 4:
                    urlPrefix2 = urlPrefix2;
                    urlPrefix = String.format(Locale.US, A01(55, 27, 33), urlPrefix2);
                    c = 3;
                    break;
            }
        }
    }

    public static void A03(WebView webView) {
        webView.loadUrl(A01(19, 11, 35));
        webView.clearCache(true);
    }

    @TargetApi(21)
    public static void A04(WebView webView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        WebSettings settings = webView.getSettings();
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        } else {
            try {
                WebSettings.class.getMethod(A01(0, 19, 109), new Class[0]).invoke(settings, 0);
            } catch (Exception unused) {
            }
        }
    }
}

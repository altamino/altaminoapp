package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
final class zzbjd {

    @VisibleForTesting
    private static Boolean zzemt;

    private zzbjd() {
    }

    @TargetApi(19)
    private static boolean zzb(WebView webView) {
        boolean zBooleanValue;
        synchronized (zzbjd.class) {
            if (zzemt == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    zzemt = true;
                } catch (IllegalStateException unused) {
                    zzemt = false;
                }
                zBooleanValue = zzemt.booleanValue();
            } else {
                zBooleanValue = zzemt.booleanValue();
            }
        }
        return zBooleanValue;
    }

    @TargetApi(19)
    static void zza(WebView webView, String str) {
        if (PlatformVersion.isAtLeastKitKat() && zzb(webView)) {
            webView.evaluateJavascript(str, null);
        } else {
            String strValueOf = String.valueOf(str);
            webView.loadUrl(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
        }
    }
}

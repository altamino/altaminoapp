package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* loaded from: classes2.dex */
final class zzuw implements Runnable {
    final /* synthetic */ zzuu zzbvm;
    private ValueCallback<String> zzbvn = new zzux(this);
    final /* synthetic */ zzuo zzbvo;
    final /* synthetic */ WebView zzbvp;
    final /* synthetic */ boolean zzbvq;

    zzuw(zzuu zzuuVar, zzuo zzuoVar, WebView webView, boolean z) {
        this.zzbvm = zzuuVar;
        this.zzbvo = zzuoVar;
        this.zzbvp = webView;
        this.zzbvq = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzbvp.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzbvp.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzbvn);
            } catch (Throwable unused) {
                this.zzbvn.onReceiveValue("");
            }
        }
    }
}

package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tt, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0913Tt extends WebViewClient {
    public final /* synthetic */ C0914Tu A00;

    private C0913Tt(C0914Tu c0914Tu) {
        this.A00 = c0914Tu;
    }

    public /* synthetic */ C0913Tt(C0914Tu c0914Tu, C0906Tl c0906Tl) {
        this(c0914Tu);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.A00.A0D.A02(KW.A0S, null);
        this.A00.A0O();
        this.A00.A06 = true;
        this.A00.A0G();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        String string = null;
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        this.A00.A0O();
        this.A00.A0D.A02(KW.A0R, null);
        char c = Build.VERSION.SDK_INT >= 23 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    webResourceError = webResourceError;
                    string = webResourceError.getDescription().toString();
                    c = 3;
                    break;
                case 3:
                    this.A00.A0H.A04(P8.A0p, string);
                    return;
                case 4:
                    string = "";
                    c = 3;
                    break;
            }
        }
    }
}

package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3R, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C3R extends WebViewClient {
    public boolean A00 = false;
    public final C3A A01;
    public final C2E A02;
    public final boolean A03;

    public C3R(C3A c3a, C2E c2e, boolean z) {
        this.A01 = c3a;
        this.A02 = c2e;
        this.A03 = z;
    }

    private void A00() {
        if (this.A02 != null) {
            this.A02.A61();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01(WebResourceError webResourceError) {
        C3R c3r = this;
        char c = c3r.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3r = c3r;
                    c3r.A02.A60(AdError.CACHE_ERROR);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3r = c3r;
                    c3r.A00();
                    c = 3;
                    break;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.A00 = true;
        A00();
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        new Handler().postDelayed(new AnonymousClass27() { // from class: com.facebook.ads.redexgen.X.3Q
            @Override // com.facebook.ads.redexgen.X.AnonymousClass27
            public final void A03() {
                if (this.A00.A00) {
                    return;
                }
                this.A00.A01(null);
            }
        }, this.A01.A08());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.A00 = true;
        A01(webResourceError);
    }
}

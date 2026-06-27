package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.webkit.WebView;
import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.3P, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public class C3P implements AnonymousClass20 {
    public final Context A00;
    public final C3A A01;
    public final C2E A02;
    public final C0607Ht A03;
    public final boolean A04;

    private C3P(Context context, C2E c2e, C0607Ht c0607Ht, C3A c3a, boolean z) {
        this.A00 = context;
        this.A02 = c2e;
        this.A03 = c0607Ht;
        this.A01 = c3a;
        this.A04 = z;
    }

    public /* synthetic */ C3P(Context context, C2E c2e, C0607Ht c0607Ht, C3A c3a, boolean z, C3O c3o) {
        this(context, c2e, c0607Ht, c3a, z);
    }

    private void A00() {
        WebView webView = new WebView(this.A00);
        webView.getSettings().setCacheMode(1);
        webView.setWebViewClient(new C3R(this.A01, this.A02, this.A04));
        webView.loadUrl(this.A01.A0E());
    }

    private void A01(boolean z) {
        C3P c3p = this;
        String strA0E = null;
        char c = c3p.A01.A09() == C3C.A05 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3p = c3p;
                    c3p.A00();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3p = c3p;
                    strA0E = c3p.A01.A0E();
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c3p = c3p;
                    if (c3p.A01.A09() != C3C.A03) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c3p = c3p;
                    strA0E = c3p.A03.A0P(c3p.A01.A0E());
                    c = 7;
                    break;
                case 7:
                    c3p = c3p;
                    strA0E = strA0E;
                    c3p.A01.A0G(strA0E);
                    c3p.A02.A61();
                    c = 3;
                    break;
                case '\b':
                    c3p = c3p;
                    strA0E = c3p.A03.A0R(c3p.A01.A0E());
                    c = 7;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A50() {
        C3P c3p = this;
        char c = c3p.A04 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c3p = c3p;
                    c3p.A02.A60(AdError.CACHE_ERROR);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c3p = c3p;
                    c3p.A01(false);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass20
    public final void A57() {
        A01(true);
    }
}

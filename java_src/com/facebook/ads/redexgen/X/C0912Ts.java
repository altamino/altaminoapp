package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ts, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0912Ts extends AbstractC0777Om {
    public final /* synthetic */ C0914Tu A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0912Ts(C0914Tu c0914Tu, Context context) {
        super(context);
        this.A00 = c0914Tu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebChromeClient A09() {
        return new C0911Tr(this.A00, null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0777Om
    public final WebViewClient A0A() {
        return new C0913Tt(this.A00, null);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        this.A00.A0E.A06(motionEvent, this, this);
        requestDisallowInterceptTouchEvent(true);
        return super.onTouchEvent(motionEvent);
    }
}

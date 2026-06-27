package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9a, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03819a extends C03778w {
    private InterfaceC0671Kg A00;

    public final void A05(NativeAdLayout nativeAdLayout, Context context, NativeAd nativeAd, LI li) {
        C0837Qu c0837Qu = new C0837Qu(context);
        MediaView mediaView = new MediaView(context);
        AdOptionsView adOptionsView = new AdOptionsView(context, nativeAd, nativeAdLayout);
        li.A09(adOptionsView, 28);
        L8 l8A0H = L8.A0H(nativeAd.getInternalNativeAd());
        LJ ljA0w = l8A0H.A0w();
        if (K1.A0v(context) || ljA0w == LJ.A0B) {
            this.A00 = new C0754Np(context, nativeAd, li, ljA0w, c0837Qu, mediaView, adOptionsView);
        } else {
            this.A00 = new C0672Kh(context, l8A0H, adOptionsView, mediaView, c0837Qu, ljA0w, li);
        }
        OY.A0P(nativeAdLayout, li.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c0837Qu, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C03608e
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}

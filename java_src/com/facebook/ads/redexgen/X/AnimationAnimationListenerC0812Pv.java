package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Pv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class AnimationAnimationListenerC0812Pv implements Animation.AnimationListener {
    public final /* synthetic */ C0813Pw A00;

    public AnimationAnimationListenerC0812Pv(C0813Pw c0813Pw) {
        this.A00 = c0813Pw;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A00.A00.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}

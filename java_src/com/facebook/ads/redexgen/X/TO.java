package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TO extends AnimatorListenerAdapter {
    public final /* synthetic */ TP A00;
    public final /* synthetic */ boolean A01;

    public TO(TP tp, boolean z) {
        this.A00 = tp;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0E.setTranslationY(0.0f);
        this.A00.A0L();
        if (this.A01) {
            return;
        }
        this.A00.A0C.destroy();
    }
}

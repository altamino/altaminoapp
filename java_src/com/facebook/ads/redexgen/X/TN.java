package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class TN implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ TP A00;

    public TN(TP tp) {
        this.A00 = tp;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A06.getLayoutParams().height = num.intValue();
        this.A00.A06.requestLayout();
    }
}

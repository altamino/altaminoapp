package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QD implements Animation.AnimationListener {
    public final /* synthetic */ AbstractC0810Pt A00;

    public QD(AbstractC0810Pt abstractC0810Pt) {
        this.A00 = abstractC0810Pt;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        OY.A0I(this.A00.A01);
        this.A00.A03 = false;
        if (this.A00.A02 != null) {
            this.A00.A02.A4q();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}

package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class QC implements Animation.AnimationListener {
    public final /* synthetic */ C8s A00;
    public final /* synthetic */ AbstractC0810Pt A01;
    public final /* synthetic */ AbstractC0810Pt A02;

    public QC(AbstractC0810Pt abstractC0810Pt, AbstractC0810Pt abstractC0810Pt2, C8s c8s) {
        this.A01 = abstractC0810Pt;
        this.A02 = abstractC0810Pt2;
        this.A00 = c8s;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.A03 = false;
        OY.A0I(this.A02);
        new Handler().postDelayed(new QB(this), 200L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}

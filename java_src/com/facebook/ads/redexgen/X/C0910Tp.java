package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Tp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0910Tp extends OW {
    public final /* synthetic */ C0914Tu A00;

    public C0910Tp(C0914Tu c0914Tu) {
        this.A00 = c0914Tu;
    }

    @Override // com.facebook.ads.redexgen.X.OW, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        OY.A0U(this.A00);
        OY.A0O(this.A00.A0F);
        this.A00.postDelayed(new C0909To(this), 1000L);
    }
}

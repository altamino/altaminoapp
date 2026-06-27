package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.Animation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qr, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0834Qr extends OW {
    public final /* synthetic */ View A00;
    public final /* synthetic */ C0836Qt A01;

    public C0834Qr(C0836Qt c0836Qt, View view) {
        this.A01 = c0836Qt;
        this.A00 = view;
    }

    @Override // com.facebook.ads.redexgen.X.OW, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.postDelayed(new RunnableC0833Qq(this), 1000L);
    }
}

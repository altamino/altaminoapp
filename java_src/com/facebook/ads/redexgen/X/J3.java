package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class J3 extends Animation {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ J1 A02;

    public J3(J1 j1, int i, int i2) {
        this.A02 = j1;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        int i = (int) (this.A01 + ((this.A00 - this.A01) * f));
        this.A02.getLayoutParams().width = i;
        this.A02.requestLayout();
        this.A02.A01.getLayoutParams().width = i - this.A00;
        this.A02.A01.requestLayout();
    }

    @Override // android.view.animation.Animation
    public final boolean willChangeBounds() {
        return true;
    }
}

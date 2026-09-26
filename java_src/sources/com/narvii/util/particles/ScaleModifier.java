package com.narvii.util.particles;

import android.view.animation.Interpolator;
import b6.b;

/* JADX INFO: loaded from: classes6.dex */
public class ScaleModifier implements b {
    int duration;
    Interpolator interpolator;
    float scaleFrom;
    float scaleTo;

    @Override // b6.b
    public void apply(com.plattysoft.leonids.b bVar, long j6) {
        float f = this.scaleFrom;
        bVar.mScale = f + ((this.scaleTo - f) * this.interpolator.getInterpolation((j6 * 1.0f) / this.duration));
    }

    public ScaleModifier(float f, float f6, int i10, Interpolator interpolator) {
        this.scaleFrom = f;
        this.scaleTo = f6;
        this.duration = i10;
        this.interpolator = interpolator;
    }
}

package com.narvii.util.particles;

import android.view.animation.Interpolator;
import com.plattysoft.leonids.Particle;
import com.plattysoft.leonids.modifiers.ParticleModifier;

/* loaded from: classes3.dex */
public class ScaleModifier implements ParticleModifier {
    int duration;
    Interpolator interpolator;
    float scaleFrom;
    float scaleTo;

    public ScaleModifier(float f, float f2, int i, Interpolator interpolator) {
        this.scaleFrom = f;
        this.scaleTo = f2;
        this.duration = i;
        this.interpolator = interpolator;
    }

    @Override // com.plattysoft.leonids.modifiers.ParticleModifier
    public void apply(Particle particle, long j) {
        float f = this.scaleFrom;
        particle.mScale = f + ((this.scaleTo - f) * this.interpolator.getInterpolation((j * 1.0f) / this.duration));
    }
}

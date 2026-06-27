package com.plattysoft.leonids.initializers;

import com.plattysoft.leonids.Particle;
import java.util.Random;

/* loaded from: classes3.dex */
public class ScaleInitializer implements ParticleInitializer {
    private float mMaxScale;
    private float mMinScale;

    public ScaleInitializer(float f, float f2) {
        this.mMinScale = f;
        this.mMaxScale = f2;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mMaxScale;
        float f2 = this.mMinScale;
        particle.mScale = (fNextFloat * (f - f2)) + f2;
    }
}

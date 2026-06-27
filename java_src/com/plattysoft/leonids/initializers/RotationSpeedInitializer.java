package com.plattysoft.leonids.initializers;

import com.plattysoft.leonids.Particle;
import java.util.Random;

/* loaded from: classes3.dex */
public class RotationSpeedInitializer implements ParticleInitializer {
    private float mMaxRotationSpeed;
    private float mMinRotationSpeed;

    public RotationSpeedInitializer(float f, float f2) {
        this.mMinRotationSpeed = f;
        this.mMaxRotationSpeed = f2;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mMaxRotationSpeed;
        float f2 = this.mMinRotationSpeed;
        particle.mRotationSpeed = (fNextFloat * (f - f2)) + f2;
    }
}

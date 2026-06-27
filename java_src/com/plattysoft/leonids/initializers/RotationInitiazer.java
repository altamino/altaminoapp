package com.plattysoft.leonids.initializers;

import com.plattysoft.leonids.Particle;
import java.util.Random;

/* loaded from: classes3.dex */
public class RotationInitiazer implements ParticleInitializer {
    private int mMaxAngle;
    private int mMinAngle;

    public RotationInitiazer(int i, int i2) {
        this.mMinAngle = i;
        this.mMaxAngle = i2;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        particle.mInitialRotation = random.nextInt(this.mMaxAngle - this.mMinAngle) + this.mMinAngle;
    }
}

package com.narvii.util.particles;

import com.plattysoft.leonids.Particle;
import com.plattysoft.leonids.initializers.ParticleInitializer;
import java.util.Random;

/* loaded from: classes3.dex */
public class RandomInitalizer implements ParticleInitializer {
    private ParticleInitializer pi1;
    private float pi1Ods;
    private ParticleInitializer pi2;

    public RandomInitalizer(ParticleInitializer particleInitializer, ParticleInitializer particleInitializer2, float f) {
        this.pi1 = particleInitializer;
        this.pi2 = particleInitializer2;
        this.pi1Ods = f;
    }

    public RandomInitalizer(ParticleInitializer particleInitializer, float f) {
        this.pi1 = particleInitializer;
        this.pi2 = null;
        this.pi1Ods = f;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        if (random.nextFloat() < this.pi1Ods) {
            this.pi1.initParticle(particle, random);
            return;
        }
        ParticleInitializer particleInitializer = this.pi2;
        if (particleInitializer != null) {
            particleInitializer.initParticle(particle, random);
        }
    }
}

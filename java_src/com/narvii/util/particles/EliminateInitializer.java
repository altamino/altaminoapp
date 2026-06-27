package com.narvii.util.particles;

import com.plattysoft.leonids.Particle;
import com.plattysoft.leonids.initializers.ParticleInitializer;
import java.util.Random;

/* loaded from: classes3.dex */
public class EliminateInitializer implements ParticleInitializer {
    int eliminate;
    int i;
    int total;

    public EliminateInitializer(int i, int i2) {
        this.total = i;
        this.eliminate = i2;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        this.i++;
        float f = this.i * 1.0f;
        int i = this.total;
        particle.mHidden = random.nextFloat() < (((f / ((float) i)) * ((float) this.eliminate)) * 2.0f) / ((float) i);
    }
}

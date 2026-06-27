package com.narvii.util.particles;

import com.plattysoft.leonids.Particle;
import com.plattysoft.leonids.initializers.ParticleInitializer;
import java.util.Random;

/* loaded from: classes3.dex */
public class SpeeddInitializer implements ParticleInitializer {
    private float mDirection;
    private float mRange;
    private float mSpeedMax;
    private float mSpeedMin;
    private float prevSign;

    public SpeeddInitializer(float f, float f2, float f3, float f4) {
        this.mDirection = f;
        this.mRange = f2;
        this.mSpeedMin = f3;
        this.mSpeedMax = f4;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mSpeedMax;
        float f2 = this.mSpeedMin;
        float f3 = (fNextFloat * (f - f2)) + f2;
        double dGen2 = this.mDirection + ((gen2(random) * this.mRange) / 2.0f);
        Double.isNaN(dGen2);
        double d = f3;
        double d2 = (float) ((dGen2 * 3.141592653589793d) / 180.0d);
        double dCos = Math.cos(d2);
        Double.isNaN(d);
        particle.mSpeedX = (float) (dCos * d);
        double dSin = Math.sin(d2);
        Double.isNaN(d);
        particle.mSpeedY = (float) (d * dSin);
    }

    private float gen1(Random random) {
        float fNextFloat = random.nextFloat() * 2.0f;
        return ((fNextFloat * fNextFloat) / 4.0f) * (random.nextBoolean() ? -1 : 1);
    }

    private float gen2(Random random) {
        int i = 0;
        float fNextFloat = 0.0f;
        while (true) {
            if (i >= 32) {
                break;
            }
            fNextFloat = (random.nextFloat() * 2.0f) - 1.0f;
            if (this.prevSign * fNextFloat <= 0.0f && random.nextFloat() > Math.abs(fNextFloat)) {
                this.prevSign = fNextFloat;
                break;
            }
            i++;
        }
        return fNextFloat;
    }
}

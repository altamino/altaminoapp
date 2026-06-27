package com.plattysoft.leonids.initializers;

import com.plattysoft.leonids.Particle;
import java.util.Random;

/* loaded from: classes3.dex */
public class AccelerationInitializer implements ParticleInitializer {
    private int mMaxAngle;
    private float mMaxValue;
    private int mMinAngle;
    private float mMinValue;

    public AccelerationInitializer(float f, float f2, int i, int i2) {
        this.mMinValue = f;
        this.mMaxValue = f2;
        this.mMinAngle = i;
        this.mMaxAngle = i2;
    }

    @Override // com.plattysoft.leonids.initializers.ParticleInitializer
    public void initParticle(Particle particle, Random random) {
        int i = this.mMinAngle;
        float fNextInt = i;
        int i2 = this.mMaxAngle;
        if (i2 != i) {
            fNextInt = random.nextInt(i2 - i) + this.mMinAngle;
        }
        double d = fNextInt;
        Double.isNaN(d);
        float fNextFloat = random.nextFloat();
        float f = this.mMaxValue;
        float f2 = this.mMinValue;
        double d2 = (fNextFloat * (f - f2)) + f2;
        double d3 = (float) ((d * 3.141592653589793d) / 180.0d);
        double dCos = Math.cos(d3);
        Double.isNaN(d2);
        particle.mAccelerationX = (float) (dCos * d2);
        double dSin = Math.sin(d3);
        Double.isNaN(d2);
        particle.mAccelerationY = (float) (d2 * dSin);
    }
}

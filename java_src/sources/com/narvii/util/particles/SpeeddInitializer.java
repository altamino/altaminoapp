package com.narvii.util.particles;

import a6.b;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class SpeeddInitializer implements b {
    private float mDirection;
    private float mRange;
    private float mSpeedMax;
    private float mSpeedMin;
    private float prevSign;

    private float gen2(Random random) {
        float fNextFloat = 0.0f;
        for (int i10 = 0; i10 < 32; i10++) {
            fNextFloat = (random.nextFloat() * 2.0f) - 1.0f;
            if (this.prevSign * fNextFloat <= 0.0f && random.nextFloat() > Math.abs(fNextFloat)) {
                this.prevSign = fNextFloat;
                break;
            }
        }
        return fNextFloat;
    }

    public SpeeddInitializer(float f, float f6, float f7, float f10) {
        this.mDirection = f;
        this.mRange = f6;
        this.mSpeedMin = f7;
        this.mSpeedMax = f10;
    }

    private float gen1(Random random) {
        int i10;
        float fNextFloat = random.nextFloat() * 2.0f;
        float f = (fNextFloat * fNextFloat) / 4.0f;
        if (random.nextBoolean()) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        return f * i10;
    }

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mSpeedMax;
        float f6 = this.mSpeedMin;
        double d = (fNextFloat * (f - f6)) + f6;
        double dGen2 = (float) ((((double) (this.mDirection + ((gen2(random) * this.mRange) / 2.0f))) * 3.141592653589793d) / 180.0d);
        bVar.mSpeedX = (float) (Math.cos(dGen2) * d);
        bVar.mSpeedY = (float) (d * Math.sin(dGen2));
    }
}

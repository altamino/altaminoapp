package com.narvii.util.particles;

import a6.b;
import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class RandomInitalizer implements b {
    private b pi1;
    private float pi1Ods;
    private b pi2;

    public RandomInitalizer(b bVar, b bVar2, float f) {
        this.pi1 = bVar;
        this.pi2 = bVar2;
        this.pi1Ods = f;
    }

    public RandomInitalizer(b bVar, float f) {
        this.pi1 = bVar;
        this.pi2 = null;
        this.pi1Ods = f;
    }

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        if (random.nextFloat() < this.pi1Ods) {
            this.pi1.initParticle(bVar, random);
            return;
        }
        b bVar2 = this.pi2;
        if (bVar2 != null) {
            bVar2.initParticle(bVar, random);
        }
    }
}

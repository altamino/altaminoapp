package com.narvii.util.particles;

import a6.b;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class EliminateInitializer implements b {
    int eliminate;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f2851i;
    int total;

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        int i10 = this.f2851i + 1;
        this.f2851i = i10;
        int i11 = this.total;
        bVar.mHidden = random.nextFloat() < ((((((float) i10) * 1.0f) / ((float) i11)) * ((float) this.eliminate)) * 2.0f) / ((float) i11);
    }

    public EliminateInitializer(int i10, int i11) {
        this.total = i10;
        this.eliminate = i11;
    }
}

package a6;

import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class d implements b {
    private float mMaxRotationSpeed;
    private float mMinRotationSpeed;

    public d(float f, float f6) {
        this.mMinRotationSpeed = f;
        this.mMaxRotationSpeed = f6;
    }

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mMaxRotationSpeed;
        float f6 = this.mMinRotationSpeed;
        bVar.mRotationSpeed = (fNextFloat * (f - f6)) + f6;
    }
}

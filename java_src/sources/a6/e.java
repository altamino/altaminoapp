package a6;

import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class e implements b {
    private float mMaxScale;
    private float mMinScale;

    public e(float f, float f6) {
        this.mMinScale = f;
        this.mMaxScale = f6;
    }

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        float fNextFloat = random.nextFloat();
        float f = this.mMaxScale;
        float f6 = this.mMinScale;
        bVar.mScale = (fNextFloat * (f - f6)) + f6;
    }
}

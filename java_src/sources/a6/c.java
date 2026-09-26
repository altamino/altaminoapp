package a6;

import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class c implements b {
    private int mMaxAngle;
    private int mMinAngle;

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        bVar.mInitialRotation = random.nextInt(this.mMaxAngle - this.mMinAngle) + this.mMinAngle;
    }

    public c(int i10, int i11) {
        this.mMinAngle = i10;
        this.mMaxAngle = i11;
    }
}

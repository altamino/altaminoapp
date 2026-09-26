package a6;

import java.util.Random;

/* JADX INFO: loaded from: classes8.dex */
public class a implements b {
    private int mMaxAngle;
    private float mMaxValue;
    private int mMinAngle;
    private float mMinValue;

    @Override // a6.b
    public void initParticle(com.plattysoft.leonids.b bVar, Random random) {
        int i10 = this.mMinAngle;
        float fNextInt = i10;
        int i11 = this.mMaxAngle;
        if (i11 != i10) {
            fNextInt = random.nextInt(i11 - i10) + this.mMinAngle;
        }
        float f = (float) ((((double) fNextInt) * 3.141592653589793d) / 180.0d);
        float fNextFloat = random.nextFloat();
        float f6 = this.mMaxValue;
        float f7 = this.mMinValue;
        double d = (fNextFloat * (f6 - f7)) + f7;
        double d2 = f;
        bVar.mAccelerationX = (float) (Math.cos(d2) * d);
        bVar.mAccelerationY = (float) (d * Math.sin(d2));
    }

    public a(float f, float f6, int i10, int i11) {
        this.mMinValue = f;
        this.mMaxValue = f6;
        this.mMinAngle = i10;
        this.mMaxAngle = i11;
    }
}

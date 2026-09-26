package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes11.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f6 = this.mStepSize;
        float f7 = (f - (iMin * f6)) / f6;
        float[] fArr2 = this.mValues;
        float f10 = fArr2[iMin];
        return f10 + (f7 * (fArr2[iMin + 1] - f10));
    }

    protected LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }
}

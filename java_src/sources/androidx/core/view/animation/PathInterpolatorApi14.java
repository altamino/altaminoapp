package androidx.core.view.animation;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes6.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i10 = 0;
        while (length - i10 > 1) {
            int i11 = (i10 + length) / 2;
            if (f < this.mX[i11]) {
                length = i11;
            } else {
                i10 = i11;
            }
        }
        float[] fArr = this.mX;
        float f6 = fArr[length];
        float f7 = fArr[i10];
        float f10 = f6 - f7;
        if (f10 == 0.0f) {
            return this.mY[i10];
        }
        float f11 = (f - f7) / f10;
        float[] fArr2 = this.mY;
        float f12 = fArr2[i10];
        return f12 + (f11 * (fArr2[length] - f12));
    }
}

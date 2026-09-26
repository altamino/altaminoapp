package androidx.transition;

import android.animation.TypeEvaluator;

/* JADX INFO: loaded from: classes11.dex */
class FloatArrayEvaluator implements TypeEvaluator<float[]> {
    private float[] mArray;

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public float[] evaluate(float f, float[] fArr, float[] fArr2) {
        float[] fArr3 = this.mArray;
        if (fArr3 == null) {
            fArr3 = new float[fArr.length];
        }
        for (int i10 = 0; i10 < fArr3.length; i10++) {
            float f6 = fArr[i10];
            fArr3[i10] = f6 + ((fArr2[i10] - f6) * f);
        }
        return fArr3;
    }

    FloatArrayEvaluator(float[] fArr) {
        this.mArray = fArr;
    }
}

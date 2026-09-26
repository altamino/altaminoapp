package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class VelocityMatrix {
    private static String TAG = "VelocityMatrix";
    float mDRotate;
    float mDScaleX;
    float mDScaleY;
    float mDTranslateX;
    float mDTranslateY;
    float mRotate;

    public void b() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    public void a(float f, float f6, int i10, int i11, float[] fArr) {
        float f7 = fArr[0];
        float f10 = fArr[1];
        float f11 = (f - 0.5f) * 2.0f;
        float f12 = (f6 - 0.5f) * 2.0f;
        float f13 = f7 + this.mDTranslateX;
        float f14 = f10 + this.mDTranslateY;
        float f15 = f13 + (this.mDScaleX * f11);
        float f16 = f14 + (this.mDScaleY * f12);
        float radians = (float) Math.toRadians(this.mRotate);
        float radians2 = (float) Math.toRadians(this.mDRotate);
        double d = radians;
        double d2 = i11 * f12;
        float fSin = f15 + (((float) ((((double) ((-i10) * f11)) * Math.sin(d)) - (Math.cos(d) * d2))) * radians2);
        float fCos = f16 + (radians2 * ((float) ((((double) (i10 * f11)) * Math.cos(d)) - (d2 * Math.sin(d)))));
        fArr[0] = fSin;
        fArr[1] = fCos;
    }

    public void c(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.mDRotate = keyCycleOscillator.b(f);
        }
    }

    public void d(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.mDRotate = splineSet.b(f);
            this.mRotate = splineSet.a(f);
        }
    }

    public void e(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.mDScaleX = keyCycleOscillator.b(f);
        }
        if (keyCycleOscillator2 != null) {
            this.mDScaleY = keyCycleOscillator2.b(f);
        }
    }

    public void f(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.b(f);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.b(f);
        }
    }

    public void g(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.mDTranslateX = keyCycleOscillator.b(f);
        }
        if (keyCycleOscillator2 != null) {
            this.mDTranslateY = keyCycleOscillator2.b(f);
        }
    }

    public void h(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.mDTranslateX = splineSet.b(f);
        }
        if (splineSet2 != null) {
            this.mDTranslateY = splineSet2.b(f);
        }
    }
}

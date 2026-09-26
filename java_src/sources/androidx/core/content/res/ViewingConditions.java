package androidx.core.content.res;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
final class ViewingConditions {
    static final ViewingConditions DEFAULT = k(CamUtils.WHITE_POINT_D65, (float) ((((double) CamUtils.h(50.0f)) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);
    private final float mAw;
    private final float mC;
    private final float mFl;
    private final float mFlRoot;
    private final float mN;
    private final float mNbb;
    private final float mNc;
    private final float mNcb;
    private final float[] mRgbD;
    private final float mZ;

    float a() {
        return this.mAw;
    }

    float b() {
        return this.mC;
    }

    float c() {
        return this.mFl;
    }

    float d() {
        return this.mFlRoot;
    }

    float e() {
        return this.mN;
    }

    float f() {
        return this.mNbb;
    }

    float g() {
        return this.mNc;
    }

    float h() {
        return this.mNcb;
    }

    @NonNull
    float[] i() {
        return this.mRgbD;
    }

    float j() {
        return this.mZ;
    }

    @NonNull
    static ViewingConditions k(@NonNull float[] fArr, float f, float f6, float f7, boolean z6) {
        float[][] fArr2 = CamUtils.XYZ_TO_CAM16RGB;
        float f10 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f11 = fArr3[0] * f10;
        float f12 = fArr[1];
        float f13 = f11 + (fArr3[1] * f12);
        float f14 = fArr[2];
        float f15 = f13 + (fArr3[2] * f14);
        float[] fArr4 = fArr2[1];
        float f16 = (fArr4[0] * f10) + (fArr4[1] * f12) + (fArr4[2] * f14);
        float[] fArr5 = fArr2[2];
        float f17 = (f10 * fArr5[0]) + (f12 * fArr5[1]) + (f14 * fArr5[2]);
        float f18 = (f7 / 10.0f) + 0.8f;
        float fD = ((double) f18) >= 0.9d ? CamUtils.d(0.59f, 0.69f, (f18 - 0.9f) * 10.0f) : CamUtils.d(0.525f, 0.59f, (f18 - 0.8f) * 10.0f);
        float fExp = z6 ? 1.0f : (1.0f - (((float) Math.exp(((-f) - 42.0f) / 92.0f)) * 0.2777778f)) * f18;
        double d = fExp;
        if (d > 1.0d) {
            fExp = 1.0f;
        } else if (d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f15) * fExp) + 1.0f) - fExp, (((100.0f / f16) * fExp) + 1.0f) - fExp, (((100.0f / f17) * fExp) + 1.0f) - fExp};
        float f19 = 1.0f / ((5.0f * f) + 1.0f);
        float f20 = f19 * f19 * f19 * f19;
        float f21 = 1.0f - f20;
        float fCbrt = (f20 * f) + (0.1f * f21 * f21 * ((float) Math.cbrt(((double) f) * 5.0d)));
        float fH = CamUtils.h(f6) / fArr[1];
        double d2 = fH;
        float fSqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float fPow2 = (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f17)) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f15)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f16)) / 100.0d, 0.42d), fPow2};
        float f22 = fArr7[0];
        float f23 = fArr7[1];
        return new ViewingConditions(fH, ((((f22 * 400.0f) / (f22 + 27.13f)) * 2.0f) + ((f23 * 400.0f) / (f23 + 27.13f)) + (((400.0f * fPow2) / (fPow2 + 27.13f)) * 0.05f)) * fPow, fPow, fPow, fD, f18, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    private ViewingConditions(float f, float f6, float f7, float f10, float f11, float f12, float[] fArr, float f13, float f14, float f15) {
        this.mN = f;
        this.mAw = f6;
        this.mNbb = f7;
        this.mNcb = f10;
        this.mC = f11;
        this.mNc = f12;
        this.mRgbD = fArr;
        this.mFl = f13;
        this.mFlRoot = f14;
        this.mZ = f15;
    }
}

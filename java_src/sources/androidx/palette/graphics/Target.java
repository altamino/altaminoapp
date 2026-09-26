package androidx.palette.graphics;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes11.dex */
public final class Target {
    public static final Target DARK_MUTED;
    public static final Target DARK_VIBRANT;
    static final int INDEX_MAX = 2;
    static final int INDEX_MIN = 0;
    static final int INDEX_TARGET = 1;
    static final int INDEX_WEIGHT_LUMA = 1;
    static final int INDEX_WEIGHT_POP = 2;
    static final int INDEX_WEIGHT_SAT = 0;
    public static final Target LIGHT_MUTED;
    public static final Target LIGHT_VIBRANT;
    private static final float MAX_DARK_LUMA = 0.45f;
    private static final float MAX_MUTED_SATURATION = 0.4f;
    private static final float MAX_NORMAL_LUMA = 0.7f;
    private static final float MIN_LIGHT_LUMA = 0.55f;
    private static final float MIN_NORMAL_LUMA = 0.3f;
    private static final float MIN_VIBRANT_SATURATION = 0.35f;
    public static final Target MUTED;
    private static final float TARGET_DARK_LUMA = 0.26f;
    private static final float TARGET_LIGHT_LUMA = 0.74f;
    private static final float TARGET_MUTED_SATURATION = 0.3f;
    private static final float TARGET_NORMAL_LUMA = 0.5f;
    private static final float TARGET_VIBRANT_SATURATION = 1.0f;
    public static final Target VIBRANT;
    private static final float WEIGHT_LUMA = 0.52f;
    private static final float WEIGHT_POPULATION = 0.24f;
    private static final float WEIGHT_SATURATION = 0.24f;
    boolean mIsExclusive;
    final float[] mLightnessTargets;
    final float[] mSaturationTargets;
    final float[] mWeights;

    Target() {
        float[] fArr = new float[3];
        this.mSaturationTargets = fArr;
        float[] fArr2 = new float[3];
        this.mLightnessTargets = fArr2;
        this.mWeights = new float[3];
        this.mIsExclusive = true;
        r(fArr);
        r(fArr2);
        q();
    }

    private static void r(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    public boolean j() {
        return this.mIsExclusive;
    }

    public static final class Builder {
        private final Target mTarget;

        public Builder() {
            this.mTarget = new Target();
        }

        public Builder(@NonNull Target target) {
            this.mTarget = new Target(target);
        }
    }

    static {
        Target target = new Target();
        LIGHT_VIBRANT = target;
        m(target);
        p(target);
        Target target2 = new Target();
        VIBRANT = target2;
        o(target2);
        p(target2);
        Target target3 = new Target();
        DARK_VIBRANT = target3;
        l(target3);
        p(target3);
        Target target4 = new Target();
        LIGHT_MUTED = target4;
        m(target4);
        n(target4);
        Target target5 = new Target();
        MUTED = target5;
        o(target5);
        n(target5);
        Target target6 = new Target();
        DARK_MUTED = target6;
        l(target6);
        n(target6);
    }

    private static void l(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[1] = 0.26f;
        fArr[2] = 0.45f;
    }

    private static void m(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
    }

    private static void n(Target target) {
        float[] fArr = target.mSaturationTargets;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    private static void o(Target target) {
        float[] fArr = target.mLightnessTargets;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    private static void p(Target target) {
        float[] fArr = target.mSaturationTargets;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }

    private void q() {
        float[] fArr = this.mWeights;
        fArr[0] = 0.24f;
        fArr[1] = 0.52f;
        fArr[2] = 0.24f;
    }

    public float a() {
        return this.mWeights[1];
    }

    @FloatRange
    public float b() {
        return this.mLightnessTargets[2];
    }

    @FloatRange
    public float c() {
        return this.mSaturationTargets[2];
    }

    @FloatRange
    public float d() {
        return this.mLightnessTargets[0];
    }

    @FloatRange
    public float e() {
        return this.mSaturationTargets[0];
    }

    public float f() {
        return this.mWeights[2];
    }

    public float g() {
        return this.mWeights[0];
    }

    @FloatRange
    public float h() {
        return this.mLightnessTargets[1];
    }

    @FloatRange
    public float i() {
        return this.mSaturationTargets[1];
    }

    void k() {
        int length = this.mWeights.length;
        float f = 0.0f;
        for (int i10 = 0; i10 < length; i10++) {
            float f6 = this.mWeights[i10];
            if (f6 > 0.0f) {
                f += f6;
            }
        }
        if (f != 0.0f) {
            int length2 = this.mWeights.length;
            for (int i11 = 0; i11 < length2; i11++) {
                float[] fArr = this.mWeights;
                float f7 = fArr[i11];
                if (f7 > 0.0f) {
                    fArr[i11] = f7 / f;
                }
            }
        }
    }

    Target(@NonNull Target target) {
        float[] fArr = new float[3];
        this.mSaturationTargets = fArr;
        float[] fArr2 = new float[3];
        this.mLightnessTargets = fArr2;
        float[] fArr3 = new float[3];
        this.mWeights = fArr3;
        this.mIsExclusive = true;
        System.arraycopy(target.mSaturationTargets, 0, fArr, 0, fArr.length);
        System.arraycopy(target.mLightnessTargets, 0, fArr2, 0, fArr2.length);
        System.arraycopy(target.mWeights, 0, fArr3, 0, fArr3.length);
    }
}

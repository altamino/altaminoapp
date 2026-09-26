package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes.dex */
public class StopLogicEngine implements StopEngine {
    private static final float EPSILON = 1.0E-5f;
    private boolean mBackwards = false;
    private boolean mDone = false;
    private float mLastPosition;
    private int mNumberOfStages;
    private float mStage1Duration;
    private float mStage1EndPosition;
    private float mStage1Velocity;
    private float mStage2Duration;
    private float mStage2EndPosition;
    private float mStage2Velocity;
    private float mStage3Duration;
    private float mStage3EndPosition;
    private float mStage3Velocity;
    private float mStartPosition;
    private String mType;

    private float c(float f) {
        this.mDone = false;
        float f6 = this.mStage1Duration;
        if (f <= f6) {
            float f7 = this.mStage1Velocity;
            return (f7 * f) + ((((this.mStage2Velocity - f7) * f) * f) / (f6 * 2.0f));
        }
        int i10 = this.mNumberOfStages;
        if (i10 == 1) {
            return this.mStage1EndPosition;
        }
        float f10 = f - f6;
        float f11 = this.mStage2Duration;
        if (f10 < f11) {
            float f12 = this.mStage1EndPosition;
            float f13 = this.mStage2Velocity;
            return f12 + (f13 * f10) + ((((this.mStage3Velocity - f13) * f10) * f10) / (f11 * 2.0f));
        }
        if (i10 == 2) {
            return this.mStage2EndPosition;
        }
        float f14 = f10 - f11;
        float f15 = this.mStage3Duration;
        if (f14 > f15) {
            this.mDone = true;
            return this.mStage3EndPosition;
        }
        float f16 = this.mStage2EndPosition;
        float f17 = this.mStage3Velocity;
        return (f16 + (f17 * f14)) - (((f17 * f14) * f14) / (f15 * 2.0f));
    }

    private void f(float f, float f6, float f7, float f10, float f11) {
        this.mDone = false;
        if (f == 0.0f) {
            f = 1.0E-4f;
        }
        this.mStage1Velocity = f;
        float f12 = f / f7;
        float f13 = (f12 * f) / 2.0f;
        if (f < 0.0f) {
            float fSqrt = (float) Math.sqrt((f6 - ((((-f) / f7) * f) / 2.0f)) * f7);
            if (fSqrt < f10) {
                this.mType = "backward accelerate, decelerate";
                this.mNumberOfStages = 2;
                this.mStage1Velocity = f;
                this.mStage2Velocity = fSqrt;
                this.mStage3Velocity = 0.0f;
                float f14 = (fSqrt - f) / f7;
                this.mStage1Duration = f14;
                this.mStage2Duration = fSqrt / f7;
                this.mStage1EndPosition = ((f + fSqrt) * f14) / 2.0f;
                this.mStage2EndPosition = f6;
                this.mStage3EndPosition = f6;
                return;
            }
            this.mType = "backward accelerate cruse decelerate";
            this.mNumberOfStages = 3;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f10;
            this.mStage3Velocity = f10;
            float f15 = (f10 - f) / f7;
            this.mStage1Duration = f15;
            float f16 = f10 / f7;
            this.mStage3Duration = f16;
            float f17 = ((f + f10) * f15) / 2.0f;
            float f18 = (f16 * f10) / 2.0f;
            this.mStage2Duration = ((f6 - f17) - f18) / f10;
            this.mStage1EndPosition = f17;
            this.mStage2EndPosition = f6 - f18;
            this.mStage3EndPosition = f6;
            return;
        }
        if (f13 >= f6) {
            this.mType = "hard stop";
            this.mNumberOfStages = 1;
            this.mStage1Velocity = f;
            this.mStage2Velocity = 0.0f;
            this.mStage1EndPosition = f6;
            this.mStage1Duration = (2.0f * f6) / f;
            return;
        }
        float f19 = f6 - f13;
        float f20 = f19 / f;
        if (f20 + f12 < f11) {
            this.mType = "cruse decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = f;
            this.mStage3Velocity = 0.0f;
            this.mStage1EndPosition = f19;
            this.mStage2EndPosition = f6;
            this.mStage1Duration = f20;
            this.mStage2Duration = f12;
            return;
        }
        float fSqrt2 = (float) Math.sqrt((f7 * f6) + ((f * f) / 2.0f));
        float f21 = (fSqrt2 - f) / f7;
        this.mStage1Duration = f21;
        float f22 = fSqrt2 / f7;
        this.mStage2Duration = f22;
        if (fSqrt2 < f10) {
            this.mType = "accelerate decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f;
            this.mStage2Velocity = fSqrt2;
            this.mStage3Velocity = 0.0f;
            this.mStage1Duration = f21;
            this.mStage2Duration = f22;
            this.mStage1EndPosition = ((f + fSqrt2) * f21) / 2.0f;
            this.mStage2EndPosition = f6;
            return;
        }
        this.mType = "accelerate cruse decelerate";
        this.mNumberOfStages = 3;
        this.mStage1Velocity = f;
        this.mStage2Velocity = f10;
        this.mStage3Velocity = f10;
        float f23 = (f10 - f) / f7;
        this.mStage1Duration = f23;
        float f24 = f10 / f7;
        this.mStage3Duration = f24;
        float f25 = ((f + f10) * f23) / 2.0f;
        float f26 = (f24 * f10) / 2.0f;
        this.mStage2Duration = ((f6 - f25) - f26) / f10;
        this.mStage1EndPosition = f25;
        this.mStage2EndPosition = f6 - f26;
        this.mStage3EndPosition = f6;
    }

    public void d(float f, float f6, float f7, float f10, float f11, float f12) {
        this.mDone = false;
        this.mStartPosition = f;
        boolean z6 = f > f6;
        this.mBackwards = z6;
        if (z6) {
            f(-f7, f - f6, f11, f12, f10);
        } else {
            f(f7, f6 - f, f11, f12, f10);
        }
    }

    public float e(float f) {
        float f6 = this.mStage1Duration;
        if (f <= f6) {
            float f7 = this.mStage1Velocity;
            return f7 + (((this.mStage2Velocity - f7) * f) / f6);
        }
        int i10 = this.mNumberOfStages;
        if (i10 == 1) {
            return 0.0f;
        }
        float f10 = f - f6;
        float f11 = this.mStage2Duration;
        if (f10 < f11) {
            float f12 = this.mStage2Velocity;
            return f12 + (((this.mStage3Velocity - f12) * f10) / f11);
        }
        if (i10 == 2) {
            return this.mStage2EndPosition;
        }
        float f13 = f10 - f11;
        float f14 = this.mStage3Duration;
        if (f13 >= f14) {
            return this.mStage3EndPosition;
        }
        float f15 = this.mStage3Velocity;
        return f15 - ((f13 * f15) / f14);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float a() {
        return this.mBackwards ? -e(this.mLastPosition) : e(this.mLastPosition);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean b() {
        if (a() < EPSILON && Math.abs(this.mStage3EndPosition - this.mLastPosition) < EPSILON) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        float fC = c(f);
        this.mLastPosition = f;
        if (this.mBackwards) {
            return this.mStartPosition - fC;
        }
        return this.mStartPosition + fC;
    }
}

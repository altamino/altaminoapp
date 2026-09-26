package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes11.dex */
public class SpringStopEngine implements StopEngine {
    private static final double UNSET = Double.MAX_VALUE;
    private float mLastTime;
    private double mLastVelocity;
    private float mMass;
    private float mPos;
    private double mStiffness;
    private float mStopThreshold;
    private double mTargetPos;
    private float mV;
    double mDamping = 0.5d;
    private boolean mInitialized = false;
    private int mBoundaryMode = 0;

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float a() {
        return 0.0f;
    }

    public void d(float f, float f6, float f7, float f10, float f11, float f12, float f13, int i10) {
        this.mTargetPos = f6;
        this.mDamping = f12;
        this.mInitialized = false;
        this.mPos = f;
        this.mLastVelocity = f7;
        this.mStiffness = f11;
        this.mMass = f10;
        this.mStopThreshold = f13;
        this.mBoundaryMode = i10;
        this.mLastTime = 0.0f;
    }

    private void c(double d) {
        double d2 = this.mStiffness;
        double d6 = this.mDamping;
        int iSqrt = (int) ((9.0d / ((Math.sqrt(d2 / ((double) this.mMass)) * d) * 4.0d)) + 1.0d);
        double d7 = d / ((double) iSqrt);
        int i10 = 0;
        while (i10 < iSqrt) {
            float f = this.mPos;
            double d10 = this.mTargetPos;
            float f6 = this.mV;
            double d11 = d2;
            double d12 = ((-d2) * (((double) f) - d10)) - (((double) f6) * d6);
            float f7 = this.mMass;
            double d13 = d6;
            double d14 = ((double) f6) + (((d12 / ((double) f7)) * d7) / 2.0d);
            double d15 = ((((-((((double) f) + ((d7 * d14) / 2.0d)) - d10)) * d11) - (d14 * d13)) / ((double) f7)) * d7;
            float f10 = (float) (((double) f6) + d15);
            this.mV = f10;
            float f11 = (float) (((double) f) + ((((double) f6) + (d15 / 2.0d)) * d7));
            this.mPos = f11;
            int i11 = this.mBoundaryMode;
            if (i11 > 0) {
                if (f11 < 0.0f && (i11 & 1) == 1) {
                    this.mPos = -f11;
                    this.mV = -f10;
                }
                float f12 = this.mPos;
                if (f12 > 1.0f && (i11 & 2) == 2) {
                    this.mPos = 2.0f - f12;
                    this.mV = -this.mV;
                }
            }
            i10++;
            d2 = d11;
            d6 = d13;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean b() {
        double d = ((double) this.mPos) - this.mTargetPos;
        double d2 = this.mStiffness;
        double d6 = this.mV;
        return Math.sqrt((((d6 * d6) * ((double) this.mMass)) + ((d2 * d) * d)) / d2) <= ((double) this.mStopThreshold);
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f) {
        c(f - this.mLastTime);
        this.mLastTime = f;
        return this.mPos;
    }
}

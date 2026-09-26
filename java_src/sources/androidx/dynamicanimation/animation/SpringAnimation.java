package androidx.dynamicanimation.animation;

/* JADX INFO: loaded from: classes5.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    private static final float UNSET = Float.MAX_VALUE;
    private boolean mEndRequested;
    private float mPendingPosition;
    private SpringForce mSpring;

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean f(long j6) {
        if (this.mEndRequested) {
            float f = this.mPendingPosition;
            if (f != Float.MAX_VALUE) {
                this.mSpring.d(f);
                this.mPendingPosition = Float.MAX_VALUE;
            }
            this.mValue = this.mSpring.a();
            this.mVelocity = 0.0f;
            this.mEndRequested = false;
            return true;
        }
        if (this.mPendingPosition != Float.MAX_VALUE) {
            this.mSpring.a();
            long j10 = j6 / 2;
            DynamicAnimation.MassState massStateE = this.mSpring.e(this.mValue, this.mVelocity, j10);
            this.mSpring.d(this.mPendingPosition);
            this.mPendingPosition = Float.MAX_VALUE;
            DynamicAnimation.MassState massStateE2 = this.mSpring.e(massStateE.mValue, massStateE.mVelocity, j10);
            this.mValue = massStateE2.mValue;
            this.mVelocity = massStateE2.mVelocity;
        } else {
            DynamicAnimation.MassState massStateE3 = this.mSpring.e(this.mValue, this.mVelocity, j6);
            this.mValue = massStateE3.mValue;
            this.mVelocity = massStateE3.mVelocity;
        }
        float fMax = Math.max(this.mValue, this.mMinValue);
        this.mValue = fMax;
        float fMin = Math.min(fMax, this.mMaxValue);
        this.mValue = fMin;
        if (!g(fMin, this.mVelocity)) {
            return false;
        }
        this.mValue = this.mSpring.a();
        this.mVelocity = 0.0f;
        return true;
    }

    boolean g(float f, float f6) {
        return this.mSpring.c(f, f6);
    }

    public <K> SpringAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat, float f) {
        super(k, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new SpringForce(f);
    }
}

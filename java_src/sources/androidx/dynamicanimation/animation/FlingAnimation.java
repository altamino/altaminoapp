package androidx.dynamicanimation.animation;

/* JADX INFO: loaded from: classes4.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce;

    static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        void b(float f) {
            this.mVelocityThreshold = f * VELOCITY_THRESHOLD_MULTIPLIER;
        }

        DynamicAnimation.MassState c(float f, float f6, long j6) {
            float f7 = j6;
            this.mMassState.mVelocity = (float) (((double) f6) * Math.exp((f7 / 1000.0f) * this.mFriction));
            DynamicAnimation.MassState massState = this.mMassState;
            float f10 = this.mFriction;
            massState.mValue = (float) (((double) (f - (f6 / f10))) + (((double) (f6 / f10)) * Math.exp((f10 * f7) / 1000.0f)));
            DynamicAnimation.MassState massState2 = this.mMassState;
            if (a(massState2.mValue, massState2.mVelocity)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }

        DragForce() {
        }

        public boolean a(float f, float f6) {
            if (Math.abs(f6) < this.mVelocityThreshold) {
                return true;
            }
            return false;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.b(c());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    boolean f(long j6) {
        DynamicAnimation.MassState massStateC = this.mFlingForce.c(this.mValue, this.mVelocity, j6);
        float f = massStateC.mValue;
        this.mValue = f;
        float f6 = massStateC.mVelocity;
        this.mVelocity = f6;
        float f7 = this.mMinValue;
        if (f < f7) {
            this.mValue = f7;
            return true;
        }
        float f10 = this.mMaxValue;
        if (f <= f10) {
            return g(f, f6);
        }
        this.mValue = f10;
        return true;
    }

    boolean g(float f, float f6) {
        return f >= this.mMaxValue || f <= this.mMinValue || this.mFlingForce.a(f, f6);
    }

    public <K> FlingAnimation(K k, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.b(c());
    }
}

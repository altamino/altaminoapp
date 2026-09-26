package androidx.dynamicanimation.animation;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes9.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    double mDampingRatio;
    private double mFinalPosition;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized;
    private final DynamicAnimation.MassState mMassState;
    double mNaturalFreq;
    private double mValueThreshold;
    private double mVelocityThreshold;

    public SpringForce() {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation.MassState();
    }

    public float a() {
        return (float) this.mFinalPosition;
    }

    public SpringForce d(float f) {
        this.mFinalPosition = f;
        return this;
    }

    private void b() {
        if (this.mInitialized) {
            return;
        }
        if (this.mFinalPosition == Double.MAX_VALUE) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        double d = this.mDampingRatio;
        if (d > 1.0d) {
            double d2 = this.mNaturalFreq;
            this.mGammaPlus = ((-d) * d2) + (d2 * Math.sqrt((d * d) - 1.0d));
            double d6 = this.mDampingRatio;
            double d7 = this.mNaturalFreq;
            this.mGammaMinus = ((-d6) * d7) - (d7 * Math.sqrt((d6 * d6) - 1.0d));
        } else if (d >= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && d < 1.0d) {
            this.mDampedFreq = this.mNaturalFreq * Math.sqrt(1.0d - (d * d));
        }
        this.mInitialized = true;
    }

    DynamicAnimation.MassState e(double d, double d2, long j6) {
        double dCos;
        double dPow;
        b();
        double d6 = j6 / 1000.0d;
        double d7 = d - this.mFinalPosition;
        double d10 = this.mDampingRatio;
        if (d10 > 1.0d) {
            double d11 = this.mGammaMinus;
            double d12 = this.mGammaPlus;
            double d13 = d7 - (((d11 * d7) - d2) / (d11 - d12));
            double d14 = ((d7 * d11) - d2) / (d11 - d12);
            dPow = (Math.pow(2.718281828459045d, d11 * d6) * d13) + (Math.pow(2.718281828459045d, this.mGammaPlus * d6) * d14);
            double d15 = this.mGammaMinus;
            double dPow2 = d13 * d15 * Math.pow(2.718281828459045d, d15 * d6);
            double d16 = this.mGammaPlus;
            dCos = dPow2 + (d14 * d16 * Math.pow(2.718281828459045d, d16 * d6));
        } else if (d10 == 1.0d) {
            double d17 = this.mNaturalFreq;
            double d18 = d2 + (d17 * d7);
            double d19 = d7 + (d18 * d6);
            dPow = Math.pow(2.718281828459045d, (-d17) * d6) * d19;
            double dPow3 = d19 * Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d6);
            double d20 = this.mNaturalFreq;
            dCos = (d18 * Math.pow(2.718281828459045d, (-d20) * d6)) + (dPow3 * (-d20));
        } else {
            double d21 = 1.0d / this.mDampedFreq;
            double d22 = this.mNaturalFreq;
            double d23 = d21 * ((d10 * d22 * d7) + d2);
            double dPow4 = Math.pow(2.718281828459045d, (-d10) * d22 * d6) * ((Math.cos(this.mDampedFreq * d6) * d7) + (Math.sin(this.mDampedFreq * d6) * d23));
            double d24 = this.mNaturalFreq;
            double d25 = this.mDampingRatio;
            double d26 = (-d24) * dPow4 * d25;
            double dPow5 = Math.pow(2.718281828459045d, (-d25) * d24 * d6);
            double d27 = this.mDampedFreq;
            double dSin = (-d27) * d7 * Math.sin(d27 * d6);
            double d28 = this.mDampedFreq;
            dCos = d26 + (dPow5 * (dSin + (d23 * d28 * Math.cos(d28 * d6))));
            dPow = dPow4;
        }
        DynamicAnimation.MassState massState = this.mMassState;
        massState.mValue = (float) (dPow + this.mFinalPosition);
        massState.mVelocity = (float) dCos;
        return massState;
    }

    @RestrictTo
    public boolean c(float f, float f6) {
        if (Math.abs(f6) < this.mVelocityThreshold && Math.abs(f - a()) < this.mValueThreshold) {
            return true;
        }
        return false;
    }

    public SpringForce(float f) {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation.MassState();
        this.mFinalPosition = f;
    }
}

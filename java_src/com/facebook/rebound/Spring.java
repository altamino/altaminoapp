package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public class Spring {
    private static int ID = 0;
    private static final double MAX_DELTA_TIME_SEC = 0.064d;
    private static final double SOLVER_TIMESTEP_SEC = 0.001d;
    private final PhysicsState mCurrentState;
    private double mEndValue;
    private final String mId;
    private boolean mOvershootClampingEnabled;
    private final PhysicsState mPreviousState;
    private SpringConfig mSpringConfig;
    private final BaseSpringSystem mSpringSystem;
    private double mStartValue;
    private final PhysicsState mTempState;
    private boolean mWasAtRest = true;
    private double mRestSpeedThreshold = 0.005d;
    private double mDisplacementFromRestThreshold = 0.005d;
    private CopyOnWriteArraySet<SpringListener> mListeners = new CopyOnWriteArraySet<>();
    private double mTimeAccumulator = 0.0d;

    private static class PhysicsState {
        double position;
        double velocity;

        private PhysicsState() {
        }
    }

    Spring(BaseSpringSystem baseSpringSystem) {
        this.mCurrentState = new PhysicsState();
        this.mPreviousState = new PhysicsState();
        this.mTempState = new PhysicsState();
        if (baseSpringSystem == null) {
            throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
        }
        this.mSpringSystem = baseSpringSystem;
        StringBuilder sb = new StringBuilder();
        sb.append("spring:");
        int i = ID;
        ID = i + 1;
        sb.append(i);
        this.mId = sb.toString();
        setSpringConfig(SpringConfig.defaultConfig);
    }

    public String getId() {
        return this.mId;
    }

    public Spring setSpringConfig(SpringConfig springConfig) {
        if (springConfig == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        this.mSpringConfig = springConfig;
        return this;
    }

    public Spring setCurrentValue(double d) {
        return setCurrentValue(d, true);
    }

    public Spring setCurrentValue(double d, boolean z) {
        this.mStartValue = d;
        this.mCurrentState.position = d;
        this.mSpringSystem.activateSpring(getId());
        Iterator<SpringListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringUpdate(this);
        }
        if (z) {
            setAtRest();
        }
        return this;
    }

    public double getCurrentValue() {
        return this.mCurrentState.position;
    }

    private double getDisplacementDistanceForState(PhysicsState physicsState) {
        return Math.abs(this.mEndValue - physicsState.position);
    }

    public Spring setEndValue(double d) {
        if (this.mEndValue == d && isAtRest()) {
            return this;
        }
        this.mStartValue = getCurrentValue();
        this.mEndValue = d;
        this.mSpringSystem.activateSpring(getId());
        Iterator<SpringListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringEndStateChange(this);
        }
        return this;
    }

    public Spring setVelocity(double d) {
        PhysicsState physicsState = this.mCurrentState;
        if (d == physicsState.velocity) {
            return this;
        }
        physicsState.velocity = d;
        this.mSpringSystem.activateSpring(getId());
        return this;
    }

    public double getVelocity() {
        return this.mCurrentState.velocity;
    }

    public Spring setRestDisplacementThreshold(double d) {
        this.mDisplacementFromRestThreshold = d;
        return this;
    }

    public double getRestDisplacementThreshold() {
        return this.mDisplacementFromRestThreshold;
    }

    public Spring setOvershootClampingEnabled(boolean z) {
        this.mOvershootClampingEnabled = z;
        return this;
    }

    public boolean isOvershooting() {
        return this.mSpringConfig.tension > 0.0d && ((this.mStartValue < this.mEndValue && getCurrentValue() > this.mEndValue) || (this.mStartValue > this.mEndValue && getCurrentValue() < this.mEndValue));
    }

    void advance(double d) {
        double d2;
        boolean z;
        boolean zIsAtRest = isAtRest();
        if (zIsAtRest && this.mWasAtRest) {
            return;
        }
        double d3 = MAX_DELTA_TIME_SEC;
        if (d <= MAX_DELTA_TIME_SEC) {
            d3 = d;
        }
        this.mTimeAccumulator += d3;
        SpringConfig springConfig = this.mSpringConfig;
        double d4 = springConfig.tension;
        double d5 = springConfig.friction;
        PhysicsState physicsState = this.mCurrentState;
        double d6 = physicsState.position;
        double d7 = physicsState.velocity;
        PhysicsState physicsState2 = this.mTempState;
        double d8 = physicsState2.position;
        double d9 = physicsState2.velocity;
        boolean z2 = zIsAtRest;
        while (true) {
            d2 = this.mTimeAccumulator;
            if (d2 < SOLVER_TIMESTEP_SEC) {
                break;
            }
            this.mTimeAccumulator = d2 - SOLVER_TIMESTEP_SEC;
            if (this.mTimeAccumulator < SOLVER_TIMESTEP_SEC) {
                PhysicsState physicsState3 = this.mPreviousState;
                physicsState3.position = d6;
                physicsState3.velocity = d7;
            }
            double d10 = this.mEndValue;
            double d11 = ((d10 - d8) * d4) - (d5 * d7);
            double d12 = (d7 * SOLVER_TIMESTEP_SEC * 0.5d) + d6;
            double d13 = d7 + (d11 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d14 = ((d10 - d12) * d4) - (d5 * d13);
            double d15 = d6 + (d13 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d16 = d7 + (d14 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d17 = ((d10 - d15) * d4) - (d5 * d16);
            double d18 = d6 + (d16 * SOLVER_TIMESTEP_SEC);
            double d19 = d7 + (d17 * SOLVER_TIMESTEP_SEC);
            d6 += (d7 + ((d13 + d16) * 2.0d) + d19) * 0.16666666666666666d * SOLVER_TIMESTEP_SEC;
            d7 += (d11 + ((d14 + d17) * 2.0d) + (((d10 - d18) * d4) - (d5 * d19))) * 0.16666666666666666d * SOLVER_TIMESTEP_SEC;
            d8 = d18;
            d9 = d19;
        }
        PhysicsState physicsState4 = this.mTempState;
        physicsState4.position = d8;
        physicsState4.velocity = d9;
        PhysicsState physicsState5 = this.mCurrentState;
        physicsState5.position = d6;
        physicsState5.velocity = d7;
        if (d2 > 0.0d) {
            interpolate(d2 / SOLVER_TIMESTEP_SEC);
        }
        boolean z3 = true;
        if (isAtRest() || (this.mOvershootClampingEnabled && isOvershooting())) {
            if (d4 > 0.0d) {
                double d20 = this.mEndValue;
                this.mStartValue = d20;
                this.mCurrentState.position = d20;
            } else {
                this.mEndValue = this.mCurrentState.position;
                this.mStartValue = this.mEndValue;
            }
            setVelocity(0.0d);
            z2 = true;
        }
        if (this.mWasAtRest) {
            this.mWasAtRest = false;
            z = true;
        } else {
            z = false;
        }
        if (z2) {
            this.mWasAtRest = true;
        } else {
            z3 = false;
        }
        Iterator<SpringListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            SpringListener next = it.next();
            if (z) {
                next.onSpringActivate(this);
            }
            next.onSpringUpdate(this);
            if (z3) {
                next.onSpringAtRest(this);
            }
        }
    }

    public boolean systemShouldAdvance() {
        return (isAtRest() && wasAtRest()) ? false : true;
    }

    public boolean wasAtRest() {
        return this.mWasAtRest;
    }

    public boolean isAtRest() {
        return Math.abs(this.mCurrentState.velocity) <= this.mRestSpeedThreshold && (getDisplacementDistanceForState(this.mCurrentState) <= this.mDisplacementFromRestThreshold || this.mSpringConfig.tension == 0.0d);
    }

    public Spring setAtRest() {
        PhysicsState physicsState = this.mCurrentState;
        double d = physicsState.position;
        this.mEndValue = d;
        this.mTempState.position = d;
        physicsState.velocity = 0.0d;
        return this;
    }

    private void interpolate(double d) {
        PhysicsState physicsState = this.mCurrentState;
        double d2 = physicsState.position * d;
        PhysicsState physicsState2 = this.mPreviousState;
        double d3 = 1.0d - d;
        physicsState.position = d2 + (physicsState2.position * d3);
        physicsState.velocity = (physicsState.velocity * d) + (physicsState2.velocity * d3);
    }

    public Spring addListener(SpringListener springListener) {
        if (springListener == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.mListeners.add(springListener);
        return this;
    }

    public Spring removeAllListeners() {
        this.mListeners.clear();
        return this;
    }
}

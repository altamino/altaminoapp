package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public class e {
    private static int ID = 0;
    private static final double MAX_DELTA_TIME_SEC = 0.064d;
    private static final double SOLVER_TIMESTEP_SEC = 0.001d;
    private final b mCurrentState;
    private double mEndValue;
    private final String mId;
    private boolean mOvershootClampingEnabled;
    private final b mPreviousState;
    private f mSpringConfig;
    private final com.facebook.rebound.b mSpringSystem;
    private double mStartValue;
    private final b mTempState;
    private boolean mWasAtRest = true;
    private double mRestSpeedThreshold = 0.005d;
    private double mDisplacementFromRestThreshold = 0.005d;
    private CopyOnWriteArraySet<g> mListeners = new CopyOnWriteArraySet<>();
    private double mTimeAccumulator = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;

    private static class b {
        double position;
        double velocity;

        private b() {
        }
    }

    public String e() {
        return this.mId;
    }

    public double f() {
        return this.mDisplacementFromRestThreshold;
    }

    public e m(double d) {
        return n(d, true);
    }

    public e p(boolean z6) {
        this.mOvershootClampingEnabled = z6;
        return this;
    }

    public e q(double d) {
        this.mDisplacementFromRestThreshold = d;
        return this;
    }

    public boolean u() {
        return this.mWasAtRest;
    }

    private double d(b bVar) {
        return Math.abs(this.mEndValue - bVar.position);
    }

    private void h(double d) {
        b bVar = this.mCurrentState;
        double d2 = bVar.position * d;
        b bVar2 = this.mPreviousState;
        double d6 = 1.0d - d;
        bVar.position = d2 + (bVar2.position * d6);
        bVar.velocity = (bVar.velocity * d) + (bVar2.velocity * d6);
    }

    public e a(g gVar) {
        if (gVar == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.mListeners.add(gVar);
        return this;
    }

    void b(double d) {
        double d2;
        boolean z6;
        boolean z10;
        boolean zI = i();
        if (zI && this.mWasAtRest) {
            return;
        }
        double d6 = MAX_DELTA_TIME_SEC;
        if (d <= MAX_DELTA_TIME_SEC) {
            d6 = d;
        }
        this.mTimeAccumulator += d6;
        f fVar = this.mSpringConfig;
        double d7 = fVar.tension;
        double d10 = fVar.friction;
        b bVar = this.mCurrentState;
        double d11 = bVar.position;
        double d12 = bVar.velocity;
        b bVar2 = this.mTempState;
        double d13 = bVar2.position;
        double d14 = bVar2.velocity;
        while (true) {
            d2 = this.mTimeAccumulator;
            if (d2 < SOLVER_TIMESTEP_SEC) {
                break;
            }
            double d15 = d2 - SOLVER_TIMESTEP_SEC;
            this.mTimeAccumulator = d15;
            if (d15 < SOLVER_TIMESTEP_SEC) {
                b bVar3 = this.mPreviousState;
                bVar3.position = d11;
                bVar3.velocity = d12;
            }
            double d16 = this.mEndValue;
            double d17 = ((d16 - d13) * d7) - (d10 * d12);
            double d18 = (d12 * SOLVER_TIMESTEP_SEC * 0.5d) + d11;
            double d19 = d12 + (d17 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d20 = ((d16 - d18) * d7) - (d10 * d19);
            double d21 = d11 + (d19 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d22 = d12 + (d20 * SOLVER_TIMESTEP_SEC * 0.5d);
            double d23 = ((d16 - d21) * d7) - (d10 * d22);
            double d24 = d11 + (d22 * SOLVER_TIMESTEP_SEC);
            double d25 = d12 + (d23 * SOLVER_TIMESTEP_SEC);
            d11 += (d12 + ((d19 + d22) * 2.0d) + d25) * 0.16666666666666666d * SOLVER_TIMESTEP_SEC;
            d12 += (d17 + ((d20 + d23) * 2.0d) + (((d16 - d24) * d7) - (d10 * d25))) * 0.16666666666666666d * SOLVER_TIMESTEP_SEC;
            d13 = d24;
            d14 = d25;
        }
        b bVar4 = this.mTempState;
        bVar4.position = d13;
        bVar4.velocity = d14;
        b bVar5 = this.mCurrentState;
        bVar5.position = d11;
        bVar5.velocity = d12;
        if (d2 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            h(d2 / SOLVER_TIMESTEP_SEC);
        }
        boolean z11 = true;
        if (i() || (this.mOvershootClampingEnabled && j())) {
            if (d7 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                double d26 = this.mEndValue;
                this.mStartValue = d26;
                this.mCurrentState.position = d26;
            } else {
                double d27 = this.mCurrentState.position;
                this.mEndValue = d27;
                this.mStartValue = d27;
            }
            s(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
            z6 = true;
        } else {
            z6 = zI;
        }
        if (this.mWasAtRest) {
            this.mWasAtRest = false;
            z10 = true;
        } else {
            z10 = false;
        }
        if (z6) {
            this.mWasAtRest = true;
        } else {
            z11 = false;
        }
        for (g gVar : this.mListeners) {
            if (z10) {
                gVar.onSpringActivate(this);
            }
            gVar.onSpringUpdate(this);
            if (z11) {
                gVar.onSpringAtRest(this);
            }
        }
    }

    public double c() {
        return this.mCurrentState.position;
    }

    public double g() {
        return this.mCurrentState.velocity;
    }

    public boolean i() {
        return Math.abs(this.mCurrentState.velocity) <= this.mRestSpeedThreshold && (d(this.mCurrentState) <= this.mDisplacementFromRestThreshold || this.mSpringConfig.tension == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE);
    }

    public boolean j() {
        return this.mSpringConfig.tension > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && ((this.mStartValue < this.mEndValue && c() > this.mEndValue) || (this.mStartValue > this.mEndValue && c() < this.mEndValue));
    }

    public e k() {
        this.mListeners.clear();
        return this;
    }

    public e l() {
        b bVar = this.mCurrentState;
        double d = bVar.position;
        this.mEndValue = d;
        this.mTempState.position = d;
        bVar.velocity = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        return this;
    }

    public e n(double d, boolean z6) {
        this.mStartValue = d;
        this.mCurrentState.position = d;
        this.mSpringSystem.a(e());
        Iterator<g> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringUpdate(this);
        }
        if (z6) {
            l();
        }
        return this;
    }

    public e o(double d) {
        if (this.mEndValue == d && i()) {
            return this;
        }
        this.mStartValue = c();
        this.mEndValue = d;
        this.mSpringSystem.a(e());
        Iterator<g> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSpringEndStateChange(this);
        }
        return this;
    }

    public e r(f fVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        this.mSpringConfig = fVar;
        return this;
    }

    public e s(double d) {
        b bVar = this.mCurrentState;
        if (d == bVar.velocity) {
            return this;
        }
        bVar.velocity = d;
        this.mSpringSystem.a(e());
        return this;
    }

    e(com.facebook.rebound.b bVar) {
        this.mCurrentState = new b();
        this.mPreviousState = new b();
        this.mTempState = new b();
        if (bVar != null) {
            this.mSpringSystem = bVar;
            StringBuilder sb = new StringBuilder();
            sb.append("spring:");
            int i10 = ID;
            ID = i10 + 1;
            sb.append(i10);
            this.mId = sb.toString();
            r(f.defaultConfig);
            return;
        }
        throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }

    public boolean t() {
        if (i() && u()) {
            return false;
        }
        return true;
    }
}

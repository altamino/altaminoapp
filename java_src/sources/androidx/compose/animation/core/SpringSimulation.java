package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes2.dex */
public final class SpringSimulation {
    private double dampedFreq;
    private float finalPosition;
    private double gammaMinus;
    private double gammaPlus;
    private boolean initialized;
    private double naturalFreq = Math.sqrt(50.0d);
    private float dampingRatio = 1.0f;

    public final float a() {
        return this.dampingRatio;
    }

    public final float b() {
        double d = this.naturalFreq;
        return (float) (d * d);
    }

    public final void d(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.dampingRatio = f;
        this.initialized = false;
    }

    public final void e(float f) {
        this.finalPosition = f;
    }

    private final void c() {
        if (this.initialized) {
            return;
        }
        if (this.finalPosition == SpringSimulationKt.b()) {
            throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
        }
        float f = this.dampingRatio;
        double d = ((double) f) * ((double) f);
        if (f > 1.0f) {
            double d2 = this.naturalFreq;
            double d6 = d - ((double) 1);
            this.gammaPlus = (((double) (-f)) * d2) + (d2 * Math.sqrt(d6));
            double d7 = -this.dampingRatio;
            double d10 = this.naturalFreq;
            this.gammaMinus = (d7 * d10) - (d10 * Math.sqrt(d6));
        } else if (f >= 0.0f && f < 1.0f) {
            this.dampedFreq = this.naturalFreq * Math.sqrt(((double) 1) - d);
        }
        this.initialized = true;
    }

    public final long g(float f, float f6, long j6) {
        double dCos;
        double dExp;
        c();
        float f7 = f - this.finalPosition;
        double d = j6 / 1000.0d;
        float f10 = this.dampingRatio;
        if (f10 > 1.0f) {
            double d2 = f7;
            double d6 = this.gammaMinus;
            double d7 = f6;
            double d10 = this.gammaPlus;
            double d11 = d2 - (((d6 * d2) - d7) / (d6 - d10));
            double d12 = ((d2 * d6) - d7) / (d6 - d10);
            dExp = (Math.exp(d6 * d) * d11) + (Math.exp(this.gammaPlus * d) * d12);
            double d13 = this.gammaMinus;
            double dExp2 = d11 * d13 * Math.exp(d13 * d);
            double d14 = this.gammaPlus;
            dCos = dExp2 + (d12 * d14 * Math.exp(d14 * d));
        } else if (f10 == 1.0f) {
            double d15 = this.naturalFreq;
            double d16 = f7;
            double d17 = ((double) f6) + (d15 * d16);
            double d18 = d16 + (d17 * d);
            double dExp3 = Math.exp((-d15) * d) * d18;
            double dExp4 = d18 * Math.exp((-this.naturalFreq) * d);
            double d19 = this.naturalFreq;
            dCos = (dExp4 * (-d19)) + (d17 * Math.exp((-d19) * d));
            dExp = dExp3;
        } else {
            double d20 = ((double) 1) / this.dampedFreq;
            double d21 = this.naturalFreq;
            double d22 = f7;
            double d23 = d20 * ((((double) f10) * d21 * d22) + ((double) f6));
            double dExp5 = Math.exp(((double) (-f10)) * d21 * d) * ((Math.cos(this.dampedFreq * d) * d22) + (Math.sin(this.dampedFreq * d) * d23));
            double d24 = this.naturalFreq;
            float f11 = this.dampingRatio;
            double d25 = (-d24) * dExp5 * ((double) f11);
            double dExp6 = Math.exp(((double) (-f11)) * d24 * d);
            double d26 = this.dampedFreq;
            double dSin = (-d26) * d22 * Math.sin(d26 * d);
            double d27 = this.dampedFreq;
            dCos = d25 + (dExp6 * (dSin + (d23 * d27 * Math.cos(d27 * d))));
            dExp = dExp5;
        }
        return SpringSimulationKt.a((float) (dExp + ((double) this.finalPosition)), (float) dCos);
    }

    public SpringSimulation(float f) {
        this.finalPosition = f;
    }

    public final void f(float f) {
        if (b() > 0.0f) {
            this.naturalFreq = Math.sqrt(f);
            this.initialized = false;
            return;
        }
        throw new IllegalArgumentException("Spring stiffness constant must be positive.");
    }
}

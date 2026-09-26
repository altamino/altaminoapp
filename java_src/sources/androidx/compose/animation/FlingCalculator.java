package androidx.compose.animation;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import i.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class FlingCalculator {

    @NotNull
    private final Density density;
    private final float friction;
    private final float magicPhysicalCoefficient;

    @StabilityInferred
    public static final class FlingInfo {
        public static final int $stable = 0;
        private final float distance;
        private final long duration;
        private final float initialVelocity;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            return t.e(Float.valueOf(this.initialVelocity), Float.valueOf(flingInfo.initialVelocity)) && t.e(Float.valueOf(this.distance), Float.valueOf(flingInfo.distance)) && this.duration == flingInfo.duration;
        }

        public int hashCode() {
            return (((Float.floatToIntBits(this.initialVelocity) * 31) + Float.floatToIntBits(this.distance)) * 31) + a.a(this.duration);
        }

        @NotNull
        public String toString() {
            return "FlingInfo(initialVelocity=" + this.initialVelocity + ", distance=" + this.distance + ", duration=" + this.duration + ')';
        }

        public final float a(long j6) {
            long j10 = this.duration;
            return this.distance * Math.signum(this.initialVelocity) * AndroidFlingSpline.INSTANCE.b(j10 > 0 ? j6 / j10 : 1.0f).a();
        }

        public final float b(long j6) {
            long j10 = this.duration;
            return (((AndroidFlingSpline.INSTANCE.b(j10 > 0 ? j6 / j10 : 1.0f).b() * Math.signum(this.initialVelocity)) * this.distance) / this.duration) * 1000.0f;
        }

        public FlingInfo(float f, float f6, long j6) {
            this.initialVelocity = f;
            this.distance = f6;
            this.duration = j6;
        }
    }

    public FlingCalculator(float f, @NotNull Density density) {
        t.j(density, "density");
        this.friction = f;
        this.density = density;
        this.magicPhysicalCoefficient = a(density);
    }

    private final double e(float f) {
        return AndroidFlingSpline.INSTANCE.a(f, this.friction * this.magicPhysicalCoefficient);
    }

    private final float a(Density density) {
        return FlingCalculatorKt.c(0.84f, density.getDensity());
    }

    public final float b(float f) {
        return (float) (((double) (this.friction * this.magicPhysicalCoefficient)) * Math.exp((((double) FlingCalculatorKt.DecelerationRate) / (((double) FlingCalculatorKt.DecelerationRate) - 1.0d)) * e(f)));
    }

    public final long c(float f) {
        return (long) (Math.exp(e(f) / (((double) FlingCalculatorKt.DecelerationRate) - 1.0d)) * 1000.0d);
    }

    @NotNull
    public final FlingInfo d(float f) {
        double dE = e(f);
        double d = ((double) FlingCalculatorKt.DecelerationRate) - 1.0d;
        return new FlingInfo(f, (float) (((double) (this.friction * this.magicPhysicalCoefficient)) * Math.exp((((double) FlingCalculatorKt.DecelerationRate) / d) * dE)), (long) (Math.exp(dE / d) * 1000.0d));
    }
}

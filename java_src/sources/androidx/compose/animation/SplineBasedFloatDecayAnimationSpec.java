package androidx.compose.animation;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {
    public static final int $stable = 0;

    @NotNull
    private final FlingCalculator flingCalculator;

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float a() {
        return 0.0f;
    }

    public SplineBasedFloatDecayAnimationSpec(@NotNull Density density) {
        t.j(density, "density");
        this.flingCalculator = new FlingCalculator(SplineBasedFloatDecayAnimationSpec_androidKt.a(), density);
    }

    private final float f(float f) {
        return this.flingCalculator.b(f) * Math.signum(f);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long c(float f, float f6) {
        return this.flingCalculator.c(f6) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float b(long j6, float f, float f6) {
        return this.flingCalculator.d(f6).b(j6 / 1000000);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float d(float f, float f6) {
        return f + f(f6);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float e(long j6, float f, float f6) {
        return f + this.flingCalculator.d(f6).a(j6 / 1000000);
    }
}

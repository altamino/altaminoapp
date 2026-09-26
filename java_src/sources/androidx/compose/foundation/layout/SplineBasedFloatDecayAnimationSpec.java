package androidx.compose.foundation.layout;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {
    private final float magicPhysicalCoefficient;

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float a() {
        return 0.0f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float b(long j6, float f, float f6) {
        long jC = c(0.0f, f6);
        return ((AndroidFlingSpline.FlingResult.d(AndroidFlingSpline.INSTANCE.b(jC > 0 ? j6 / jC : 1.0f)) * f(f6)) / jC) * 1.0E9f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float e(long j6, float f, float f6) {
        long jC = c(0.0f, f6);
        return f + (f(f6) * AndroidFlingSpline.FlingResult.c(AndroidFlingSpline.INSTANCE.b(jC > 0 ? j6 / jC : 1.0f)));
    }

    public SplineBasedFloatDecayAnimationSpec(@NotNull Density density) {
        t.j(density, "density");
        this.magicPhysicalCoefficient = density.getDensity() * 386.0878f * 160.0f * 0.84f;
    }

    private final double g(float f) {
        return AndroidFlingSpline.INSTANCE.a(f, WindowInsetsConnection_androidKt.PlatformFlingScrollFriction * this.magicPhysicalCoefficient);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public long c(float f, float f6) {
        return (long) (Math.exp(g(f6) / WindowInsetsConnection_androidKt.DecelMinusOne) * 1.0E9d);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public float d(float f, float f6) {
        return f + f(f6);
    }

    public final float f(float f) {
        return ((float) (((double) (WindowInsetsConnection_androidKt.PlatformFlingScrollFriction * this.magicPhysicalCoefficient)) * Math.exp((WindowInsetsConnection_androidKt.DecelerationRate / WindowInsetsConnection_androidKt.DecelMinusOne) * g(f)))) * Math.signum(f);
    }
}

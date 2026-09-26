package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class FloatSpringSpec implements FloatAnimationSpec {
    public static final int $stable = 8;
    private final float dampingRatio;

    @NotNull
    private final SpringSimulation spring;
    private final float stiffness;
    private final float visibilityThreshold;

    public FloatSpringSpec() {
        this(0.0f, 0.0f, 0.0f, 7, null);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public /* bridge */ /* synthetic */ VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return a(twoWayConverter);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float d(float f, float f6, float f7) {
        return 0.0f;
    }

    public FloatSpringSpec(float f, float f6, float f7) {
        this.dampingRatio = f;
        this.stiffness = f6;
        this.visibilityThreshold = f7;
        SpringSimulation springSimulation = new SpringSimulation(1.0f);
        springSimulation.d(f);
        springSimulation.f(f6);
        this.spring = springSimulation;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public /* synthetic */ VectorizedFloatAnimationSpec a(TwoWayConverter twoWayConverter) {
        return c.c(this, twoWayConverter);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public long c(float f, float f6, float f7) {
        float fB = this.spring.b();
        float fA = this.spring.a();
        float f10 = f - f6;
        float f11 = this.visibilityThreshold;
        return SpringEstimationKt.b(fB, fA, f7 / f11, f10 / f11, 1.0f) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float b(long j6, float f, float f6, float f7) {
        this.spring.e(f6);
        return Motion.d(this.spring.g(f, f7, j6 / 1000000));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public float e(long j6, float f, float f6, float f7) {
        this.spring.e(f6);
        return Motion.c(this.spring.g(f, f7, j6 / 1000000));
    }

    public /* synthetic */ FloatSpringSpec(float f, float f6, float f7, int i10, k kVar) {
        this((i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 1500.0f : f6, (i10 & 4) != 0 ? 0.01f : f7);
    }
}

package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class VectorizedSpringSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;
    private final /* synthetic */ VectorizedFloatAnimationSpec<V> $$delegate_0;
    private final float dampingRatio;
    private final float stiffness;

    private VectorizedSpringSpec(float f, float f6, Animations animations) {
        this.dampingRatio = f;
        this.stiffness = f6;
        this.$$delegate_0 = new VectorizedFloatAnimationSpec<>(animations);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean a() {
        return this.$$delegate_0.a();
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V b(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return (V) this.$$delegate_0.b(initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V c(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return (V) this.$$delegate_0.c(j6, initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long d(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return this.$$delegate_0.d(initialValue, targetValue, initialVelocity);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return (V) this.$$delegate_0.e(j6, initialValue, targetValue, initialVelocity);
    }

    public /* synthetic */ VectorizedSpringSpec(float f, float f6, AnimationVector animationVector, int i10, k kVar) {
        this((i10 & 1) != 0 ? 1.0f : f, (i10 & 2) != 0 ? 1500.0f : f6, (i10 & 4) != 0 ? null : animationVector);
    }

    public VectorizedSpringSpec(float f, float f6, @Nullable V v5) {
        this(f, f6, VectorizedAnimationSpecKt.d(v5, f, f6));
    }
}

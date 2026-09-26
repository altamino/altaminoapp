package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class VectorizedSnapSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 0;
    private final int delayMillis;

    public VectorizedSnapSpec() {
        this(0, 1, null);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ boolean a() {
        return h.a(this);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ AnimationVector b(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return f.a(this, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V c(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return initialVelocity;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public /* synthetic */ long d(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return g.a(this, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int f() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int g() {
        return 0;
    }

    public VectorizedSnapSpec(int i10) {
        this.delayMillis = i10;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return j6 < ((long) f()) * 1000000 ? initialValue : targetValue;
    }

    public /* synthetic */ VectorizedSnapSpec(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}

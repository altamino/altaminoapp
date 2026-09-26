package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class VectorizedRepeatableSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {
    public static final int $stable = 8;

    @NotNull
    private final VectorizedDurationBasedAnimationSpec<V> animation;
    private final long durationNanos;
    private final long initialOffsetNanos;
    private final int iterations;

    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6, k kVar) {
        this(i10, vectorizedDurationBasedAnimationSpec, repeatMode, j6);
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
    public long d(@NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return (((long) this.iterations) * this.durationNanos) - this.initialOffsetNanos;
    }

    private VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6) {
        this.iterations = i10;
        this.animation = vectorizedDurationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        if (i10 < 1) {
            throw new IllegalArgumentException("Iterations count can't be less than 1");
        }
        this.durationNanos = ((long) (vectorizedDurationBasedAnimationSpec.f() + vectorizedDurationBasedAnimationSpec.g())) * 1000000;
        this.initialOffsetNanos = j6 * 1000000;
    }

    private final long h(long j6) {
        long j10 = this.initialOffsetNanos;
        if (j6 + j10 <= 0) {
            return 0L;
        }
        long j11 = j6 + j10;
        long jMin = Math.min(j11 / this.durationNanos, ((long) this.iterations) - 1);
        return (this.repeatMode == RepeatMode.Restart || jMin % ((long) 2) == 0) ? j11 - (jMin * this.durationNanos) : ((jMin + 1) * this.durationNanos) - j11;
    }

    private final V i(long j6, V v5, V v6, V v10) {
        long j10 = this.initialOffsetNanos;
        long j11 = j6 + j10;
        long j12 = this.durationNanos;
        return j11 > j12 ? (V) c(j12 - j10, v5, v6, v10) : v6;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V c(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return this.animation.c(h(j6), initialValue, targetValue, i(j6, initialValue, initialVelocity, targetValue));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    @NotNull
    public V e(long j6, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        t.j(initialValue, "initialValue");
        t.j(targetValue, "targetValue");
        t.j(initialVelocity, "initialVelocity");
        return this.animation.e(h(j6), initialValue, targetValue, i(j6, initialValue, initialVelocity, targetValue));
    }

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6, int i11, k kVar) {
        this(i10, vectorizedDurationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode, (i11 & 8) != 0 ? StartOffset.c(0, 0, 2, null) : j6, (k) null);
    }

    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, int i11, k kVar) {
        this(i10, vectorizedDurationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VectorizedRepeatableSpec(int i10, VectorizedDurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(i10, animation, repeatMode, StartOffset.c(0, 0, 2, null), (k) null);
        t.j(animation, "animation");
        t.j(repeatMode, "repeatMode");
    }
}

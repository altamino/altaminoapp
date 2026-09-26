package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class VectorizedInfiniteRepeatableSpec<V extends AnimationVector> implements VectorizedAnimationSpec<V> {
    public static final int $stable = 8;

    @NotNull
    private final VectorizedDurationBasedAnimationSpec<V> animation;
    private final long durationNanos;
    private final long initialOffsetNanos;

    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6, k kVar) {
        this(vectorizedDurationBasedAnimationSpec, repeatMode, j6);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean a() {
        return true;
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
        return Long.MAX_VALUE;
    }

    private VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6) {
        this.animation = vectorizedDurationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.durationNanos = ((long) (vectorizedDurationBasedAnimationSpec.f() + vectorizedDurationBasedAnimationSpec.g())) * 1000000;
        this.initialOffsetNanos = j6 * 1000000;
    }

    private final long h(long j6) {
        long j10 = this.initialOffsetNanos;
        if (j6 + j10 <= 0) {
            return 0L;
        }
        long j11 = j6 + j10;
        long j12 = this.durationNanos;
        long j13 = j11 / j12;
        if (this.repeatMode != RepeatMode.Restart && j13 % ((long) 2) != 0) {
            return ((j13 + 1) * j12) - j11;
        }
        Long.signum(j13);
        return j11 - (j13 * j12);
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

    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j6, int i10, k kVar) {
        this(vectorizedDurationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode, (i10 & 4) != 0 ? StartOffset.c(0, 0, 2, null) : j6, (k) null);
    }

    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, int i10, k kVar) {
        this(vectorizedDurationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(animation, repeatMode, StartOffset.c(0, 0, 2, null), (k) null);
        t.j(animation, "animation");
        t.j(repeatMode, "repeatMode");
    }
}

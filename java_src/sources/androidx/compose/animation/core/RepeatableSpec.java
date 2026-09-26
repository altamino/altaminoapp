package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class RepeatableSpec<T> implements FiniteAnimationSpec<T> {

    @NotNull
    private final DurationBasedAnimationSpec<T> animation;
    private final long initialStartOffset;
    private final int iterations;

    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j6, k kVar) {
        this(i10, durationBasedAnimationSpec, repeatMode, j6);
    }

    private RepeatableSpec(int i10, DurationBasedAnimationSpec<T> durationBasedAnimationSpec, RepeatMode repeatMode, long j6) {
        this.iterations = i10;
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.initialStartOffset = j6;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof RepeatableSpec)) {
            return false;
        }
        RepeatableSpec repeatableSpec = (RepeatableSpec) obj;
        return repeatableSpec.iterations == this.iterations && t.e(repeatableSpec.animation, this.animation) && repeatableSpec.repeatMode == this.repeatMode && StartOffset.e(repeatableSpec.initialStartOffset, this.initialStartOffset);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public <V extends AnimationVector> VectorizedFiniteAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        return new VectorizedRepeatableSpec(this.iterations, this.animation.a((TwoWayConverter) converter), this.repeatMode, this.initialStartOffset, (k) null);
    }

    public int hashCode() {
        return (((((this.iterations * 31) + this.animation.hashCode()) * 31) + this.repeatMode.hashCode()) * 31) + StartOffset.f(this.initialStartOffset);
    }

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j6, int i11, k kVar) {
        this(i10, durationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode, (i11 & 8) != 0 ? StartOffset.c(0, 0, 2, null) : j6, (k) null);
    }

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i11, k kVar) {
        this(i10, durationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(i10, animation, repeatMode, StartOffset.c(0, 0, 2, null), (k) null);
        t.j(animation, "animation");
        t.j(repeatMode, "repeatMode");
    }
}

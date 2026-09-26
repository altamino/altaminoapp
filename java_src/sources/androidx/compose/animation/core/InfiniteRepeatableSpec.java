package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class InfiniteRepeatableSpec<T> implements AnimationSpec<T> {
    public static final int $stable = 8;

    @NotNull
    private final DurationBasedAnimationSpec<T> animation;
    private final long initialStartOffset;

    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j6, k kVar) {
        this(durationBasedAnimationSpec, repeatMode, j6);
    }

    private InfiniteRepeatableSpec(DurationBasedAnimationSpec<T> durationBasedAnimationSpec, RepeatMode repeatMode, long j6) {
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.initialStartOffset = j6;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> converter) {
        t.j(converter, "converter");
        return new VectorizedInfiniteRepeatableSpec(this.animation.a((TwoWayConverter) converter), this.repeatMode, this.initialStartOffset, (k) null);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof InfiniteRepeatableSpec)) {
            return false;
        }
        InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
        return t.e(infiniteRepeatableSpec.animation, this.animation) && infiniteRepeatableSpec.repeatMode == this.repeatMode && StartOffset.e(infiniteRepeatableSpec.initialStartOffset, this.initialStartOffset);
    }

    public int hashCode() {
        return (((this.animation.hashCode() * 31) + this.repeatMode.hashCode()) * 31) + StartOffset.f(this.initialStartOffset);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j6, int i10, k kVar) {
        this(durationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode, (i10 & 4) != 0 ? StartOffset.c(0, 0, 2, null) : j6, (k) null);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i10, k kVar) {
        this(durationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(animation, repeatMode, StartOffset.c(0, 0, 2, null), (k) null);
        t.j(animation, "animation");
        t.j(repeatMode, "repeatMode");
    }
}

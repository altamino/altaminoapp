package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface DurationBasedAnimationSpec<T> extends FiniteAnimationSpec<T> {
    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    <V extends AnimationVector> VectorizedDurationBasedAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> twoWayConverter);
}

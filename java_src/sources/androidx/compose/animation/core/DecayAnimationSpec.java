package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface DecayAnimationSpec<T> {
    @NotNull
    <V extends AnimationVector> VectorizedDecayAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> twoWayConverter);
}

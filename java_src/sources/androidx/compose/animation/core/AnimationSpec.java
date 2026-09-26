package androidx.compose.animation.core;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface AnimationSpec<T> {
    @NotNull
    <V extends AnimationVector> VectorizedAnimationSpec<V> a(@NotNull TwoWayConverter<T, V> twoWayConverter);
}

package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface VectorizedDecayAnimationSpec<V extends AnimationVector> {
    float a();

    @NotNull
    V b(long j6, @NotNull V v5, @NotNull V v6);

    long c(@NotNull V v5, @NotNull V v6);

    @NotNull
    V d(@NotNull V v5, @NotNull V v6);

    @NotNull
    V e(long j6, @NotNull V v5, @NotNull V v6);
}

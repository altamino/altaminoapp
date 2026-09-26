package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface VectorizedAnimationSpec<V extends AnimationVector> {

    public static final class DefaultImpls {
    }

    boolean a();

    @NotNull
    V b(@NotNull V v5, @NotNull V v6, @NotNull V v10);

    @NotNull
    V c(long j6, @NotNull V v5, @NotNull V v6, @NotNull V v10);

    long d(@NotNull V v5, @NotNull V v6, @NotNull V v10);

    @NotNull
    V e(long j6, @NotNull V v5, @NotNull V v6, @NotNull V v10);
}

package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import e8.l;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface TwoWayConverter<T, V extends AnimationVector> {
    @NotNull
    l<T, V> a();

    @NotNull
    l<V, T> b();
}

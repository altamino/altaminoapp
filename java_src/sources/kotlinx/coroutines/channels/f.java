package kotlinx.coroutines.channels;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface f<E> {
    @Nullable
    Object b(@NotNull kotlin.coroutines.d<? super Boolean> dVar);

    E next();
}

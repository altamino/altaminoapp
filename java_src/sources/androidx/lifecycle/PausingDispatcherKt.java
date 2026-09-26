package androidx.lifecycle;

import e8.p;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class PausingDispatcherKt {
    @Nullable
    public static final <T> Object a(@NotNull Lifecycle lifecycle, @NotNull p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return d(lifecycle, Lifecycle.State.CREATED, pVar, dVar);
    }

    @Nullable
    public static final <T> Object b(@NotNull Lifecycle lifecycle, @NotNull p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return d(lifecycle, Lifecycle.State.RESUMED, pVar, dVar);
    }

    @Nullable
    public static final <T> Object c(@NotNull Lifecycle lifecycle, @NotNull p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return d(lifecycle, Lifecycle.State.STARTED, pVar, dVar);
    }

    @Nullable
    public static final <T> Object d(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return kotlinx.coroutines.i.g(e1.c().getImmediate(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, pVar, null), dVar);
    }
}

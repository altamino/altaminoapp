package androidx.lifecycle;

import e8.p;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class RepeatOnLifecycleKt {
    @Nullable
    public static final Object a(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull p<? super o0, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        if (state == Lifecycle.State.INITIALIZED) {
            throw new IllegalArgumentException("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.".toString());
        }
        if (lifecycle.b() == Lifecycle.State.DESTROYED) {
            return l0.INSTANCE;
        }
        Object objF = p0.f(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, pVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }
}

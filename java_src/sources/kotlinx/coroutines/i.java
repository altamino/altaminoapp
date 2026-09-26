package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class i {
    @NotNull
    public static final <T> v0<T> a(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar, @NotNull q0 q0Var, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) {
        return k.a(o0Var, gVar, q0Var, pVar);
    }

    @NotNull
    public static final b2 c(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar, @NotNull q0 q0Var, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return k.c(o0Var, gVar, q0Var, pVar);
    }

    public static final <T> T e(@NotNull kotlin.coroutines.g gVar, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar) throws InterruptedException {
        return (T) j.a(gVar, pVar);
    }

    @Nullable
    public static final <T> Object g(@NotNull kotlin.coroutines.g gVar, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        return k.e(gVar, pVar, dVar);
    }
}

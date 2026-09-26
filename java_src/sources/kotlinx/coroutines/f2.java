package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class f2 {
    @NotNull
    public static final a0 a(@Nullable b2 b2Var) {
        return h2.a(b2Var);
    }

    public static final void c(@NotNull kotlin.coroutines.g gVar, @Nullable CancellationException cancellationException) {
        h2.c(gVar, cancellationException);
    }

    public static final void d(@NotNull b2 b2Var, @NotNull String str, @Nullable Throwable th) {
        h2.d(b2Var, str, th);
    }

    @Nullable
    public static final Object g(@NotNull b2 b2Var, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        return h2.g(b2Var, dVar);
    }

    public static final void h(@NotNull o<?> oVar, @NotNull Future<?> future) {
        g2.a(oVar, future);
    }

    @NotNull
    public static final g1 i(@NotNull b2 b2Var, @NotNull g1 g1Var) {
        return h2.h(b2Var, g1Var);
    }

    public static final void j(@NotNull kotlin.coroutines.g gVar) {
        h2.i(gVar);
    }

    public static final void k(@NotNull b2 b2Var) {
        h2.j(b2Var);
    }

    @NotNull
    public static final b2 l(@NotNull kotlin.coroutines.g gVar) {
        return h2.k(gVar);
    }

    public static final boolean m(@NotNull kotlin.coroutines.g gVar) {
        return h2.l(gVar);
    }
}

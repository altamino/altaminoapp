package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class p0 {
    @NotNull
    public static final o0 a(@NotNull kotlin.coroutines.g gVar) {
        if (gVar.get(b2.Key) == null) {
            gVar = gVar.plus(h2.b(null, 1, null));
        }
        return new kotlinx.coroutines.internal.f(gVar);
    }

    @NotNull
    public static final o0 b() {
        return new kotlinx.coroutines.internal.f(y2.b(null, 1, null).plus(e1.c()));
    }

    public static /* synthetic */ void e(o0 o0Var, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        d(o0Var, cancellationException);
    }

    @Nullable
    public static final <R> Object f(@NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        kotlinx.coroutines.internal.e0 e0Var = new kotlinx.coroutines.internal.e0(dVar.getContext(), dVar);
        Object objB = l8.b.b(e0Var, e0Var, pVar);
        if (objB == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objB;
    }

    @NotNull
    public static final o0 i(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar) {
        return new kotlinx.coroutines.internal.f(o0Var.getCoroutineContext().plus(gVar));
    }

    public static final void c(@NotNull o0 o0Var, @NotNull String str, @Nullable Throwable th) {
        d(o0Var, p1.a(str, th));
    }

    public static final void d(@NotNull o0 o0Var, @Nullable CancellationException cancellationException) {
        b2 b2Var = (b2) o0Var.getCoroutineContext().get(b2.Key);
        if (b2Var != null) {
            b2Var.b(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + o0Var).toString());
    }

    public static final void g(@NotNull o0 o0Var) {
        f2.j(o0Var.getCoroutineContext());
    }

    public static final boolean h(@NotNull o0 o0Var) {
        b2 b2Var = (b2) o0Var.getCoroutineContext().get(b2.Key);
        if (b2Var != null) {
            return b2Var.isActive();
        }
        return true;
    }
}

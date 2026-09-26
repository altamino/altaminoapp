package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class h2 {
    @Nullable
    public static final Object g(@NotNull b2 b2Var, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        b2.a.a(b2Var, null, 1, null);
        Object objT0 = b2Var.t0(dVar);
        return objT0 == kotlin.coroutines.intrinsics.d.e() ? objT0 : w7.l0.INSTANCE;
    }

    @NotNull
    public static final a0 a(@Nullable b2 b2Var) {
        return new e2(b2Var);
    }

    public static /* synthetic */ a0 b(b2 b2Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            b2Var = null;
        }
        return f2.a(b2Var);
    }

    public static final void c(@NotNull kotlin.coroutines.g gVar, @Nullable CancellationException cancellationException) {
        b2 b2Var = (b2) gVar.get(b2.Key);
        if (b2Var != null) {
            b2Var.b(cancellationException);
        }
    }

    public static /* synthetic */ void e(kotlin.coroutines.g gVar, CancellationException cancellationException, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            cancellationException = null;
        }
        f2.c(gVar, cancellationException);
    }

    public static /* synthetic */ void f(b2 b2Var, String str, Throwable th, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            th = null;
        }
        f2.d(b2Var, str, th);
    }

    @NotNull
    public static final g1 h(@NotNull b2 b2Var, @NotNull g1 g1Var) {
        return b2Var.U(new i1(g1Var));
    }

    public static final void i(@NotNull kotlin.coroutines.g gVar) {
        b2 b2Var = (b2) gVar.get(b2.Key);
        if (b2Var != null) {
            f2.k(b2Var);
        }
    }

    @NotNull
    public static final b2 k(@NotNull kotlin.coroutines.g gVar) {
        b2 b2Var = (b2) gVar.get(b2.Key);
        if (b2Var != null) {
            return b2Var;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + gVar).toString());
    }

    public static final boolean l(@NotNull kotlin.coroutines.g gVar) {
        b2 b2Var = (b2) gVar.get(b2.Key);
        if (b2Var != null) {
            return b2Var.isActive();
        }
        return true;
    }

    public static final void d(@NotNull b2 b2Var, @NotNull String str, @Nullable Throwable th) {
        b2Var.b(p1.a(str, th));
    }

    public static final void j(@NotNull b2 b2Var) {
        if (b2Var.isActive()) {
        } else {
            throw b2Var.b0();
        }
    }
}

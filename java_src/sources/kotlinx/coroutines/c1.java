package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class c1 {
    public static final int MODE_ATOMIC = 0;
    public static final int MODE_CANCELLABLE = 1;
    public static final int MODE_CANCELLABLE_REUSABLE = 2;
    public static final int MODE_UNDISPATCHED = 4;
    public static final int MODE_UNINITIALIZED = -1;

    public static final boolean b(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean c(int i10) {
        return i10 == 2;
    }

    private static final void e(b1<?> b1Var) {
        k1 k1VarB = b3.INSTANCE.b();
        if (k1VarB.K0()) {
            k1VarB.G0(b1Var);
            return;
        }
        k1VarB.I0(true);
        try {
            d(b1Var, b1Var.c(), true);
            do {
            } while (k1VarB.N0());
        } catch (Throwable th) {
            try {
                b1Var.g(th, null);
            } finally {
                k1VarB.L(true);
            }
        }
    }

    public static final <T> void a(@NotNull b1<? super T> b1Var, int i10) {
        boolean z6;
        kotlin.coroutines.d<? super T> dVarC = b1Var.c();
        if (i10 == 4) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!z6 && (dVarC instanceof kotlinx.coroutines.internal.j) && b(i10) == b(b1Var.resumeMode)) {
            k0 k0Var = ((kotlinx.coroutines.internal.j) dVarC).dispatcher;
            kotlin.coroutines.g context = dVarC.getContext();
            if (k0Var.isDispatchNeeded(context)) {
                k0Var.dispatch(context, b1Var);
                return;
            } else {
                e(b1Var);
                return;
            }
        }
        d(b1Var, dVarC, z6);
    }

    public static final <T> void d(@NotNull b1<? super T> b1Var, @NotNull kotlin.coroutines.d<? super T> dVar, boolean z6) {
        Object objF;
        h3<?> h3VarG;
        boolean zA1;
        Object objH = b1Var.h();
        Throwable thD = b1Var.d(objH);
        if (thD != null) {
            w7.v.a aVar = w7.v.Companion;
            objF = w7.w.a(thD);
        } else {
            w7.v.a aVar2 = w7.v.Companion;
            objF = b1Var.f(objH);
        }
        Object objB = w7.v.b(objF);
        if (z6) {
            kotlin.jvm.internal.t.h(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
            kotlinx.coroutines.internal.j jVar = (kotlinx.coroutines.internal.j) dVar;
            kotlin.coroutines.d<T> dVar2 = jVar.continuation;
            Object obj = jVar.countOrElement;
            kotlin.coroutines.g context = dVar2.getContext();
            Object objC = kotlinx.coroutines.internal.m0.c(context, obj);
            if (objC != kotlinx.coroutines.internal.m0.NO_THREAD_ELEMENTS) {
                h3VarG = j0.g(dVar2, context, objC);
            } else {
                h3VarG = null;
            }
            try {
                jVar.continuation.resumeWith(objB);
                w7.l0 l0Var = w7.l0.INSTANCE;
                if (h3VarG != null) {
                    if (!zA1) {
                        return;
                    }
                }
                return;
            } finally {
                if (h3VarG == null || h3VarG.a1()) {
                    kotlinx.coroutines.internal.m0.a(context, objC);
                }
            }
        }
        dVar.resumeWith(objB);
    }
}

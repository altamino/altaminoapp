package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.b3;
import kotlinx.coroutines.h3;
import kotlinx.coroutines.k1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    @NotNull
    private static final i0 UNDEFINED = new i0("UNDEFINED");

    @NotNull
    public static final i0 REUSABLE_CLAIMED = new i0("REUSABLE_CLAIMED");

    public static final <T> void b(@NotNull kotlin.coroutines.d<? super T> dVar, @NotNull Object obj, @Nullable e8.l<? super Throwable, w7.l0> lVar) {
        if (!(dVar instanceof j)) {
            dVar.resumeWith(obj);
            return;
        }
        j jVar = (j) dVar;
        Object objB = kotlinx.coroutines.g0.b(obj, lVar);
        if (jVar.dispatcher.isDispatchNeeded(jVar.getContext())) {
            jVar._state = objB;
            jVar.resumeMode = 1;
            jVar.dispatcher.dispatch(jVar.getContext(), jVar);
            return;
        }
        k1 k1VarB = b3.INSTANCE.b();
        if (k1VarB.K0()) {
            jVar._state = objB;
            jVar.resumeMode = 1;
            k1VarB.G0(jVar);
            return;
        }
        k1VarB.I0(true);
        try {
            b2 b2Var = (b2) jVar.getContext().get(b2.Key);
            if (b2Var == null || b2Var.isActive()) {
                kotlin.coroutines.d<T> dVar2 = jVar.continuation;
                Object obj2 = jVar.countOrElement;
                kotlin.coroutines.g context = dVar2.getContext();
                Object objC = m0.c(context, obj2);
                h3<?> h3VarG = objC != m0.NO_THREAD_ELEMENTS ? kotlinx.coroutines.j0.g(dVar2, context, objC) : null;
                try {
                    jVar.continuation.resumeWith(obj);
                    w7.l0 l0Var = w7.l0.INSTANCE;
                    if (h3VarG == null || h3VarG.a1()) {
                        m0.a(context, objC);
                    }
                } catch (Throwable th) {
                    if (h3VarG == null || h3VarG.a1()) {
                        m0.a(context, objC);
                    }
                    throw th;
                }
            } else {
                CancellationException cancellationExceptionB0 = b2Var.b0();
                jVar.b(objB, cancellationExceptionB0);
                w7.v.a aVar = w7.v.Companion;
                jVar.resumeWith(w7.v.b(w7.w.a(cancellationExceptionB0)));
            }
            while (k1VarB.N0()) {
            }
        } catch (Throwable th2) {
            try {
                jVar.g(th2, null);
            } finally {
                k1VarB.L(true);
            }
        }
    }

    public static /* synthetic */ void c(kotlin.coroutines.d dVar, Object obj, e8.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        b(dVar, obj, lVar);
    }

    public static final boolean d(@NotNull j<? super w7.l0> jVar) {
        w7.l0 l0Var = w7.l0.INSTANCE;
        k1 k1VarB = b3.INSTANCE.b();
        if (k1VarB.L0()) {
            return false;
        }
        if (k1VarB.K0()) {
            jVar._state = l0Var;
            jVar.resumeMode = 1;
            k1VarB.G0(jVar);
            return true;
        }
        k1VarB.I0(true);
        try {
            jVar.run();
            do {
            } while (k1VarB.N0());
        } catch (Throwable th) {
            try {
                jVar.g(th, null);
            } finally {
                k1VarB.L(true);
            }
        }
        return false;
    }
}

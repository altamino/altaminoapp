package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class b1<T> extends kotlinx.coroutines.scheduling.h {
    public int resumeMode;

    public void b(@Nullable Object obj, @NotNull Throwable th) {
    }

    @NotNull
    public abstract kotlin.coroutines.d<T> c();

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T f(@Nullable Object obj) {
        return obj;
    }

    @Nullable
    public abstract Object h();

    @Nullable
    public Throwable d(@Nullable Object obj) {
        c0 c0Var = obj instanceof c0 ? (c0) obj : null;
        if (c0Var != null) {
            return c0Var.cause;
        }
        return null;
    }

    public final void g(@Nullable Throwable th, @Nullable Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            w7.f.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        kotlin.jvm.internal.t.g(th);
        m0.a(c().getContext(), new r0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objB;
        Object objB2;
        kotlinx.coroutines.scheduling.i iVar = this.taskContext;
        try {
            kotlin.coroutines.d<T> dVarC = c();
            kotlin.jvm.internal.t.h(dVarC, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            kotlinx.coroutines.internal.j jVar = (kotlinx.coroutines.internal.j) dVarC;
            kotlin.coroutines.d<T> dVar = jVar.continuation;
            Object obj = jVar.countOrElement;
            kotlin.coroutines.g context = dVar.getContext();
            Object objC = kotlinx.coroutines.internal.m0.c(context, obj);
            h3<?> h3VarG = objC != kotlinx.coroutines.internal.m0.NO_THREAD_ELEMENTS ? j0.g(dVar, context, objC) : null;
            try {
                kotlin.coroutines.g context2 = dVar.getContext();
                Object objH = h();
                Throwable thD = d(objH);
                b2 b2Var = (thD == null && c1.b(this.resumeMode)) ? (b2) context2.get(b2.Key) : null;
                if (b2Var != null && !b2Var.isActive()) {
                    CancellationException cancellationExceptionB0 = b2Var.b0();
                    b(objH, cancellationExceptionB0);
                    w7.v.a aVar = w7.v.Companion;
                    dVar.resumeWith(w7.v.b(w7.w.a(cancellationExceptionB0)));
                } else if (thD != null) {
                    w7.v.a aVar2 = w7.v.Companion;
                    dVar.resumeWith(w7.v.b(w7.w.a(thD)));
                } else {
                    w7.v.a aVar3 = w7.v.Companion;
                    dVar.resumeWith(w7.v.b(f(objH)));
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
                if (h3VarG == null || h3VarG.a1()) {
                    kotlinx.coroutines.internal.m0.a(context, objC);
                }
                try {
                    iVar.a();
                    objB2 = w7.v.b(w7.l0.INSTANCE);
                } catch (Throwable th) {
                    w7.v.a aVar4 = w7.v.Companion;
                    objB2 = w7.v.b(w7.w.a(th));
                }
                g(null, w7.v.e(objB2));
            } catch (Throwable th2) {
                if (h3VarG == null || h3VarG.a1()) {
                    kotlinx.coroutines.internal.m0.a(context, objC);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                w7.v.a aVar5 = w7.v.Companion;
                iVar.a();
                objB = w7.v.b(w7.l0.INSTANCE);
            } catch (Throwable th4) {
                w7.v.a aVar6 = w7.v.Companion;
                objB = w7.v.b(w7.w.a(th4));
            }
            g(th3, w7.v.e(objB));
        }
    }

    public b1(int i10) {
        this.resumeMode = i10;
    }
}

package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class h3<T> extends kotlinx.coroutines.internal.e0<T> {
    private volatile boolean threadLocalIsSet;

    @NotNull
    private final ThreadLocal<w7.u<kotlin.coroutines.g, Object>> threadStateToRecover;

    public final void b1(@NotNull kotlin.coroutines.g gVar, @Nullable Object obj) {
        this.threadLocalIsSet = true;
        this.threadStateToRecover.set(w7.a0.a(gVar, obj));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public h3(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        i3 i3Var = i3.INSTANCE;
        super(gVar.get(i3Var) == null ? gVar.plus(i3Var) : gVar, dVar);
        this.threadStateToRecover = new ThreadLocal<>();
        if (dVar.getContext().get(kotlin.coroutines.e.Key) instanceof k0) {
            return;
        }
        Object objC = kotlinx.coroutines.internal.m0.c(gVar, null);
        kotlinx.coroutines.internal.m0.a(gVar, objC);
        b1(gVar, objC);
    }

    @Override // kotlinx.coroutines.internal.e0, kotlinx.coroutines.a
    protected void W0(@Nullable Object obj) {
        if (this.threadLocalIsSet) {
            w7.u<kotlin.coroutines.g, Object> uVar = this.threadStateToRecover.get();
            if (uVar != null) {
                kotlinx.coroutines.internal.m0.a(uVar.a(), uVar.b());
            }
            this.threadStateToRecover.remove();
        }
        Object objA = g0.a(obj, this.uCont);
        kotlin.coroutines.d<T> dVar = this.uCont;
        kotlin.coroutines.g context = dVar.getContext();
        Object objC = kotlinx.coroutines.internal.m0.c(context, null);
        h3<?> h3VarG = objC != kotlinx.coroutines.internal.m0.NO_THREAD_ELEMENTS ? j0.g(dVar, context, objC) : null;
        try {
            this.uCont.resumeWith(objA);
            w7.l0 l0Var = w7.l0.INSTANCE;
        } finally {
            if (h3VarG == null || h3VarG.a1()) {
                kotlinx.coroutines.internal.m0.a(context, objC);
            }
        }
    }

    public final boolean a1() {
        boolean z6 = this.threadLocalIsSet && this.threadStateToRecover.get() == null;
        this.threadStateToRecover.remove();
        return !z6;
    }
}

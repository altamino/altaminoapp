package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class l3 {
    @Nullable
    public static final Object a(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        kotlinx.coroutines.internal.j jVar;
        Object objE;
        kotlin.coroutines.g context = dVar.getContext();
        f2.j(context);
        kotlin.coroutines.d dVarC = kotlin.coroutines.intrinsics.c.c(dVar);
        if (dVarC instanceof kotlinx.coroutines.internal.j) {
            jVar = (kotlinx.coroutines.internal.j) dVarC;
        } else {
            jVar = null;
        }
        if (jVar == null) {
            objE = w7.l0.INSTANCE;
        } else {
            if (jVar.dispatcher.isDispatchNeeded(context)) {
                jVar.k(context, w7.l0.INSTANCE);
            } else {
                k3 k3Var = new k3();
                kotlin.coroutines.g gVarPlus = context.plus(k3Var);
                w7.l0 l0Var = w7.l0.INSTANCE;
                jVar.k(gVarPlus, l0Var);
                objE = (!k3Var.dispatcherWasUnconfined || kotlinx.coroutines.internal.k.d(jVar)) ? kotlin.coroutines.intrinsics.d.e() : l0Var;
            }
            objE = kotlin.coroutines.intrinsics.d.e();
        }
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        if (objE == kotlin.coroutines.intrinsics.d.e()) {
            return objE;
        }
        return w7.l0.INSTANCE;
    }
}

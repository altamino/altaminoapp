package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class y0 {
    @Nullable
    public static final Object a(long j6, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        if (j6 <= 0) {
            return w7.l0.INSTANCE;
        }
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        if (j6 < Long.MAX_VALUE) {
            b(pVar.getContext()).scheduleResumeAfterDelay(j6, pVar);
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
    }

    @NotNull
    public static final x0 b(@NotNull kotlin.coroutines.g gVar) {
        kotlin.coroutines.g.b bVar = gVar.get(kotlin.coroutines.e.Key);
        x0 x0Var = bVar instanceof x0 ? (x0) bVar : null;
        return x0Var == null ? u0.a() : x0Var;
    }

    public static final long c(long j6) {
        if (k8.b.i(j6, k8.b.Companion.c()) > 0) {
            return j8.o.f(k8.b.r(j6), 1L);
        }
        return 0L;
    }
}

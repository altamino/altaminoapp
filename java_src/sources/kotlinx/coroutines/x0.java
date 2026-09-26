package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface x0 {

    public static final class a {
        @Nullable
        public static Object a(@NotNull x0 x0Var, long j6, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
            if (j6 <= 0) {
                return w7.l0.INSTANCE;
            }
            p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            x0Var.scheduleResumeAfterDelay(j6, pVar);
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : w7.l0.INSTANCE;
        }

        @NotNull
        public static g1 b(@NotNull x0 x0Var, long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
            return u0.a().invokeOnTimeout(j6, runnable, gVar);
        }
    }

    @NotNull
    g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar);

    void scheduleResumeAfterDelay(long j6, @NotNull o<? super w7.l0> oVar);
}

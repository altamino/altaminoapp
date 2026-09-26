package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class r1 extends q1 implements x0 {

    @NotNull
    private final Executor executor;

    @Override // kotlinx.coroutines.q1
    @NotNull
    public Executor L() {
        return this.executor;
    }

    private final ScheduledFuture<?> F0(ScheduledExecutorService scheduledExecutorService, Runnable runnable, kotlin.coroutines.g gVar, long j6) {
        try {
            return scheduledExecutorService.schedule(runnable, j6, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            y0(gVar, e);
            return null;
        }
    }

    private final void y0(kotlin.coroutines.g gVar, RejectedExecutionException rejectedExecutionException) {
        f2.c(gVar, p1.a("The task was rejected", rejectedExecutionException));
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof r1) && ((r1) obj).L() == L();
    }

    public r1(@NotNull Executor executor) {
        this.executor = executor;
        kotlinx.coroutines.internal.c.a(L());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ExecutorService executorService;
        Executor executorL = L();
        if (executorL instanceof ExecutorService) {
            executorService = (ExecutorService) executorL;
        } else {
            executorService = null;
        }
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        Runnable runnableH;
        try {
            Executor executorL = L();
            b bVarA = c.a();
            if (bVarA == null || (runnableH = bVarA.h(runnable)) == null) {
                runnableH = runnable;
            }
            executorL.execute(runnableH);
        } catch (RejectedExecutionException e) {
            b bVarA2 = c.a();
            if (bVarA2 != null) {
                bVarA2.e();
            }
            y0(gVar, e);
            e1.b().dispatch(gVar, runnable);
        }
    }

    public int hashCode() {
        return System.identityHashCode(L());
    }

    @Override // kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executorL = L();
        ScheduledFuture<?> scheduledFutureF0 = null;
        if (executorL instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executorL;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            scheduledFutureF0 = F0(scheduledExecutorService, runnable, gVar, j6);
        }
        if (scheduledFutureF0 != null) {
            return new f1(scheduledFutureF0);
        }
        return t0.INSTANCE.invokeOnTimeout(j6, runnable, gVar);
    }

    @Override // kotlinx.coroutines.x0
    public void scheduleResumeAfterDelay(long j6, @NotNull o<? super w7.l0> oVar) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executorL = L();
        ScheduledFuture<?> scheduledFutureF0 = null;
        if (executorL instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executorL;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            scheduledFutureF0 = F0(scheduledExecutorService, new v2(this, oVar), oVar.getContext(), j6);
        }
        if (scheduledFutureF0 != null) {
            f2.h(oVar, scheduledFutureF0);
        } else {
            t0.INSTANCE.scheduleResumeAfterDelay(j6, oVar);
        }
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        return L().toString();
    }
}

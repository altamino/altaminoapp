package kotlinx.coroutines.scheduling;

import j8.o;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.internal.j0;
import kotlinx.coroutines.internal.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static final int TASK_NON_BLOCKING = 0;
    public static final int TASK_PROBABLY_BLOCKING = 1;

    @NotNull
    public static final String DEFAULT_SCHEDULER_NAME = j0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");
    public static final long WORK_STEALING_TIME_RESOLUTION_NS = l0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);
    public static final int CORE_POOL_SIZE = l0.e("kotlinx.coroutines.scheduler.core.pool.size", o.e(j0.a(), 2), 1, 0, 8, null);
    public static final int MAX_POOL_SIZE = l0.e("kotlinx.coroutines.scheduler.max.pool.size", a.MAX_SUPPORTED_POOL_SIZE, 0, a.MAX_SUPPORTED_POOL_SIZE, 4, null);
    public static final long IDLE_WORKER_KEEP_ALIVE_NS = TimeUnit.SECONDS.toNanos(l0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    @NotNull
    public static g schedulerTimeSource = e.INSTANCE;

    @NotNull
    public static final i NonBlockingContext = new j(0);

    @NotNull
    public static final i BlockingContext = new j(1);
}

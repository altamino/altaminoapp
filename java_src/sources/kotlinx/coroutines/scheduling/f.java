package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlinx.coroutines.q1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class f extends q1 {
    private final int corePoolSize;

    @NotNull
    private a coroutineScheduler;
    private final long idleWorkerKeepAliveNs;
    private final int maxPoolSize;

    @NotNull
    private final String schedulerName;

    public f() {
        this(0, 0, 0L, null, 15, null);
    }

    @Override // kotlinx.coroutines.q1
    @NotNull
    public Executor L() {
        return this.coroutineScheduler;
    }

    public /* synthetic */ f(int i10, int i11, long j6, String str, int i12, kotlin.jvm.internal.k kVar) {
        this((i12 & 1) != 0 ? l.CORE_POOL_SIZE : i10, (i12 & 2) != 0 ? l.MAX_POOL_SIZE : i11, (i12 & 4) != 0 ? l.IDLE_WORKER_KEEP_ALIVE_NS : j6, (i12 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    private final a y0() {
        return new a(this.corePoolSize, this.maxPoolSize, this.idleWorkerKeepAliveNs, this.schedulerName);
    }

    public final void F0(@NotNull Runnable runnable, @NotNull i iVar, boolean z6) {
        this.coroutineScheduler.l(runnable, iVar, z6);
    }

    public void close() throws InterruptedException {
        this.coroutineScheduler.close();
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        a.m(this.coroutineScheduler, runnable, null, false, 6, null);
    }

    @Override // kotlinx.coroutines.k0
    public void dispatchYield(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        a.m(this.coroutineScheduler, runnable, null, true, 2, null);
    }

    public f(int i10, int i11, long j6, @NotNull String str) {
        this.corePoolSize = i10;
        this.maxPoolSize = i11;
        this.idleWorkerKeepAliveNs = j6;
        this.schedulerName = str;
        this.coroutineScheduler = y0();
    }
}

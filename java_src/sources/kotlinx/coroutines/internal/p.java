package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.x0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class p extends kotlinx.coroutines.k0 implements x0 {

    @NotNull
    private static final AtomicIntegerFieldUpdater runningWorkers$FU = AtomicIntegerFieldUpdater.newUpdater(p.class, "runningWorkers");
    private final /* synthetic */ x0 $$delegate_0;

    @NotNull
    private final kotlinx.coroutines.k0 dispatcher;
    private final int parallelism;

    @NotNull
    private final u<Runnable> queue;
    private volatile int runningWorkers;

    @NotNull
    private final Object workerAllocationLock;

    private final class a implements Runnable {

        @NotNull
        private Runnable currentTask;

        @Override // java.lang.Runnable
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th) {
                    kotlinx.coroutines.m0.a(kotlin.coroutines.h.INSTANCE, th);
                }
                Runnable runnableF0 = p.this.F0();
                if (runnableF0 == null) {
                    return;
                }
                this.currentTask = runnableF0;
                i10++;
                if (i10 >= 16 && p.this.dispatcher.isDispatchNeeded(p.this)) {
                    p.this.dispatcher.dispatch(p.this, this);
                    return;
                }
            }
        }

        public a(Runnable runnable) {
            this.currentTask = runnable;
        }
    }

    @Override // kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
        return this.$$delegate_0.invokeOnTimeout(j6, runnable, gVar);
    }

    @Override // kotlinx.coroutines.x0
    public void scheduleResumeAfterDelay(long j6, @NotNull kotlinx.coroutines.o<? super w7.l0> oVar) {
        this.$$delegate_0.scheduleResumeAfterDelay(j6, oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Runnable F0() {
        while (true) {
            Runnable runnableD = this.queue.d();
            if (runnableD != null) {
                return runnableD;
            }
            synchronized (this.workerAllocationLock) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = runningWorkers$FU;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.queue.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    private final boolean G0() {
        synchronized (this.workerAllocationLock) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = runningWorkers$FU;
            if (atomicIntegerFieldUpdater.get(this) >= this.parallelism) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        Runnable runnableF0;
        this.queue.a(runnable);
        if (runningWorkers$FU.get(this) >= this.parallelism || !G0() || (runnableF0 = F0()) == null) {
            return;
        }
        this.dispatcher.dispatch(this, new a(runnableF0));
    }

    @Override // kotlinx.coroutines.k0
    public void dispatchYield(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        Runnable runnableF0;
        this.queue.a(runnable);
        if (runningWorkers$FU.get(this) >= this.parallelism || !G0() || (runnableF0 = F0()) == null) {
            return;
        }
        this.dispatcher.dispatchYield(this, new a(runnableF0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p(@NotNull kotlinx.coroutines.k0 k0Var, int i10) {
        x0 x0Var;
        this.dispatcher = k0Var;
        this.parallelism = i10;
        if (k0Var instanceof x0) {
            x0Var = (x0) k0Var;
        } else {
            x0Var = null;
        }
        this.$$delegate_0 = x0Var == null ? u0.a() : x0Var;
        this.queue = new u<>(false);
        this.workerAllocationLock = new Object();
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public kotlinx.coroutines.k0 limitedParallelism(int i10) {
        q.a(i10);
        if (i10 >= this.parallelism) {
            return this;
        }
        return super.limitedParallelism(i10);
    }
}

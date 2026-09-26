package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class c3 implements e8.l<Throwable, w7.l0> {

    @NotNull
    private static final AtomicIntegerFieldUpdater _state$FU = AtomicIntegerFieldUpdater.newUpdater(c3.class, "_state");
    private volatile int _state;

    @Nullable
    private g1 cancelHandle;

    @NotNull
    private final b2 job;
    private final Thread targetThread = Thread.currentThread();

    private final Void b(int i10) {
        throw new IllegalStateException(("Illegal state " + i10).toString());
    }

    public final void a() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _state$FU;
        while (true) {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(i10);
                        throw new w7.i();
                    }
                }
            } else if (_state$FU.compareAndSet(this, i10, 1)) {
                g1 g1Var = this.cancelHandle;
                if (g1Var != null) {
                    g1Var.t();
                    return;
                }
                return;
            }
        }
    }

    public void c(@Nullable Throwable th) {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = _state$FU;
        do {
            i10 = atomicIntegerFieldUpdater2.get(this);
            if (i10 != 0) {
                if (i10 == 1 || i10 == 2 || i10 == 3) {
                    return;
                }
                b(i10);
                throw new w7.i();
            }
            atomicIntegerFieldUpdater = _state$FU;
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, 2));
        this.targetThread.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    public final void d() {
        int i10;
        this.cancelHandle = this.job.O(true, true, this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _state$FU;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2 || i10 == 3) {
                    return;
                }
                b(i10);
                throw new w7.i();
            }
        } while (!_state$FU.compareAndSet(this, i10, 0));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        c(th);
        return w7.l0.INSTANCE;
    }

    public c3(@NotNull b2 b2Var) {
        this.job = b2Var;
    }
}

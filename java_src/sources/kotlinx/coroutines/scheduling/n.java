package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class n {
    private volatile int blockingTasksInBuffer;

    @NotNull
    private final AtomicReferenceArray<h> buffer = new AtomicReferenceArray<>(128);
    private volatile int consumerIndex;

    @Nullable
    private volatile Object lastScheduledTask;
    private volatile int producerIndex;

    @NotNull
    private static final AtomicReferenceFieldUpdater lastScheduledTask$FU = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "lastScheduledTask");

    @NotNull
    private static final AtomicIntegerFieldUpdater producerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(n.class, "producerIndex");

    @NotNull
    private static final AtomicIntegerFieldUpdater consumerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(n.class, "consumerIndex");

    @NotNull
    private static final AtomicIntegerFieldUpdater blockingTasksInBuffer$FU = AtomicIntegerFieldUpdater.newUpdater(n.class, "blockingTasksInBuffer");

    @Nullable
    public final h h() {
        return k(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long n(int i10, @NotNull p0<h> p0Var) {
        h hVarL;
        T t5;
        h hVarI;
        if (i10 == 3) {
            hVarI = i();
        } else {
            hVarL = l(i10);
        }
        if (t5 == 0) {
            t5 = hVarL;
            t5 = hVarI;
            return o(i10, p0Var);
        }
        t5 = hVarL;
        t5 = hVarI;
        p0Var.element = t5;
        return -1L;
    }

    private final void c(h hVar) {
        if (hVar == null || hVar.taskContext.b() != 1) {
            return;
        }
        blockingTasksInBuffer$FU.decrementAndGet(this);
    }

    private final int d() {
        return producerIndex$FU.get(this) - consumerIndex$FU.get(this);
    }

    private final h i() {
        h andSet;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = consumerIndex$FU;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 - producerIndex$FU.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 + 1) && (andSet = this.buffer.getAndSet(i11, null)) != null) {
                c(andSet);
                return andSet;
            }
        }
    }

    private final h k(boolean z6) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        h hVar;
        do {
            atomicReferenceFieldUpdater = lastScheduledTask$FU;
            hVar = (h) atomicReferenceFieldUpdater.get(this);
            if (hVar != null) {
                if ((hVar.taskContext.b() == 1) == z6) {
                }
            }
            int i10 = consumerIndex$FU.get(this);
            int i11 = producerIndex$FU.get(this);
            while (i10 != i11) {
                if (z6 && blockingTasksInBuffer$FU.get(this) == 0) {
                    return null;
                }
                i11--;
                h hVarM = m(i11, z6);
                if (hVarM != null) {
                    return hVarM;
                }
            }
            return null;
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, hVar, null));
        return hVar;
    }

    private final h l(int i10) {
        int i11 = consumerIndex$FU.get(this);
        int i12 = producerIndex$FU.get(this);
        boolean z6 = i10 == 1;
        while (i11 != i12) {
            if (z6 && blockingTasksInBuffer$FU.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            h hVarM = m(i11, z6);
            if (hVarM != null) {
                return hVarM;
            }
            i11 = i13;
        }
        return null;
    }

    private final h m(int i10, boolean z6) {
        int i11 = i10 & 127;
        h hVar = this.buffer.get(i11);
        if (hVar != null) {
            if ((hVar.taskContext.b() == 1) == z6 && t7.c.a(this.buffer, i11, hVar, null)) {
                if (z6) {
                    blockingTasksInBuffer$FU.decrementAndGet(this);
                }
                return hVar;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.h] */
    private final long o(int i10, p0<h> p0Var) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? r1;
        do {
            atomicReferenceFieldUpdater = lastScheduledTask$FU;
            r1 = (h) atomicReferenceFieldUpdater.get(this);
            if (r1 == 0) {
                return -2L;
            }
            if (((r1.taskContext.b() != 1 ? 2 : 1) & i10) == 0) {
                return -2L;
            }
            long jA = l.schedulerTimeSource.a() - r1.submissionTime;
            long j6 = l.WORK_STEALING_TIME_RESOLUTION_NS;
            if (jA < j6) {
                return j6 - jA;
            }
        } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, r1, null));
        p0Var.element = r1;
        return -1L;
    }

    @Nullable
    public final h a(@NotNull h hVar, boolean z6) {
        if (z6) {
            return b(hVar);
        }
        h hVar2 = (h) lastScheduledTask$FU.getAndSet(this, hVar);
        if (hVar2 == null) {
            return null;
        }
        return b(hVar2);
    }

    public final int e() {
        return lastScheduledTask$FU.get(this) != null ? d() + 1 : d();
    }

    public final void f(@NotNull d dVar) {
        h hVar = (h) lastScheduledTask$FU.getAndSet(this, null);
        if (hVar != null) {
            dVar.a(hVar);
        }
        while (j(dVar)) {
        }
    }

    @Nullable
    public final h g() {
        h hVar = (h) lastScheduledTask$FU.getAndSet(this, null);
        return hVar == null ? i() : hVar;
    }

    private final h b(h hVar) {
        if (d() == 127) {
            return hVar;
        }
        if (hVar.taskContext.b() == 1) {
            blockingTasksInBuffer$FU.incrementAndGet(this);
        }
        int i10 = producerIndex$FU.get(this) & 127;
        while (this.buffer.get(i10) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i10, hVar);
        producerIndex$FU.incrementAndGet(this);
        return null;
    }

    private final boolean j(d dVar) {
        h hVarI = i();
        if (hVarI == null) {
            return false;
        }
        dVar.a(hVarI);
        return true;
    }
}

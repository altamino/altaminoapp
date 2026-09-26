package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class l1 extends m1 implements x0 {

    @Nullable
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;

    @Nullable
    private volatile Object _queue;

    @NotNull
    private static final AtomicReferenceFieldUpdater _queue$FU = AtomicReferenceFieldUpdater.newUpdater(l1.class, Object.class, "_queue");

    @NotNull
    private static final AtomicReferenceFieldUpdater _delayed$FU = AtomicReferenceFieldUpdater.newUpdater(l1.class, Object.class, "_delayed");

    @NotNull
    private static final AtomicIntegerFieldUpdater _isCompleted$FU = AtomicIntegerFieldUpdater.newUpdater(l1.class, "_isCompleted");

    private final class a extends c {

        @NotNull
        private final o<w7.l0> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull long j6, o<? super w7.l0> oVar) {
            super(j6);
            this.cont = oVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.cont.V(l1.this, w7.l0.INSTANCE);
        }

        @Override // kotlinx.coroutines.l1.c
        @NotNull
        public String toString() {
            return super.toString() + this.cont;
        }
    }

    private static final class b extends c {

        @NotNull
        private final Runnable block;

        @Override // java.lang.Runnable
        public void run() {
            this.block.run();
        }

        @Override // kotlinx.coroutines.l1.c
        @NotNull
        public String toString() {
            return super.toString() + this.block;
        }

        public b(long j6, @NotNull Runnable runnable) {
            super(j6);
            this.block = runnable;
        }
    }

    public static abstract class c implements Runnable, Comparable<c>, g1, kotlinx.coroutines.internal.r0 {

        @Nullable
        private volatile Object _heap;
        private int index = -1;
        public long nanoTime;

        public final int e(long j6, @NotNull d dVar, @NotNull l1 l1Var) {
            synchronized (this) {
                if (this._heap == o1.DISPOSED_TASK) {
                    return 2;
                }
                synchronized (dVar) {
                    try {
                        c cVarB = dVar.b();
                        if (l1Var.m()) {
                            return 1;
                        }
                        if (cVarB == null) {
                            dVar.timeNow = j6;
                        } else {
                            long j10 = cVarB.nanoTime;
                            if (j10 - j6 < 0) {
                                j6 = j10;
                            }
                            if (j6 - dVar.timeNow > 0) {
                                dVar.timeNow = j6;
                            }
                        }
                        long j11 = this.nanoTime;
                        long j12 = dVar.timeNow;
                        if (j11 - j12 < 0) {
                            this.nanoTime = j12;
                        }
                        dVar.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public final boolean f(long j6) {
            return j6 - this.nanoTime >= 0;
        }

        @Override // kotlinx.coroutines.internal.r0
        public int getIndex() {
            return this.index;
        }

        @Override // kotlinx.coroutines.internal.r0
        public void setIndex(int i10) {
            this.index = i10;
        }

        @Override // kotlinx.coroutines.g1
        public final void t() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == o1.DISPOSED_TASK) {
                        return;
                    }
                    d dVar = obj instanceof d ? (d) obj : null;
                    if (dVar != null) {
                        dVar.g(this);
                    }
                    this._heap = o1.DISPOSED_TASK;
                    w7.l0 l0Var = w7.l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // kotlinx.coroutines.internal.r0
        public void a(@Nullable kotlinx.coroutines.internal.q0<?> q0Var) {
            if (this._heap == o1.DISPOSED_TASK) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = q0Var;
        }

        @Override // kotlinx.coroutines.internal.r0
        @Nullable
        public kotlinx.coroutines.internal.q0<?> c() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.q0) {
                return (kotlinx.coroutines.internal.q0) obj;
            }
            return null;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull c cVar) {
            long j6 = this.nanoTime - cVar.nanoTime;
            if (j6 > 0) {
                return 1;
            }
            return j6 < 0 ? -1 : 0;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + kotlinx.serialization.json.internal.b.END_LIST;
        }

        public c(long j6) {
            this.nanoTime = j6;
        }
    }

    public static final class d extends kotlinx.coroutines.internal.q0<c> {
        public long timeNow;

        public d(long j6) {
            this.timeNow = j6;
        }
    }

    private final void T0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(_queue$FU, this, null, o1.CLOSED_EMPTY)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.v) {
                ((kotlinx.coroutines.internal.v) obj).d();
                return;
            } else {
                if (obj == o1.CLOSED_EMPTY) {
                    return;
                }
                kotlinx.coroutines.internal.v vVar = new kotlinx.coroutines.internal.v(8, true);
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                vVar.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(_queue$FU, this, obj, vVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable U0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.v) {
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.v vVar = (kotlinx.coroutines.internal.v) obj;
                Object objJ = vVar.j();
                if (objJ != kotlinx.coroutines.internal.v.REMOVE_FROZEN) {
                    return (Runnable) objJ;
                }
                androidx.concurrent.futures.a.a(_queue$FU, this, obj, vVar.i());
            } else {
                if (obj == o1.CLOSED_EMPTY) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(_queue$FU, this, obj, null)) {
                    kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean W0(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (m()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(_queue$FU, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.v) {
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.v vVar = (kotlinx.coroutines.internal.v) obj;
                int iA = vVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.a.a(_queue$FU, this, obj, vVar.i());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == o1.CLOSED_EMPTY) {
                    return false;
                }
                kotlinx.coroutines.internal.v vVar2 = new kotlinx.coroutines.internal.v(8, true);
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                vVar2.a((Runnable) obj);
                vVar2.a(runnable);
                if (androidx.concurrent.futures.a.a(_queue$FU, this, obj, vVar2)) {
                    return true;
                }
            }
        }
    }

    private final void d1(boolean z6) {
        _isCompleted$FU.set(this, z6 ? 1 : 0);
    }

    private final boolean e1(c cVar) {
        d dVar = (d) _delayed$FU.get(this);
        return (dVar != null ? dVar.e() : null) == cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean m() {
        return _isCompleted$FU.get(this) != 0;
    }

    protected final void Z0() {
        _queue$FU.set(this, null);
        _delayed$FU.set(this, null);
    }

    @Override // kotlinx.coroutines.k1
    public void shutdown() {
        b3.INSTANCE.c();
        d1(true);
        T0();
        while (M0() <= 0) {
        }
        Y0();
    }

    private final void Y0() {
        long jNanoTime;
        c cVarI;
        kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
        if (bVarA != null) {
            jNanoTime = bVarA.a();
        } else {
            jNanoTime = System.nanoTime();
        }
        while (true) {
            d dVar = (d) _delayed$FU.get(this);
            if (dVar != null && (cVarI = dVar.i()) != null) {
                Q0(jNanoTime, cVarI);
            } else {
                return;
            }
        }
    }

    private final int b1(long j6, c cVar) {
        if (m()) {
            return 1;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _delayed$FU;
        d dVar = (d) atomicReferenceFieldUpdater.get(this);
        if (dVar == null) {
            androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, new d(j6));
            Object obj = atomicReferenceFieldUpdater.get(this);
            kotlin.jvm.internal.t.g(obj);
            dVar = (d) obj;
        }
        return cVar.e(j6, dVar, this);
    }

    @Override // kotlinx.coroutines.k1
    protected long H0() {
        c cVarE;
        long jNanoTime;
        if (super.H0() == 0) {
            return 0L;
        }
        Object obj = _queue$FU.get(this);
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.v) {
                if (!((kotlinx.coroutines.internal.v) obj).g()) {
                    return 0L;
                }
            } else {
                if (obj != o1.CLOSED_EMPTY) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            }
        }
        d dVar = (d) _delayed$FU.get(this);
        if (dVar == null || (cVarE = dVar.e()) == null) {
            return Long.MAX_VALUE;
        }
        long j6 = cVarE.nanoTime;
        kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
        if (bVarA != null) {
            jNanoTime = bVarA.a();
        } else {
            jNanoTime = System.nanoTime();
        }
        return j8.o.f(j6 - jNanoTime, 0L);
    }

    @Override // kotlinx.coroutines.k1
    public long M0() {
        long jNanoTime;
        c cVarH;
        if (N0()) {
            return 0L;
        }
        d dVar = (d) _delayed$FU.get(this);
        if (dVar != null && !dVar.d()) {
            kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
            if (bVarA != null) {
                jNanoTime = bVarA.a();
            } else {
                jNanoTime = System.nanoTime();
            }
            do {
                synchronized (dVar) {
                    c cVarB = dVar.b();
                    cVarH = null;
                    if (cVarB != null) {
                        c cVar = cVarB;
                        if (cVar.f(jNanoTime) && W0(cVar)) {
                            cVarH = dVar.h(0);
                        }
                    }
                }
            } while (cVarH != null);
        }
        Runnable runnableU0 = U0();
        if (runnableU0 != null) {
            runnableU0.run();
            return 0L;
        }
        return H0();
    }

    public void V0(@NotNull Runnable runnable) {
        if (W0(runnable)) {
            R0();
        } else {
            t0.INSTANCE.V0(runnable);
        }
    }

    protected boolean X0() {
        if (!L0()) {
            return false;
        }
        d dVar = (d) _delayed$FU.get(this);
        if (dVar != null && !dVar.d()) {
            return false;
        }
        Object obj = _queue$FU.get(this);
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.v) {
                return ((kotlinx.coroutines.internal.v) obj).g();
            }
            if (obj != o1.CLOSED_EMPTY) {
                return false;
            }
        }
        return true;
    }

    public final void a1(long j6, @NotNull c cVar) {
        int iB1 = b1(j6, cVar);
        if (iB1 != 0) {
            if (iB1 != 1) {
                if (iB1 != 2) {
                    throw new IllegalStateException("unexpected result".toString());
                }
                return;
            } else {
                Q0(j6, cVar);
                return;
            }
        }
        if (e1(cVar)) {
            R0();
        }
    }

    @NotNull
    protected final g1 c1(long j6, @NotNull Runnable runnable) {
        long jNanoTime;
        long jC = o1.c(j6);
        if (jC < k8.d.MAX_MILLIS) {
            kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
            if (bVarA != null) {
                jNanoTime = bVarA.a();
            } else {
                jNanoTime = System.nanoTime();
            }
            b bVar = new b(jC + jNanoTime, runnable);
            a1(jNanoTime, bVar);
            return bVar;
        }
        return q2.INSTANCE;
    }

    @Override // kotlinx.coroutines.k0
    public final void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        V0(runnable);
    }

    @Override // kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
        return x0.a.b(this, j6, runnable, gVar);
    }

    @Override // kotlinx.coroutines.x0
    public void scheduleResumeAfterDelay(long j6, @NotNull o<? super w7.l0> oVar) {
        long jNanoTime;
        long jC = o1.c(j6);
        if (jC < k8.d.MAX_MILLIS) {
            kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
            if (bVarA != null) {
                jNanoTime = bVarA.a();
            } else {
                jNanoTime = System.nanoTime();
            }
            a aVar = new a(jC + jNanoTime, oVar);
            a1(jNanoTime, aVar);
            r.a(oVar, aVar);
        }
    }
}

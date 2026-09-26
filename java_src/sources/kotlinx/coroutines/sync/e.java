package kotlinx.coroutines.sync;

import e8.l;
import e8.p;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.internal.g0;
import kotlinx.coroutines.j3;
import kotlinx.coroutines.o;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public class e implements d {
    private volatile int _availablePermits;
    private volatile long deqIdx;
    private volatile long enqIdx;

    @Nullable
    private volatile Object head;

    @NotNull
    private final l<Throwable, l0> onCancellationRelease;
    private final int permits;

    @Nullable
    private volatile Object tail;

    @NotNull
    private static final AtomicReferenceFieldUpdater head$FU = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "head");

    @NotNull
    private static final AtomicLongFieldUpdater deqIdx$FU = AtomicLongFieldUpdater.newUpdater(e.class, "deqIdx");

    @NotNull
    private static final AtomicReferenceFieldUpdater tail$FU = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "tail");

    @NotNull
    private static final AtomicLongFieldUpdater enqIdx$FU = AtomicLongFieldUpdater.newUpdater(e.class, "enqIdx");

    @NotNull
    private static final AtomicIntegerFieldUpdater _availablePermits$FU = AtomicIntegerFieldUpdater.newUpdater(e.class, "_availablePermits");

    /* synthetic */ class a extends q implements p<Long, g, g> {
        public static final a INSTANCE = new a();

        a() {
            super(2, f.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ g invoke(Long l, g gVar) {
            return a(l.longValue(), gVar);
        }

        @NotNull
        public final g a(long j6, @Nullable g gVar) {
            return f.j(j6, gVar);
        }
    }

    static final class b extends v implements l<Throwable, l0> {
        b() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull Throwable th) {
            e.this.release();
        }
    }

    /* synthetic */ class c extends q implements p<Long, g, g> {
        public static final c INSTANCE = new c();

        c() {
            super(2, f.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ g invoke(Long l, g gVar) {
            return a(l.longValue(), gVar);
        }

        @NotNull
        public final g a(long j6, @Nullable g gVar) {
            return f.j(j6, gVar);
        }
    }

    @Override // kotlinx.coroutines.sync.d
    @Nullable
    public Object c(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        return h(this, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean j(j3 j3Var) {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = tail$FU;
        g gVar = (g) atomicReferenceFieldUpdater.get(this);
        long andIncrement = enqIdx$FU.getAndIncrement(this);
        a aVar = a.INSTANCE;
        long j6 = andIncrement / ((long) f.SEGMENT_SIZE);
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.d.c(gVar, j6, aVar);
            if (!g0.e(objC)) {
                f0 f0VarC = g0.c(objC);
                while (true) {
                    f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                    if (f0Var.id >= f0VarC.id) {
                        break loop0;
                    }
                    if (!f0VarC.q()) {
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, f0VarC)) {
                        if (!f0Var.m()) {
                            break loop0;
                        }
                        f0Var.k();
                        break loop0;
                    }
                    if (f0VarC.m()) {
                        f0VarC.k();
                    }
                }
            } else {
                break;
            }
        }
        g gVar2 = (g) g0.c(objC);
        int i10 = (int) (andIncrement % ((long) f.SEGMENT_SIZE));
        if (t7.c.a(gVar2.r(), i10, null, j3Var)) {
            j3Var.a(gVar2, i10);
            return true;
        }
        if (!t7.c.a(gVar2.r(), i10, f.PERMIT, f.TAKEN)) {
            return false;
        }
        if (j3Var instanceof o) {
            t.h(j3Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((o) j3Var).B(l0.INSTANCE, this.onCancellationRelease);
        } else {
            if (!(j3Var instanceof kotlinx.coroutines.selects.b)) {
                throw new IllegalStateException(("unexpected: " + j3Var).toString());
            }
            ((kotlinx.coroutines.selects.b) j3Var).b(l0.INSTANCE);
        }
        return true;
    }

    private final void k() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i10;
        int i11;
        do {
            atomicIntegerFieldUpdater = _availablePermits$FU;
            i10 = atomicIntegerFieldUpdater.get(this);
            i11 = this.permits;
            if (i10 <= i11) {
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i10, i11));
    }

    private final int l() {
        int andDecrement;
        do {
            andDecrement = _availablePermits$FU.getAndDecrement(this);
        } while (andDecrement > this.permits);
        return andDecrement;
    }

    private final boolean o(Object obj) {
        if (!(obj instanceof o)) {
            if (obj instanceof kotlinx.coroutines.selects.b) {
                return ((kotlinx.coroutines.selects.b) obj).c(this, l0.INSTANCE);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        o oVar = (o) obj;
        Object objR = oVar.r(l0.INSTANCE, null, this.onCancellationRelease);
        if (objR == null) {
            return false;
        }
        oVar.K(objR);
        return true;
    }

    private final boolean p() {
        Object objC;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = head$FU;
        g gVar = (g) atomicReferenceFieldUpdater.get(this);
        long andIncrement = deqIdx$FU.getAndIncrement(this);
        long j6 = andIncrement / ((long) f.SEGMENT_SIZE);
        c cVar = c.INSTANCE;
        loop0: while (true) {
            objC = kotlinx.coroutines.internal.d.c(gVar, j6, cVar);
            if (g0.e(objC)) {
                break;
            }
            f0 f0VarC = g0.c(objC);
            while (true) {
                f0 f0Var = (f0) atomicReferenceFieldUpdater.get(this);
                if (f0Var.id >= f0VarC.id) {
                    break loop0;
                }
                if (!f0VarC.q()) {
                    break;
                }
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, f0Var, f0VarC)) {
                    if (!f0Var.m()) {
                        break loop0;
                    }
                    f0Var.k();
                    break loop0;
                }
                if (f0VarC.m()) {
                    f0VarC.k();
                }
            }
        }
        g gVar2 = (g) g0.c(objC);
        gVar2.b();
        if (gVar2.id > j6) {
            return false;
        }
        int i10 = (int) (andIncrement % ((long) f.SEGMENT_SIZE));
        Object andSet = gVar2.r().getAndSet(i10, f.PERMIT);
        if (andSet != null) {
            if (andSet == f.CANCELLED) {
                return false;
            }
            return o(andSet);
        }
        int i11 = f.MAX_SPIN_CYCLES;
        for (int i12 = 0; i12 < i11; i12++) {
            if (gVar2.r().get(i10) == f.TAKEN) {
                return true;
            }
        }
        return !t7.c.a(gVar2.r(), i10, f.PERMIT, f.BROKEN);
    }

    public int m() {
        return Math.max(_availablePermits$FU.get(this), 0);
    }

    public boolean n() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _availablePermits$FU;
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 > this.permits) {
                k();
            } else {
                if (i10 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.d
    public void release() {
        do {
            int andIncrement = _availablePermits$FU.getAndIncrement(this);
            if (andIncrement >= this.permits) {
                k();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!p());
    }

    public e(int i10, int i11) {
        this.permits = i10;
        if (i10 > 0) {
            if (i11 >= 0 && i11 <= i10) {
                g gVar = new g(0L, null, 2);
                this.head = gVar;
                this.tail = gVar;
                this._availablePermits = i10 - i11;
                this.onCancellationRelease = new b();
                return;
            }
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
    }

    static /* synthetic */ Object h(e eVar, kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        if (eVar.l() > 0) {
            return l0.INSTANCE;
        }
        Object objI = eVar.i(dVar);
        if (objI == kotlin.coroutines.intrinsics.d.e()) {
            return objI;
        }
        return l0.INSTANCE;
    }

    private final Object i(kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        kotlinx.coroutines.p pVarB = r.b(kotlin.coroutines.intrinsics.c.c(dVar));
        try {
            if (!j(pVarB)) {
                g(pVarB);
            }
            Object objU = pVarB.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                return objU;
            }
            return l0.INSTANCE;
        } catch (Throwable th) {
            pVarB.G();
            throw th;
        }
    }

    protected final void g(@NotNull o<? super l0> oVar) {
        while (l() <= 0) {
            t.h(oVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (j((j3) oVar)) {
                return;
            }
        }
        oVar.B(l0.INSTANCE, this.onCancellationRelease);
    }
}

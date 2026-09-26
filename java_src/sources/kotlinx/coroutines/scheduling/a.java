package kotlinx.coroutines.scheduling;

import androidx.work.WorkRequest;
import j8.o;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.internal.d0;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.s0;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements Executor, Closeable {
    private static final long BLOCKING_MASK = 4398044413952L;
    private static final int BLOCKING_SHIFT = 21;
    private static final int CLAIMED = 0;
    private static final long CPU_PERMITS_MASK = 9223367638808264704L;
    private static final int CPU_PERMITS_SHIFT = 42;
    private static final long CREATED_MASK = 2097151;
    public static final int MAX_SUPPORTED_POOL_SIZE = 2097150;
    public static final int MIN_SUPPORTED_POOL_SIZE = 1;
    private static final int PARKED = -1;
    private static final long PARKED_INDEX_MASK = 2097151;
    private static final long PARKED_VERSION_INC = 2097152;
    private static final long PARKED_VERSION_MASK = -2097152;
    private static final int TERMINATED = 1;
    private volatile int _isTerminated;
    private volatile long controlState;
    public final int corePoolSize;

    @NotNull
    public final kotlinx.coroutines.scheduling.d globalBlockingQueue;

    @NotNull
    public final kotlinx.coroutines.scheduling.d globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;
    private volatile long parkedWorkersStack;

    @NotNull
    public final String schedulerName;

    @NotNull
    public final d0<c> workers;

    @NotNull
    public static final C0452a Companion = new C0452a(null);

    @NotNull
    private static final AtomicLongFieldUpdater parkedWorkersStack$FU = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack");

    @NotNull
    private static final AtomicLongFieldUpdater controlState$FU = AtomicLongFieldUpdater.newUpdater(a.class, "controlState");

    @NotNull
    private static final AtomicIntegerFieldUpdater _isTerminated$FU = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated");

    @NotNull
    public static final i0 NOT_IN_STACK = new i0("NOT_IN_STACK");

    /* JADX INFO: renamed from: kotlinx.coroutines.scheduling.a$a, reason: collision with other inner class name */
    public static final class C0452a {
        public /* synthetic */ C0452a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private C0452a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final class c extends Thread {

        @NotNull
        private static final AtomicIntegerFieldUpdater workerCtl$FU = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");
        private volatile int indexInArray;

        @NotNull
        public final n localQueue;
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;

        @Nullable
        private volatile Object nextParkedWorker;
        private int rngState;

        @NotNull
        public d state;

        @NotNull
        private final p0<h> stolenTask;
        private long terminationDeadline;
        private volatile int workerCtl;

        private c() {
            setDaemon(true);
            this.localQueue = new n();
            this.stolenTask = new p0<>();
            this.state = d.DORMANT;
            this.nextParkedWorker = a.NOT_IN_STACK;
            this.rngState = h8.d.Default.d();
        }

        @NotNull
        public static final AtomicIntegerFieldUpdater j() {
            return workerCtl$FU;
        }

        private final h o() {
            if (m(2) == 0) {
                h hVarD = a.this.globalCpuQueue.d();
                return hVarD != null ? hVarD : a.this.globalBlockingQueue.d();
            }
            h hVarD2 = a.this.globalBlockingQueue.d();
            return hVarD2 != null ? hVarD2 : a.this.globalCpuQueue.d();
        }

        private final void p() {
            loop0: while (true) {
                boolean z6 = false;
                while (true) {
                    if (a.this.isTerminated() || this.state == d.TERMINATED) {
                        break loop0;
                    }
                    h hVarG = g(this.mayHaveLocalTasks);
                    if (hVarG != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        d(hVarG);
                        break;
                    }
                    this.mayHaveLocalTasks = false;
                    if (this.minDelayUntilStealableTaskNs == 0) {
                        t();
                    } else {
                        if (z6) {
                            u(d.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                            break;
                        }
                        z6 = true;
                    }
                }
            }
            u(d.TERMINATED);
        }

        public final int h() {
            return this.indexInArray;
        }

        @Nullable
        public final Object i() {
            return this.nextParkedWorker;
        }

        public final void r(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        private final void b(int i10) {
            if (i10 == 0) {
                return;
            }
            a.controlState$FU.addAndGet(a.this, a.PARKED_VERSION_MASK);
            if (this.state != d.TERMINATED) {
                this.state = d.DORMANT;
            }
        }

        private final void c(int i10) {
            if (i10 != 0 && u(d.BLOCKING)) {
                a.this.b0();
            }
        }

        private final void d(h hVar) {
            int iB = hVar.taskContext.b();
            k(iB);
            c(iB);
            a.this.O(hVar);
            b(iB);
        }

        private final h e(boolean z6) {
            h hVarO;
            h hVarO2;
            if (z6) {
                boolean z10 = m(a.this.corePoolSize * 2) == 0;
                if (z10 && (hVarO2 = o()) != null) {
                    return hVarO2;
                }
                h hVarG = this.localQueue.g();
                if (hVarG != null) {
                    return hVarG;
                }
                if (!z10 && (hVarO = o()) != null) {
                    return hVarO;
                }
            } else {
                h hVarO3 = o();
                if (hVarO3 != null) {
                    return hVarO3;
                }
            }
            return v(3);
        }

        private final h f() {
            h hVarH = this.localQueue.h();
            if (hVarH != null) {
                return hVarH;
            }
            h hVarD = a.this.globalBlockingQueue.d();
            return hVarD == null ? v(1) : hVarD;
        }

        private final void k(int i10) {
            this.terminationDeadline = 0L;
            if (this.state == d.PARKING) {
                this.state = d.BLOCKING;
            }
        }

        private final boolean l() {
            return this.nextParkedWorker != a.NOT_IN_STACK;
        }

        private final void n() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + a.this.idleWorkerKeepAliveNs;
            }
            LockSupport.parkNanos(a.this.idleWorkerKeepAliveNs);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                w();
            }
        }

        private final boolean s() {
            long j6;
            if (this.state == d.CPU_ACQUIRED) {
                return true;
            }
            a aVar = a.this;
            AtomicLongFieldUpdater atomicLongFieldUpdater = a.controlState$FU;
            do {
                j6 = atomicLongFieldUpdater.get(aVar);
                if (((int) ((a.CPU_PERMITS_MASK & j6) >> 42)) == 0) {
                    return false;
                }
            } while (!a.controlState$FU.compareAndSet(aVar, j6, j6 - 4398046511104L));
            this.state = d.CPU_ACQUIRED;
            return true;
        }

        private final h v(int i10) {
            int i11 = (int) (a.controlState$FU.get(a.this) & TarConstants.MAXID);
            if (i11 < 2) {
                return null;
            }
            int iM = m(i11);
            a aVar = a.this;
            long jMin = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                iM++;
                if (iM > i11) {
                    iM = 1;
                }
                c cVarB = aVar.workers.b(iM);
                if (cVarB != null && cVarB != this) {
                    long jN = cVarB.localQueue.n(i10, this.stolenTask);
                    if (jN == -1) {
                        p0<h> p0Var = this.stolenTask;
                        h hVar = p0Var.element;
                        p0Var.element = null;
                        return hVar;
                    }
                    if (jN > 0) {
                        jMin = Math.min(jMin, jN);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.minDelayUntilStealableTaskNs = jMin;
            return null;
        }

        private final void w() {
            a aVar = a.this;
            synchronized (aVar.workers) {
                try {
                    if (aVar.isTerminated()) {
                        return;
                    }
                    if (((int) (a.controlState$FU.get(aVar) & TarConstants.MAXID)) <= aVar.corePoolSize) {
                        return;
                    }
                    if (workerCtl$FU.compareAndSet(this, -1, 1)) {
                        int i10 = this.indexInArray;
                        q(0);
                        aVar.L(this, i10, 0);
                        int andDecrement = (int) (a.controlState$FU.getAndDecrement(aVar) & TarConstants.MAXID);
                        if (andDecrement != i10) {
                            c cVarB = aVar.workers.b(andDecrement);
                            t.g(cVarB);
                            c cVar = cVarB;
                            aVar.workers.c(i10, cVar);
                            cVar.q(i10);
                            aVar.L(cVar, andDecrement, i10);
                        }
                        aVar.workers.c(andDecrement, null);
                        l0 l0Var = l0.INSTANCE;
                        this.state = d.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final int m(int i10) {
            int i11 = this.rngState;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.rngState = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
        }

        public final void q(int i10) {
            StringBuilder sb = new StringBuilder();
            sb.append(a.this.schedulerName);
            sb.append("-worker-");
            sb.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb.toString());
            this.indexInArray = i10;
        }

        public final boolean u(@NotNull d dVar) {
            d dVar2 = this.state;
            boolean z6 = dVar2 == d.CPU_ACQUIRED;
            if (z6) {
                a.controlState$FU.addAndGet(a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.state = dVar;
            }
            return z6;
        }

        private final void t() {
            if (!l()) {
                a.this.p(this);
                return;
            }
            workerCtl$FU.set(this, -1);
            while (l() && workerCtl$FU.get(this) == -1 && !a.this.isTerminated() && this.state != d.TERMINATED) {
                u(d.PARKING);
                Thread.interrupted();
                n();
            }
        }

        @Nullable
        public final h g(boolean z6) {
            if (s()) {
                return e(z6);
            }
            return f();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            p();
        }

        public c(a aVar, int i10) {
            this();
            q(i10);
        }
    }

    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public a(int i10, int i11, long j6, @NotNull String str) {
        this.corePoolSize = i10;
        this.maxPoolSize = i11;
        this.idleWorkerKeepAliveNs = j6;
        this.schedulerName = str;
        if (i10 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (i11 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j6 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j6 + " must be positive").toString());
        }
        this.globalCpuQueue = new kotlinx.coroutines.scheduling.d();
        this.globalBlockingQueue = new kotlinx.coroutines.scheduling.d();
        this.workers = new d0<>((i10 + 1) * 2);
        this.controlState = ((long) i10) << 42;
        this._isTerminated = 0;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        m(this, runnable, null, false, 6, null);
    }

    private final void U(long j6, boolean z6) {
        if (z6 || y0() || k0(j6)) {
            return;
        }
        y0();
    }

    private final boolean f(h hVar) {
        return hVar.taskContext.b() == 1 ? this.globalBlockingQueue.a(hVar) : this.globalCpuQueue.a(hVar);
    }

    private final h g0(c cVar, h hVar, boolean z6) {
        if (cVar == null || cVar.state == d.TERMINATED) {
            return hVar;
        }
        if (hVar.taskContext.b() == 0 && cVar.state == d.BLOCKING) {
            return hVar;
        }
        cVar.mayHaveLocalTasks = true;
        return cVar.localQueue.a(hVar, z6);
    }

    private final int h() {
        synchronized (this.workers) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$FU;
                long j6 = atomicLongFieldUpdater.get(this);
                int i10 = (int) (j6 & TarConstants.MAXID);
                int iE = o.e(i10 - ((int) ((j6 & BLOCKING_MASK) >> 21)), 0);
                if (iE >= this.corePoolSize) {
                    return 0;
                }
                if (i10 >= this.maxPoolSize) {
                    return 0;
                }
                int i11 = ((int) (controlState$FU.get(this) & TarConstants.MAXID)) + 1;
                if (i11 <= 0 || this.workers.b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                c cVar = new c(this, i11);
                this.workers.c(i11, cVar);
                if (i11 != ((int) (TarConstants.MAXID & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                int i12 = iE + 1;
                cVar.start();
                return i12;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void m(a aVar, Runnable runnable, i iVar, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            iVar = l.NonBlockingContext;
        }
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        aVar.l(runnable, iVar, z6);
    }

    private final c o() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        while (true) {
            long j6 = atomicLongFieldUpdater.get(this);
            c cVarB = this.workers.b((int) (TarConstants.MAXID & j6));
            if (cVarB == null) {
                return null;
            }
            long j10 = (2097152 + j6) & PARKED_VERSION_MASK;
            int iN = n(cVarB);
            if (iN >= 0 && parkedWorkersStack$FU.compareAndSet(this, j6, ((long) iN) | j10)) {
                cVarB.r(NOT_IN_STACK);
                return cVarB;
            }
        }
    }

    static /* synthetic */ boolean t0(a aVar, long j6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j6 = controlState$FU.get(aVar);
        }
        return aVar.k0(j6);
    }

    public final void L(@NotNull c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        while (true) {
            long j6 = atomicLongFieldUpdater.get(this);
            int iN = (int) (TarConstants.MAXID & j6);
            long j10 = (2097152 + j6) & PARKED_VERSION_MASK;
            if (iN == i10) {
                iN = i11 == 0 ? n(cVar) : i11;
            }
            if (iN >= 0 && parkedWorkersStack$FU.compareAndSet(this, j6, j10 | ((long) iN))) {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    public final void Q(long j6) throws InterruptedException {
        int i10;
        h hVarD;
        if (_isTerminated$FU.compareAndSet(this, 0, 1)) {
            c cVarK = k();
            synchronized (this.workers) {
                i10 = (int) (controlState$FU.get(this) & TarConstants.MAXID);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    c cVarB = this.workers.b(i11);
                    t.g(cVarB);
                    c cVar = cVarB;
                    if (cVar != cVarK) {
                        while (cVar.isAlive()) {
                            LockSupport.unpark(cVar);
                            cVar.join(j6);
                        }
                        cVar.localQueue.f(this.globalBlockingQueue);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.globalBlockingQueue.b();
            this.globalCpuQueue.b();
            while (true) {
                if (cVarK == null) {
                    hVarD = this.globalCpuQueue.d();
                    if (hVarD == null && (hVarD = this.globalBlockingQueue.d()) == null) {
                        break;
                    }
                } else {
                    hVarD = cVarK.g(true);
                    if (hVarD == null) {
                        hVarD = this.globalCpuQueue.d();
                        if (hVarD == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                O(hVarD);
            }
            if (cVarK != null) {
                cVarK.u(d.TERMINATED);
            }
            parkedWorkersStack$FU.set(this, 0L);
            controlState$FU.set(this, 0L);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        Q(WorkRequest.MIN_BACKOFF_MILLIS);
    }

    @NotNull
    public final h i(@NotNull Runnable runnable, @NotNull i iVar) {
        long jA = l.schedulerTimeSource.a();
        if (!(runnable instanceof h)) {
            return new k(runnable, jA, iVar);
        }
        h hVar = (h) runnable;
        hVar.submissionTime = jA;
        hVar.taskContext = iVar;
        return hVar;
    }

    public final boolean isTerminated() {
        return _isTerminated$FU.get(this) != 0;
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.workers.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iA; i15++) {
            c cVarB = this.workers.b(i15);
            if (cVarB != null) {
                int iE = cVarB.localQueue.e();
                int i16 = b.$EnumSwitchMapping$0[cVarB.state.ordinal()];
                if (i16 == 1) {
                    i12++;
                } else if (i16 == 2) {
                    i11++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iE);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i16 == 3) {
                    i10++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iE);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i16 == 4) {
                    i13++;
                    if (iE > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iE);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i16 == 5) {
                    i14++;
                }
            }
        }
        long j6 = controlState$FU.get(this);
        return this.schedulerName + '@' + s0.b(this) + "[Pool Size {core = " + this.corePoolSize + ", max = " + this.maxPoolSize + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.globalCpuQueue.c() + ", global blocking queue size = " + this.globalBlockingQueue.c() + ", Control State {created workers= " + ((int) (TarConstants.MAXID & j6)) + ", blocking tasks = " + ((int) ((BLOCKING_MASK & j6) >> 21)) + ", CPUs acquired = " + (this.corePoolSize - ((int) ((CPU_PERMITS_MASK & j6) >> 42))) + "}]";
    }

    private final c k() {
        c cVar;
        Thread threadCurrentThread = Thread.currentThread();
        if (threadCurrentThread instanceof c) {
            cVar = (c) threadCurrentThread;
        } else {
            cVar = null;
        }
        if (cVar == null || !t.e(a.this, this)) {
            return null;
        }
        return cVar;
    }

    private final boolean k0(long j6) {
        if (o.e(((int) (TarConstants.MAXID & j6)) - ((int) ((j6 & BLOCKING_MASK) >> 21)), 0) < this.corePoolSize) {
            int iH = h();
            if (iH == 1 && this.corePoolSize > 1) {
                h();
            }
            if (iH > 0) {
                return true;
            }
        }
        return false;
    }

    private final int n(c cVar) {
        Object objI = cVar.i();
        while (objI != NOT_IN_STACK) {
            if (objI == null) {
                return 0;
            }
            c cVar2 = (c) objI;
            int iH = cVar2.h();
            if (iH != 0) {
                return iH;
            }
            objI = cVar2.i();
        }
        return -1;
    }

    private final boolean y0() {
        c cVarO;
        do {
            cVarO = o();
            if (cVarO == null) {
                return false;
            }
        } while (!c.j().compareAndSet(cVarO, -1, 0));
        LockSupport.unpark(cVarO);
        return true;
    }

    public final void O(@NotNull h hVar) {
        kotlinx.coroutines.b bVarA;
        try {
            hVar.run();
            bVarA = kotlinx.coroutines.c.a();
            if (bVarA == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                bVarA = kotlinx.coroutines.c.a();
                if (bVarA == null) {
                    return;
                }
            } catch (Throwable th2) {
                kotlinx.coroutines.b bVarA2 = kotlinx.coroutines.c.a();
                if (bVarA2 != null) {
                    bVarA2.e();
                }
                throw th2;
            }
        }
        bVarA.e();
    }

    public final void b0() {
        if (y0() || t0(this, 0L, 1, null)) {
            return;
        }
        y0();
    }

    public final void l(@NotNull Runnable runnable, @NotNull i iVar, boolean z6) {
        boolean z10;
        long jAddAndGet;
        kotlinx.coroutines.b bVarA = kotlinx.coroutines.c.a();
        if (bVarA != null) {
            bVarA.d();
        }
        h hVarI = i(runnable, iVar);
        boolean z11 = false;
        if (hVarI.taskContext.b() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jAddAndGet = controlState$FU.addAndGet(this, 2097152L);
        } else {
            jAddAndGet = 0;
        }
        c cVarK = k();
        h hVarG0 = g0(cVarK, hVarI, z6);
        if (hVarG0 != null && !f(hVarG0)) {
            throw new RejectedExecutionException(this.schedulerName + " was terminated");
        }
        if (z6 && cVarK != null) {
            z11 = true;
        }
        if (z10) {
            U(jAddAndGet, z11);
        } else {
            if (z11) {
                return;
            }
            b0();
        }
    }

    public final boolean p(@NotNull c cVar) {
        long j6;
        long j10;
        int iH;
        if (cVar.i() != NOT_IN_STACK) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            int i10 = (int) (TarConstants.MAXID & j6);
            j10 = (2097152 + j6) & PARKED_VERSION_MASK;
            iH = cVar.h();
            cVar.r(this.workers.b(i10));
        } while (!parkedWorkersStack$FU.compareAndSet(this, j6, j10 | ((long) iH)));
        return true;
    }

    public /* synthetic */ a(int i10, int i11, long j6, String str, int i12, kotlin.jvm.internal.k kVar) {
        this(i10, i11, (i12 & 4) != 0 ? l.IDLE_WORKER_KEEP_ALIVE_NS : j6, (i12 & 8) != 0 ? l.DEFAULT_SCHEDULER_NAME : str);
    }
}

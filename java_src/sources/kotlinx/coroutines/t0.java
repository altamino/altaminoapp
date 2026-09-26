package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class t0 extends l1 implements Runnable {
    private static final int ACTIVE = 1;
    private static final long DEFAULT_KEEP_ALIVE_MS = 1000;
    private static final int FRESH = 0;

    @NotNull
    public static final t0 INSTANCE;
    private static final long KEEP_ALIVE_NANOS;
    private static final int SHUTDOWN = 4;
    private static final int SHUTDOWN_ACK = 3;
    private static final int SHUTDOWN_REQ = 2;

    @NotNull
    public static final String THREAD_NAME = "kotlinx.coroutines.DefaultExecutor";

    @Nullable
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    private final synchronized void f1() {
        if (i1()) {
            debugStatus = 3;
            Z0();
            kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    private final synchronized Thread g1() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, THREAD_NAME);
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean h1() {
        return debugStatus == 4;
    }

    private final boolean i1() {
        int i10 = debugStatus;
        return i10 == 2 || i10 == 3;
    }

    private final synchronized boolean j1() {
        if (i1()) {
            return false;
        }
        debugStatus = 1;
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    @Override // kotlinx.coroutines.l1, kotlinx.coroutines.k1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    static {
        Long l;
        t0 t0Var = new t0();
        INSTANCE = t0Var;
        k1.J0(t0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        KEEP_ALIVE_NANOS = timeUnit.toNanos(l.longValue());
    }

    private final void k1() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.m1
    @NotNull
    protected Thread P0() {
        Thread thread = _thread;
        return thread == null ? g1() : thread;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zX0;
        w7.l0 l0Var;
        b3.INSTANCE.d(this);
        b bVarA = c.a();
        if (bVarA != null) {
            bVarA.c();
        }
        try {
            if (!j1()) {
                if (zX0) {
                    return;
                } else {
                    return;
                }
            }
            long j6 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jM0 = M0();
                if (jM0 == Long.MAX_VALUE) {
                    b bVarA2 = c.a();
                    long jA = bVarA2 != null ? bVarA2.a() : System.nanoTime();
                    if (j6 == Long.MAX_VALUE) {
                        j6 = KEEP_ALIVE_NANOS + jA;
                    }
                    long j10 = j6 - jA;
                    if (j10 <= 0) {
                        if (zX0) {
                            return;
                        } else {
                            return;
                        }
                    }
                    jM0 = j8.o.k(jM0, j10);
                } else {
                    j6 = Long.MAX_VALUE;
                }
                if (jM0 > 0) {
                    if (i1()) {
                        if (zX0) {
                            return;
                        } else {
                            return;
                        }
                    }
                    b bVarA3 = c.a();
                    if (bVarA3 != null) {
                        bVarA3.b(this, jM0);
                        l0Var = w7.l0.INSTANCE;
                    } else {
                        l0Var = null;
                    }
                    if (l0Var == null) {
                        LockSupport.parkNanos(this, jM0);
                    }
                }
            }
        } finally {
            _thread = null;
            f1();
            b bVarA4 = c.a();
            if (bVarA4 != null) {
                bVarA4.g();
            }
            if (!X0()) {
                P0();
            }
        }
    }

    private t0() {
    }

    @Override // kotlinx.coroutines.m1
    protected void Q0(long j6, @NotNull l1.c cVar) {
        k1();
    }

    @Override // kotlinx.coroutines.l1
    public void V0(@NotNull Runnable runnable) {
        if (h1()) {
            k1();
        }
        super.V0(runnable);
    }

    @Override // kotlinx.coroutines.l1, kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull Runnable runnable, @NotNull kotlin.coroutines.g gVar) {
        return c1(j6, runnable);
    }
}

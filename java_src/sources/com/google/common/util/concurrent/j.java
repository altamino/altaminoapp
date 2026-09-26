package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes8.dex */
abstract class j<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable DONE;
    private static final int MAX_BUSY_WAIT_SPINS = 1000;
    private static final Runnable PARKED;

    static final class b extends AbstractOwnableSynchronizer implements Runnable {
        private final j<?> task;

        @Override // java.lang.Runnable
        public void run() {
        }

        private b(j<?> jVar) {
            this.task = jVar;
        }

        public String toString() {
            return this.task.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Thread thread) {
            super.setExclusiveOwnerThread(thread);
        }
    }

    private static final class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    abstract void a(Throwable th);

    abstract void b(T t5);

    abstract boolean d();

    abstract T e() throws Exception;

    abstract String f();

    static {
        DONE = new c();
        PARKED = new c();
    }

    j() {
    }

    private void g(Thread thread) {
        Runnable runnable = get();
        b bVar = null;
        boolean z6 = false;
        int i10 = 0;
        while (true) {
            boolean z10 = runnable instanceof b;
            if (!z10 && runnable != PARKED) {
                break;
            }
            if (z10) {
                bVar = (b) runnable;
            }
            i10++;
            if (i10 > 1000) {
                Runnable runnable2 = PARKED;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (!Thread.interrupted() && !z6) {
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                    LockSupport.park(bVar);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z6) {
            thread.interrupt();
        }
    }

    final void c() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            b bVar = new b();
            bVar.b(Thread.currentThread());
            if (compareAndSet(runnable, bVar)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(DONE) == PARKED) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Thread threadCurrentThread = Thread.currentThread();
        Object objE = null;
        if (!compareAndSet(null, threadCurrentThread)) {
            return;
        }
        boolean z6 = !d();
        if (z6) {
            try {
                objE = e();
            } catch (Throwable th) {
                if (!compareAndSet(threadCurrentThread, DONE)) {
                    g(threadCurrentThread);
                }
                if (z6) {
                    a(th);
                    return;
                }
                return;
            }
        }
        if (!compareAndSet(threadCurrentThread, DONE)) {
            g(threadCurrentThread);
        }
        if (z6) {
            b(o.a(objE));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String string;
        Runnable runnable = get();
        if (runnable == DONE) {
            string = "running=[DONE]";
        } else if (runnable instanceof b) {
            string = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
            sb.append("running=[RUNNING ON ");
            sb.append(name);
            sb.append("]");
            string = sb.toString();
        } else {
            string = "running=[NOT STARTED YET]";
        }
        String strF = f();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 2 + String.valueOf(strF).length());
        sb2.append(string);
        sb2.append(", ");
        sb2.append(strF);
        return sb2.toString();
    }
}

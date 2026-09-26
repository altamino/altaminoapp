package com.google.firebase.concurrent;

import androidx.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
final class a0 implements Executor {
    private static final Logger log = Logger.getLogger(a0.class.getName());
    private final Executor executor;

    @GuardedBy
    private final Deque<Runnable> queue = new ArrayDeque();

    @GuardedBy
    private c workerRunningState = c.IDLE;

    @GuardedBy
    private long workerRunCount = 0;
    private final b worker = new b(this, null);

    class a implements Runnable {
        final /* synthetic */ Runnable val$task;

        a(Runnable runnable) {
            this.val$task = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.val$task.run();
        }

        public String toString() {
            return this.val$task.toString();
        }
    }

    private final class b implements Runnable {
        Runnable task;

        private b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        
            if (r1 == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
        
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        
            r8.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0062, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
        
            com.google.firebase.concurrent.a0.log.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.task, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        
            r8.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void a() {
            boolean z6 = false;
            boolean zInterrupted = false;
            while (true) {
                try {
                    synchronized (a0.this.queue) {
                        if (!z6) {
                            c cVar = a0.this.workerRunningState;
                            c cVar2 = c.RUNNING;
                            if (cVar != cVar2) {
                                a0.d(a0.this);
                                a0.this.workerRunningState = cVar2;
                                z6 = true;
                            }
                        }
                        Runnable runnable = (Runnable) a0.this.queue.poll();
                        this.task = runnable;
                        if (runnable == null) {
                            a0.this.workerRunningState = c.IDLE;
                        }
                    }
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                    this.task = null;
                } catch (Throwable th) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
        }

        /* synthetic */ b(a0 a0Var, a aVar) {
            this();
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + a0.this.workerRunningState + "}";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (a0.this.queue) {
                    a0.this.workerRunningState = c.IDLE;
                    throw e;
                }
            }
        }
    }

    enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    static /* synthetic */ long d(a0 a0Var) {
        long j6 = a0Var.workerRunCount;
        a0Var.workerRunCount = 1 + j6;
        return j6;
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.executor + "}";
    }

    a0(Executor executor) {
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0061  */
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c cVar;
        boolean z6;
        Preconditions.checkNotNull(runnable);
        synchronized (this.queue) {
            c cVar2 = this.workerRunningState;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j6 = this.workerRunCount;
                a aVar = new a(runnable);
                this.queue.add(aVar);
                c cVar3 = c.QUEUING;
                this.workerRunningState = cVar3;
                try {
                    this.executor.execute(this.worker);
                    if (this.workerRunningState != cVar3) {
                        return;
                    }
                    synchronized (this.queue) {
                        try {
                            if (this.workerRunCount == j6 && this.workerRunningState == cVar3) {
                                this.workerRunningState = cVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.queue) {
                        try {
                            c cVar4 = this.workerRunningState;
                            if (cVar4 == c.IDLE || cVar4 == c.QUEUING) {
                                if (this.queue.removeLastOccurrence(aVar)) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                            } else {
                                z6 = false;
                            }
                            if (!(e instanceof RejectedExecutionException) || z6) {
                                throw e;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    return;
                }
            }
            this.queue.add(runnable);
        }
    }
}

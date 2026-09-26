package com.google.common.util.concurrent;

import com.google.common.base.w;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
public final class n {

    private static class a extends com.google.common.util.concurrent.b {
        private final ExecutorService delegate;

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j6, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.awaitTermination(j6, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.delegate.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.delegate.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.delegate.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.delegate.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.delegate.shutdownNow();
        }

        a(ExecutorService executorService) {
            this.delegate = (ExecutorService) com.google.common.base.o.k(executorService);
        }

        public final String toString() {
            String string = super.toString();
            String strValueOf = String.valueOf(this.delegate);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2 + strValueOf.length());
            sb.append(string);
            sb.append("[");
            sb.append(strValueOf);
            sb.append("]");
            return sb.toString();
        }
    }

    private static final class b extends a implements ScheduledExecutorService {
        final ScheduledExecutorService delegate;

        private static final class a<V> extends e.a<V> implements l<V> {
            private final ScheduledFuture<?> scheduledDelegate;

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.scheduledDelegate.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.scheduledDelegate.compareTo(delayed);
            }

            public a(k<V> kVar, ScheduledFuture<?> scheduledFuture) {
                super(kVar);
                this.scheduledDelegate = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.d, java.util.concurrent.Future
            public boolean cancel(boolean z6) {
                boolean zCancel = super.cancel(z6);
                if (zCancel) {
                    this.scheduledDelegate.cancel(z6);
                }
                return zCancel;
            }
        }

        /* JADX INFO: renamed from: com.google.common.util.concurrent.n$b$b, reason: collision with other inner class name */
        private static final class RunnableC0227b extends com.google.common.util.concurrent.a.j<Void> implements Runnable {
            private final Runnable delegate;

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th) {
                    B(th);
                    throw w.e(th);
                }
            }

            @Override // com.google.common.util.concurrent.a
            protected String x() {
                String strValueOf = String.valueOf(this.delegate);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 7);
                sb.append("task=[");
                sb.append(strValueOf);
                sb.append("]");
                return sb.toString();
            }

            public RunnableC0227b(Runnable runnable) {
                this.delegate = (Runnable) com.google.common.base.o.k(runnable);
            }
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public l<?> schedule(Runnable runnable, long j6, TimeUnit timeUnit) {
            r rVarD = r.D(runnable, null);
            return new a(rVarD, this.delegate.schedule(rVarD, j6, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public l<?> scheduleAtFixedRate(Runnable runnable, long j6, long j10, TimeUnit timeUnit) {
            RunnableC0227b runnableC0227b = new RunnableC0227b(runnable);
            return new a(runnableC0227b, this.delegate.scheduleAtFixedRate(runnableC0227b, j6, j10, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public l<?> scheduleWithFixedDelay(Runnable runnable, long j6, long j10, TimeUnit timeUnit) {
            RunnableC0227b runnableC0227b = new RunnableC0227b(runnable);
            return new a(runnableC0227b, this.delegate.scheduleWithFixedDelay(runnableC0227b, j6, j10, timeUnit));
        }

        b(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.delegate = (ScheduledExecutorService) com.google.common.base.o.k(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public <V> l<V> schedule(Callable<V> callable, long j6, TimeUnit timeUnit) {
            r rVarE = r.E(callable);
            return new a(rVarE, this.delegate.schedule(rVarE, j6, timeUnit));
        }
    }

    public static m a(ExecutorService executorService) {
        if (executorService instanceof m) {
            return (m) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new b((ScheduledExecutorService) executorService) : new a(executorService);
    }
}

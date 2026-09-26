package com.google.firebase.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes9.dex */
class o implements ScheduledExecutorService {
    private final ExecutorService delegate;
    private final ScheduledExecutorService scheduler;

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.delegate.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.delegate.invokeAny(collection);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(final Runnable runnable, final long j6, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.f
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                return this.f1503a.p(runnable, j6, timeUnit, bVar);
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.delegate.submit(callable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(final Runnable runnable, final p.b bVar) {
        this.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.d
            @Override // java.lang.Runnable
            public final void run() {
                o.n(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture p(final Runnable runnable, long j6, TimeUnit timeUnit, final p.b bVar) {
        return this.scheduler.schedule(new Runnable() { // from class: com.google.firebase.concurrent.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f1518a.o(runnable, bVar);
            }
        }, j6, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Future t(final Callable callable, final p.b bVar) throws Exception {
        return this.delegate.submit(new Runnable() { // from class: com.google.firebase.concurrent.m
            @Override // java.lang.Runnable
            public final void run() {
                o.s(callable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture u(final Callable callable, long j6, TimeUnit timeUnit, final p.b bVar) {
        return this.scheduler.schedule(new Callable() { // from class: com.google.firebase.concurrent.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f1521a.t(callable, bVar);
            }
        }, j6, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(final Runnable runnable, final p.b bVar) {
        this.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.n
            @Override // java.lang.Runnable
            public final void run() throws Exception {
                o.v(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture x(final Runnable runnable, long j6, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.scheduler.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.concurrent.i
            @Override // java.lang.Runnable
            public final void run() {
                this.f1512a.w(runnable, bVar);
            }
        }, j6, j10, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(final Runnable runnable, final p.b bVar) {
        this.delegate.execute(new Runnable() { // from class: com.google.firebase.concurrent.e
            @Override // java.lang.Runnable
            public final void run() {
                o.A(runnable, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ScheduledFuture z(final Runnable runnable, long j6, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.scheduler.scheduleWithFixedDelay(new Runnable() { // from class: com.google.firebase.concurrent.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f1515a.y(runnable, bVar);
            }
        }, j6, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j6, TimeUnit timeUnit) throws InterruptedException {
        return this.delegate.awaitTermination(j6, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.delegate.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j6, TimeUnit timeUnit) throws InterruptedException {
        return this.delegate.invokeAll(collection, j6, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.delegate.invokeAny(collection, j6, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.delegate.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.delegate.isTerminated();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(final Callable<V> callable, final long j6, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.c
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                return this.f1496a.u(callable, j6, timeUnit, bVar);
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(final Runnable runnable, final long j6, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.h
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                return this.f1509a.x(runnable, j6, j10, timeUnit, bVar);
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(final Runnable runnable, final long j6, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() { // from class: com.google.firebase.concurrent.g
            @Override // com.google.firebase.concurrent.p.c
            public final ScheduledFuture a(p.b bVar) {
                return this.f1506a.z(runnable, j6, j10, timeUnit, bVar);
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t5) {
        return this.delegate.submit(runnable, t5);
    }

    o(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.delegate = executorService;
        this.scheduler = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void A(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
            bVar.set(null);
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(Callable callable, p.b bVar) {
        try {
            bVar.set(callable.call());
        } catch (Exception e) {
            bVar.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(Runnable runnable, p.b bVar) throws Exception {
        try {
            runnable.run();
        } catch (Exception e) {
            bVar.a(e);
            throw e;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.delegate.submit(runnable);
    }
}

package androidx.media3.common.util;

import androidx.annotation.Nullable;
import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {
    private boolean canceled;

    @Nullable
    private Exception exception;

    @Nullable
    private R result;

    @Nullable
    private Thread workThread;
    private final ConditionVariable started = new ConditionVariable();
    private final ConditionVariable finished = new ConditionVariable();
    private final Object cancelLock = new Object();

    protected void c() {
    }

    @UnknownNull
    protected abstract R d() throws Exception;

    @Override // java.util.concurrent.Future
    @UnknownNull
    public final R get() throws ExecutionException, InterruptedException {
        this.finished.a();
        return e();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.canceled;
    }

    @UnknownNull
    private R e() throws ExecutionException {
        if (this.canceled) {
            throw new CancellationException();
        }
        if (this.exception == null) {
            return this.result;
        }
        throw new ExecutionException(this.exception);
    }

    public final void a() {
        this.finished.c();
    }

    public final void b() {
        this.started.c();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z6) {
        synchronized (this.cancelLock) {
            try {
                if (!this.canceled && !this.finished.e()) {
                    this.canceled = true;
                    c();
                    Thread thread = this.workThread;
                    if (thread == null) {
                        this.started.f();
                        this.finished.f();
                    } else if (z6) {
                        thread.interrupt();
                    }
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.finished.e();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.cancelLock) {
            try {
                if (this.canceled) {
                    return;
                }
                this.workThread = Thread.currentThread();
                this.started.f();
                try {
                    try {
                        this.result = d();
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                        }
                    } catch (Throwable th) {
                        synchronized (this.cancelLock) {
                            this.finished.f();
                            this.workThread = null;
                            Thread.interrupted();
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    this.exception = e;
                    synchronized (this.cancelLock) {
                        this.finished.f();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected RunnableFutureTask() {
    }

    @Override // java.util.concurrent.Future
    @UnknownNull
    public final R get(long j6, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.finished.b(TimeUnit.MILLISECONDS.convert(j6, timeUnit))) {
            return e();
        }
        throw new TimeoutException();
    }
}

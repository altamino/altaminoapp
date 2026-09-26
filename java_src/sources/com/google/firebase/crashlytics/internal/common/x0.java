package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import android.os.Looper;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes5.dex */
public final class x0 {
    private static final ExecutorService TASK_CONTINUATION_EXECUTOR_SERVICE = z.c("awaitEvenIfOnMainThread task continuation executor");
    private static final int TIMEOUT_SEC = 4;

    public static boolean g(CountDownLatch countDownLatch, long j6, TimeUnit timeUnit) {
        boolean zAwait;
        boolean z6 = false;
        try {
            long nanos = timeUnit.toNanos(j6);
            long jNanoTime = System.nanoTime() + nanos;
            while (true) {
                try {
                    zAwait = countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
                    break;
                } catch (InterruptedException unused) {
                    z6 = true;
                    nanos = jNanoTime - System.nanoTime();
                }
            }
            if (z6) {
                Thread.currentThread().interrupt();
            }
            return zAwait;
        } catch (Throwable th) {
            if (z6) {
                Thread.currentThread().interrupt();
            }
            throw th;
        }
    }

    public static <T> T f(Task<T> task) throws InterruptedException, TimeoutException {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        task.continueWith(TASK_CONTINUATION_EXECUTOR_SERVICE, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.s0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return x0.i(countDownLatch, task2);
            }
        });
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        }
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        if (task.isComplete()) {
            throw new IllegalStateException(task.getException());
        }
        throw new TimeoutException();
    }

    public static <T> Task<T> h(final Executor executor, final Callable<Task<T>> callable) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        executor.execute(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.u0
            @Override // java.lang.Runnable
            public final void run() {
                x0.k(callable, executor, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    @SuppressLint({"TaskMainThread"})
    public static <T> Task<T> n(Task<T> task, Task<T> task2) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Continuation<T, TContinuationResult> continuation = new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.w0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task3) {
                return x0.l(taskCompletionSource, task3);
            }
        };
        task.continueWith(continuation);
        task2.continueWith(continuation);
        return taskCompletionSource.getTask();
    }

    public static <T> Task<T> o(Executor executor, Task<T> task, Task<T> task2) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Continuation<T, TContinuationResult> continuation = new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.t0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task3) {
                return x0.m(taskCompletionSource, task3);
            }
        };
        task.continueWith(executor, continuation);
        task2.continueWith(executor, continuation);
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object i(CountDownLatch countDownLatch, Task task) throws Exception {
        countDownLatch.countDown();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object j(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.isSuccessful()) {
            taskCompletionSource.setResult(task.getResult());
            return null;
        }
        if (task.getException() != null) {
            taskCompletionSource.setException(task.getException());
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(Callable callable, Executor executor, final TaskCompletionSource taskCompletionSource) {
        try {
            ((Task) callable.call()).continueWith(executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.v0
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    return x0.j(taskCompletionSource, task);
                }
            });
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void l(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult(task.getResult());
            return null;
        }
        if (task.getException() != null) {
            taskCompletionSource.trySetException(task.getException());
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void m(TaskCompletionSource taskCompletionSource, Task task) throws Exception {
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult(task.getResult());
            return null;
        }
        if (task.getException() != null) {
            taskCompletionSource.trySetException(task.getException());
            return null;
        }
        return null;
    }
}

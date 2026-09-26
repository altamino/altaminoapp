package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes7.dex */
public class n {
    private final Executor executor;
    private Task<Void> tail = Tasks.forResult(null);
    private final Object tailLock = new Object();
    private final ThreadLocal<Boolean> isExecutorThread = new ThreadLocal<>();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.this.isExecutorThread.set(Boolean.TRUE);
        }
    }

    class b implements Callable<Void> {
        final /* synthetic */ Runnable val$runnable;

        b(Runnable runnable) {
            this.val$runnable = runnable;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            this.val$runnable.run();
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class c<T> implements Continuation<Void, T> {
        final /* synthetic */ Callable val$callable;

        c(Callable callable) {
            this.val$callable = callable;
        }

        @Override // com.google.android.gms.tasks.Continuation
        public T then(@NonNull Task<Void> task) throws Exception {
            return (T) this.val$callable.call();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class d<T> implements Continuation<T, Void> {
        @Override // com.google.android.gms.tasks.Continuation
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void then(@NonNull Task<T> task) throws Exception {
            return null;
        }

        d() {
        }
    }

    public Executor c() {
        return this.executor;
    }

    private <T> Task<Void> d(Task<T> task) {
        return task.continueWith(this.executor, new d());
    }

    private boolean e() {
        return Boolean.TRUE.equals(this.isExecutorThread.get());
    }

    private <T> Continuation<Void, T> f(Callable<T> callable) {
        return new c(callable);
    }

    Task<Void> g(Runnable runnable) {
        return h(new b(runnable));
    }

    public <T> Task<T> h(Callable<T> callable) {
        Task<T> taskContinueWith;
        synchronized (this.tailLock) {
            taskContinueWith = this.tail.continueWith(this.executor, f(callable));
            this.tail = d(taskContinueWith);
        }
        return taskContinueWith;
    }

    public <T> Task<T> i(Callable<Task<T>> callable) {
        Task<T> taskContinueWithTask;
        synchronized (this.tailLock) {
            taskContinueWithTask = this.tail.continueWithTask(this.executor, f(callable));
            this.tail = d(taskContinueWithTask);
        }
        return taskContinueWithTask;
    }

    public n(Executor executor) {
        this.executor = executor;
        executor.execute(new a());
    }

    public void b() {
        if (e()) {
        } else {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }
}

package androidx.work.impl.utils;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class SerialExecutorImpl implements SerialExecutor {

    @GuardedBy
    private Runnable mActive;
    private final Executor mExecutor;
    private final ArrayDeque<Task> mTasks = new ArrayDeque<>();
    final Object mLock = new Object();

    static class Task implements Runnable {
        final Runnable mRunnable;
        final SerialExecutorImpl mSerialExecutor;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mRunnable.run();
                synchronized (this.mSerialExecutor.mLock) {
                    this.mSerialExecutor.a();
                }
            } catch (Throwable th) {
                synchronized (this.mSerialExecutor.mLock) {
                    this.mSerialExecutor.a();
                    throw th;
                }
            }
        }

        Task(@NonNull SerialExecutorImpl serialExecutor, @NonNull Runnable runnable) {
            this.mSerialExecutor = serialExecutor;
            this.mRunnable = runnable;
        }
    }

    @GuardedBy
    void a() {
        Task taskPoll = this.mTasks.poll();
        this.mActive = taskPoll;
        if (taskPoll != null) {
            this.mExecutor.execute(taskPoll);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable command) {
        synchronized (this.mLock) {
            try {
                this.mTasks.add(new Task(this, command));
                if (this.mActive == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.utils.taskexecutor.SerialExecutor
    public boolean q() {
        boolean z6;
        synchronized (this.mLock) {
            z6 = !this.mTasks.isEmpty();
        }
        return z6;
    }

    public SerialExecutorImpl(@NonNull Executor executor) {
        this.mExecutor = executor;
    }
}

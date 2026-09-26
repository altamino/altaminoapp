package androidx.work;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Consumer;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class Configuration {

    @SuppressLint({"MinMaxConstant"})
    public static final int MIN_SCHEDULER_LIMIT = 20;

    @Nullable
    final String mDefaultProcessName;

    @Nullable
    final Consumer<Throwable> mExceptionHandler;

    @NonNull
    final Executor mExecutor;

    @NonNull
    final InputMergerFactory mInputMergerFactory;
    private final boolean mIsUsingDefaultTaskExecutor;
    final int mLoggingLevel;
    final int mMaxJobSchedulerId;
    final int mMaxSchedulerLimit;
    final int mMinJobSchedulerId;

    @NonNull
    final RunnableScheduler mRunnableScheduler;

    @Nullable
    final Consumer<Throwable> mSchedulingExceptionHandler;

    @NonNull
    final Executor mTaskExecutor;

    @NonNull
    final WorkerFactory mWorkerFactory;

    public static final class Builder {

        @Nullable
        String mDefaultProcessName;

        @Nullable
        Consumer<Throwable> mExceptionHandler;
        Executor mExecutor;
        InputMergerFactory mInputMergerFactory;
        int mLoggingLevel;
        int mMaxJobSchedulerId;
        int mMaxSchedulerLimit;
        int mMinJobSchedulerId;
        RunnableScheduler mRunnableScheduler;

        @Nullable
        Consumer<Throwable> mSchedulingExceptionHandler;
        Executor mTaskExecutor;
        WorkerFactory mWorkerFactory;

        public Builder() {
            this.mLoggingLevel = 4;
            this.mMinJobSchedulerId = 0;
            this.mMaxJobSchedulerId = Integer.MAX_VALUE;
            this.mMaxSchedulerLimit = 20;
        }

        @RestrictTo
        public Builder(@NonNull Configuration configuration) {
            this.mExecutor = configuration.mExecutor;
            this.mWorkerFactory = configuration.mWorkerFactory;
            this.mInputMergerFactory = configuration.mInputMergerFactory;
            this.mTaskExecutor = configuration.mTaskExecutor;
            this.mLoggingLevel = configuration.mLoggingLevel;
            this.mMinJobSchedulerId = configuration.mMinJobSchedulerId;
            this.mMaxJobSchedulerId = configuration.mMaxJobSchedulerId;
            this.mMaxSchedulerLimit = configuration.mMaxSchedulerLimit;
            this.mRunnableScheduler = configuration.mRunnableScheduler;
            this.mExceptionHandler = configuration.mExceptionHandler;
            this.mSchedulingExceptionHandler = configuration.mSchedulingExceptionHandler;
            this.mDefaultProcessName = configuration.mDefaultProcessName;
        }

        @NonNull
        public Configuration a() {
            return new Configuration(this);
        }
    }

    public interface Provider {
        @NonNull
        Configuration a();
    }

    @Nullable
    public String c() {
        return this.mDefaultProcessName;
    }

    @NonNull
    public Executor d() {
        return this.mExecutor;
    }

    @Nullable
    public Consumer<Throwable> e() {
        return this.mExceptionHandler;
    }

    @NonNull
    public InputMergerFactory f() {
        return this.mInputMergerFactory;
    }

    public int g() {
        return this.mMaxJobSchedulerId;
    }

    public int i() {
        return this.mMinJobSchedulerId;
    }

    @RestrictTo
    public int j() {
        return this.mLoggingLevel;
    }

    @NonNull
    public RunnableScheduler k() {
        return this.mRunnableScheduler;
    }

    @Nullable
    public Consumer<Throwable> l() {
        return this.mSchedulingExceptionHandler;
    }

    @NonNull
    public Executor m() {
        return this.mTaskExecutor;
    }

    @NonNull
    public WorkerFactory n() {
        return this.mWorkerFactory;
    }

    @NonNull
    private ThreadFactory b(final boolean isTaskExecutor) {
        return new ThreadFactory() { // from class: androidx.work.Configuration.1
            private final AtomicInteger mThreadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, (isTaskExecutor ? "WM.task-" : "androidx.work-") + this.mThreadCount.incrementAndGet());
            }
        };
    }

    @IntRange
    @RestrictTo
    public int h() {
        return Build.VERSION.SDK_INT == 23 ? this.mMaxSchedulerLimit / 2 : this.mMaxSchedulerLimit;
    }

    Configuration(@NonNull Builder builder) {
        Executor executor = builder.mExecutor;
        if (executor == null) {
            this.mExecutor = a(false);
        } else {
            this.mExecutor = executor;
        }
        Executor executor2 = builder.mTaskExecutor;
        if (executor2 == null) {
            this.mIsUsingDefaultTaskExecutor = true;
            this.mTaskExecutor = a(true);
        } else {
            this.mIsUsingDefaultTaskExecutor = false;
            this.mTaskExecutor = executor2;
        }
        WorkerFactory workerFactory = builder.mWorkerFactory;
        if (workerFactory == null) {
            this.mWorkerFactory = WorkerFactory.c();
        } else {
            this.mWorkerFactory = workerFactory;
        }
        InputMergerFactory inputMergerFactory = builder.mInputMergerFactory;
        if (inputMergerFactory == null) {
            this.mInputMergerFactory = InputMergerFactory.c();
        } else {
            this.mInputMergerFactory = inputMergerFactory;
        }
        RunnableScheduler runnableScheduler = builder.mRunnableScheduler;
        if (runnableScheduler == null) {
            this.mRunnableScheduler = new DefaultRunnableScheduler();
        } else {
            this.mRunnableScheduler = runnableScheduler;
        }
        this.mLoggingLevel = builder.mLoggingLevel;
        this.mMinJobSchedulerId = builder.mMinJobSchedulerId;
        this.mMaxJobSchedulerId = builder.mMaxJobSchedulerId;
        this.mMaxSchedulerLimit = builder.mMaxSchedulerLimit;
        this.mExceptionHandler = builder.mExceptionHandler;
        this.mSchedulingExceptionHandler = builder.mSchedulingExceptionHandler;
        this.mDefaultProcessName = builder.mDefaultProcessName;
    }

    @NonNull
    private Executor a(boolean isTaskExecutor) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), b(isTaskExecutor));
    }
}

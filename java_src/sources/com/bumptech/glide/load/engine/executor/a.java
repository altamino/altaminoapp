package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements ExecutorService {
    private static final String DEFAULT_ANIMATION_EXECUTOR_NAME = "animation";
    private static final String DEFAULT_DISK_CACHE_EXECUTOR_NAME = "disk-cache";
    private static final int DEFAULT_DISK_CACHE_EXECUTOR_THREADS = 1;
    private static final String DEFAULT_SOURCE_EXECUTOR_NAME = "source";
    private static final String DEFAULT_SOURCE_UNLIMITED_EXECUTOR_NAME = "source-unlimited";
    private static final long KEEP_ALIVE_TIME_MS = TimeUnit.SECONDS.toMillis(10);
    private static final int MAXIMUM_AUTOMATIC_THREAD_COUNT = 4;
    private static final String TAG = "GlideExecutor";
    private static volatile int bestThreadCount;
    private final ExecutorService delegate;

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.executor.a$a, reason: collision with other inner class name */
    public static final class C0122a {
        public static final long NO_THREAD_TIMEOUT = 0;
        private int corePoolSize;
        private int maximumPoolSize;
        private String name;
        private final boolean preventNetworkOperations;
        private long threadTimeoutMillis;

        @NonNull
        private c uncaughtThrowableStrategy = c.DEFAULT;

        public C0122a b(String str) {
            this.name = str;
            return this;
        }

        public C0122a c(@IntRange int i10) {
            this.corePoolSize = i10;
            this.maximumPoolSize = i10;
            return this;
        }

        public a a() {
            if (TextUtils.isEmpty(this.name)) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.name);
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.corePoolSize, this.maximumPoolSize, this.threadTimeoutMillis, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new b(this.name, this.uncaughtThrowableStrategy, this.preventNetworkOperations));
            if (this.threadTimeoutMillis != 0) {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
            }
            return new a(threadPoolExecutor);
        }

        C0122a(boolean z6) {
            this.preventNetworkOperations = z6;
        }
    }

    public interface c {
        public static final c DEFAULT;
        public static final c IGNORE = new C0124a();
        public static final c LOG;
        public static final c THROW;

        class b implements c {
            @Override // com.bumptech.glide.load.engine.executor.a.c
            public void a(Throwable th) {
                if (th == null || !Log.isLoggable(a.TAG, 6)) {
                    return;
                }
                Log.e(a.TAG, "Request threw uncaught throwable", th);
            }

            b() {
            }
        }

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.executor.a$c$c, reason: collision with other inner class name */
        class C0125c implements c {
            @Override // com.bumptech.glide.load.engine.executor.a.c
            public void a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }

            C0125c() {
            }
        }

        void a(Throwable th);

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.executor.a$c$a, reason: collision with other inner class name */
        class C0124a implements c {
            @Override // com.bumptech.glide.load.engine.executor.a.c
            public void a(Throwable th) {
            }

            C0124a() {
            }
        }

        static {
            b bVar = new b();
            LOG = bVar;
            THROW = new C0125c();
            DEFAULT = bVar;
        }
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.delegate.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.delegate.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(@NonNull Runnable runnable) {
        return this.delegate.submit(runnable);
    }

    private static final class b implements ThreadFactory {
        private static final int DEFAULT_PRIORITY = 9;
        private final String name;
        final boolean preventNetworkOperations;
        private int threadNum;
        final c uncaughtThrowableStrategy;

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.executor.a$b$a, reason: collision with other inner class name */
        class C0123a extends Thread {
            C0123a(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (b.this.preventNetworkOperations) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    b.this.uncaughtThrowableStrategy.a(th);
                }
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(@NonNull Runnable runnable) {
            C0123a c0123a;
            c0123a = new C0123a(runnable, "glide-" + this.name + "-thread-" + this.threadNum);
            this.threadNum = this.threadNum + 1;
            return c0123a;
        }

        b(String str, c cVar, boolean z6) {
            this.name = str;
            this.uncaughtThrowableStrategy = cVar;
            this.preventNetworkOperations = z6;
        }
    }

    public static int a() {
        if (bestThreadCount == 0) {
            bestThreadCount = Math.min(4, com.bumptech.glide.load.engine.executor.b.a());
        }
        return bestThreadCount;
    }

    public static C0122a d() {
        return new C0122a(true).c(1).b(DEFAULT_DISK_CACHE_EXECUTOR_NAME);
    }

    public static C0122a g() {
        return new C0122a(false).c(a()).b("source");
    }

    public static a i() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, KEEP_ALIVE_TIME_MS, TimeUnit.MILLISECONDS, new SynchronousQueue(), new b(DEFAULT_SOURCE_UNLIMITED_EXECUTOR_NAME, c.DEFAULT, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j6, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.delegate.awaitTermination(j6, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.delegate.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j6, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.delegate.invokeAll(collection, j6, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j6, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
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

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.delegate.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return this.delegate.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public <T> Future<T> submit(@NonNull Runnable runnable, T t5) {
        return this.delegate.submit(runnable, t5);
    }

    public String toString() {
        return this.delegate.toString();
    }

    @VisibleForTesting
    a(ExecutorService executorService) {
        this.delegate = executorService;
    }

    public static C0122a b() {
        int i10;
        if (a() >= 4) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        return new C0122a(true).c(i10).b(DEFAULT_ANIMATION_EXECUTOR_NAME);
    }

    public static a c() {
        return b().a();
    }

    public static a f() {
        return d().a();
    }

    public static a h() {
        return g().a();
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.delegate.submit(callable);
    }
}

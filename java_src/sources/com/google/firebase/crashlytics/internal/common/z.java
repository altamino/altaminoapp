package com.google.firebase.crashlytics.internal.common;

import android.annotation.SuppressLint;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes7.dex */
public final class z {
    private static final long DEFAULT_TERMINATION_TIMEOUT = 2;

    class a implements ThreadFactory {
        final /* synthetic */ AtomicLong val$count;
        final /* synthetic */ String val$threadNameTemplate;

        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.common.z$a$a, reason: collision with other inner class name */
        class C0231a extends d {
            final /* synthetic */ Runnable val$runnable;

            C0231a(Runnable runnable) {
                this.val$runnable = runnable;
            }

            @Override // com.google.firebase.crashlytics.internal.common.d
            public void a() {
                this.val$runnable.run();
            }
        }

        a(String str, AtomicLong atomicLong) {
            this.val$threadNameTemplate = str;
            this.val$count = atomicLong;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(new C0231a(runnable));
            threadNewThread.setName(this.val$threadNameTemplate + this.val$count.getAndIncrement());
            return threadNewThread;
        }
    }

    class b extends d {
        final /* synthetic */ ExecutorService val$service;
        final /* synthetic */ String val$serviceName;
        final /* synthetic */ long val$terminationTimeout;
        final /* synthetic */ TimeUnit val$timeUnit;

        b(String str, ExecutorService executorService, long j6, TimeUnit timeUnit) {
            this.val$serviceName = str;
            this.val$service = executorService;
            this.val$terminationTimeout = j6;
            this.val$timeUnit = timeUnit;
        }

        @Override // com.google.firebase.crashlytics.internal.common.d
        public void a() {
            try {
                com.google.firebase.crashlytics.internal.g.f().b("Executing shutdown hook for " + this.val$serviceName);
                this.val$service.shutdown();
                if (!this.val$service.awaitTermination(this.val$terminationTimeout, this.val$timeUnit)) {
                    com.google.firebase.crashlytics.internal.g.f().b(this.val$serviceName + " did not shut down in the allocated time. Requesting immediate shutdown.");
                    this.val$service.shutdownNow();
                }
            } catch (InterruptedException unused) {
                com.google.firebase.crashlytics.internal.g.f().b(String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.val$serviceName));
                this.val$service.shutdownNow();
            }
        }
    }

    private static void a(String str, ExecutorService executorService) {
        b(str, executorService, 2L, TimeUnit.SECONDS);
    }

    public static ThreadFactory d(String str) {
        return new a(str, new AtomicLong(1L));
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static ExecutorService e(ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        return Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler));
    }

    @SuppressLint({"ThreadPoolCreation"})
    private static void b(String str, ExecutorService executorService, long j6, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new b(str, executorService, j6, timeUnit), "Crashlytics Shutdown Hook for " + str));
    }

    public static ExecutorService c(String str) {
        ExecutorService executorServiceE = e(d(str), new ThreadPoolExecutor.DiscardPolicy());
        a(str, executorServiceE);
        return executorServiceE;
    }
}

package com.google.firebase.crashlytics.internal.send;

import android.annotation.SuppressLint;
import android.database.SQLException;
import android.os.SystemClock;
import com.google.android.datatransport.runtime.l;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.common.g0;
import com.google.firebase.crashlytics.internal.common.u;
import com.google.firebase.crashlytics.internal.common.x0;
import com.google.firebase.crashlytics.internal.g;
import com.google.firebase.crashlytics.internal.model.f0;
import f2.f;
import f2.h;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
final class e {
    private static final int MAX_DELAY_MS = 3600000;
    private static final int MS_PER_MINUTE = 60000;
    private static final int MS_PER_SECOND = 1000;
    private static final int STARTUP_DURATION_MS = 2000;
    private final double base;
    private long lastUpdatedMs;
    private final g0 onDemandCounter;
    private final BlockingQueue<Runnable> queue;
    private final int queueCapacity;
    private final double ratePerMinute;
    private final ThreadPoolExecutor singleThreadExecutor;
    private final long startTimeMs;
    private int step;
    private final long stepDurationMs;
    private final f<f0> transport;

    private final class b implements Runnable {
        private final u reportWithSessionId;
        private final TaskCompletionSource<u> tcs;

        private b(u uVar, TaskCompletionSource<u> taskCompletionSource) {
            this.reportWithSessionId = uVar;
            this.tcs = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.p(this.reportWithSessionId, this.tcs);
            e.this.onDemandCounter.c();
            double dG = e.this.g();
            g.f().b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dG / 1000.0d)) + " s for report: " + this.reportWithSessionId.d());
            e.q(dG);
        }
    }

    e(f<f0> fVar, com.google.firebase.crashlytics.internal.settings.d dVar, g0 g0Var) {
        this(dVar.onDemandUploadRatePerMinute, dVar.onDemandBackoffBase, ((long) dVar.onDemandBackoffStepDurationSeconds) * 1000, fVar, g0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(double d) {
        try {
            Thread.sleep((long) d);
        } catch (InterruptedException unused) {
        }
    }

    @SuppressLint({"ThreadPoolCreation"})
    e(double d, double d2, long j6, f<f0> fVar, g0 g0Var) {
        this.ratePerMinute = d;
        this.base = d2;
        this.stepDurationMs = j6;
        this.transport = fVar;
        this.onDemandCounter = g0Var;
        this.startTimeMs = SystemClock.elapsedRealtime();
        int i10 = (int) d;
        this.queueCapacity = i10;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i10);
        this.queue = arrayBlockingQueue;
        this.singleThreadExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.step = 0;
        this.lastUpdatedMs = 0L;
    }

    private int h() {
        if (this.lastUpdatedMs == 0) {
            this.lastUpdatedMs = o();
        }
        int iO = (int) ((o() - this.lastUpdatedMs) / this.stepDurationMs);
        int iMin = l() ? Math.min(100, this.step + iO) : Math.max(0, this.step - iO);
        if (this.step != iMin) {
            this.step = iMin;
            this.lastUpdatedMs = o();
        }
        return iMin;
    }

    private boolean k() {
        return this.queue.size() < this.queueCapacity;
    }

    private boolean l() {
        return this.queue.size() == this.queueCapacity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CountDownLatch countDownLatch) {
        try {
            l.a(this.transport, f2.d.HIGHEST);
        } catch (SQLException unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(TaskCompletionSource taskCompletionSource, boolean z6, u uVar, Exception exc) {
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
            return;
        }
        if (z6) {
            j();
        }
        taskCompletionSource.trySetResult(uVar);
    }

    TaskCompletionSource<u> i(u uVar, boolean z6) {
        synchronized (this.queue) {
            try {
                TaskCompletionSource<u> taskCompletionSource = new TaskCompletionSource<>();
                if (!z6) {
                    p(uVar, taskCompletionSource);
                    return taskCompletionSource;
                }
                this.onDemandCounter.b();
                if (!k()) {
                    h();
                    g.f().b("Dropping report due to queue being full: " + uVar.d());
                    this.onDemandCounter.a();
                    taskCompletionSource.trySetResult(uVar);
                    return taskCompletionSource;
                }
                g.f().b("Enqueueing report: " + uVar.d());
                g.f().b("Queue size: " + this.queue.size());
                this.singleThreadExecutor.execute(new b(uVar, taskCompletionSource));
                g.f().b("Closing task for report: " + uVar.d());
                taskCompletionSource.trySetResult(uVar);
                return taskCompletionSource;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @SuppressLint({"DiscouragedApi", "ThreadPoolCreation"})
    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: com.google.firebase.crashlytics.internal.send.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f1553a.m(countDownLatch);
            }
        }).start();
        x0.g(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final u uVar, final TaskCompletionSource<u> taskCompletionSource) {
        final boolean z6;
        g.f().b("Sending report through Google DataTransport: " + uVar.d());
        if (SystemClock.elapsedRealtime() - this.startTimeMs < 2000) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.transport.a(f2.c.e(uVar.b()), new h() { // from class: com.google.firebase.crashlytics.internal.send.c
            @Override // f2.h
            public final void a(Exception exc) {
                this.f1550a.n(taskCompletionSource, z6, uVar, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.ratePerMinute) * Math.pow(this.base, h()));
    }
}

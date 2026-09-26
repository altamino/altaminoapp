package com.google.firebase.perf.session.gauges;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.n;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class l {
    public static final long INVALID_MEMORY_COLLECTION_FREQUENCY = -1;
    private static final int UNSET_MEMORY_METRIC_COLLECTION_RATE = -1;
    private static final y4.a logger = y4.a.e();
    private long memoryMetricCollectionRateMs;
    private final ScheduledExecutorService memoryMetricCollectorExecutor;

    @Nullable
    private ScheduledFuture memoryMetricCollectorJob;
    public final ConcurrentLinkedQueue<com.google.firebase.perf.v1.b> memoryMetricReadings;
    private final Runtime runtime;

    @SuppressLint({"ThreadPoolCreation"})
    l() {
        this(Executors.newSingleThreadScheduledExecutor(), Runtime.getRuntime());
    }

    public static boolean e(long j6) {
        return j6 <= 0;
    }

    private synchronized void h(final Timer timer) {
        try {
            this.memoryMetricCollectorExecutor.schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1627a.f(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            logger.j("Unable to collect Memory Metric: " + e.getMessage());
        }
    }

    private synchronized void i(long j6, final Timer timer) {
        try {
            this.memoryMetricCollectionRateMs = j6;
            try {
                this.memoryMetricCollectorJob = this.memoryMetricCollectorExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1625a.g(timer);
                    }
                }, 0L, j6, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                logger.j("Unable to start collecting Memory Metrics: " + e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    l(ScheduledExecutorService scheduledExecutorService, Runtime runtime) {
        this.memoryMetricCollectorJob = null;
        this.memoryMetricCollectionRateMs = -1L;
        this.memoryMetricCollectorExecutor = scheduledExecutorService;
        this.memoryMetricReadings = new ConcurrentLinkedQueue<>();
        this.runtime = runtime;
    }

    private int d() {
        return n.c(com.google.firebase.perf.util.k.BYTES.a(this.runtime.totalMemory() - this.runtime.freeMemory()));
    }

    @Nullable
    private com.google.firebase.perf.v1.b l(Timer timer) {
        if (timer == null) {
            return null;
        }
        return com.google.firebase.perf.v1.b.j().d(timer.e()).h(d()).build();
    }

    public void k() {
        ScheduledFuture scheduledFuture = this.memoryMetricCollectorJob;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.memoryMetricCollectorJob = null;
        this.memoryMetricCollectionRateMs = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.memoryMetricReadings.add(bVarL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Timer timer) {
        com.google.firebase.perf.v1.b bVarL = l(timer);
        if (bVarL != null) {
            this.memoryMetricReadings.add(bVarL);
        }
    }

    public void c(Timer timer) {
        h(timer);
    }

    public void j(long j6, Timer timer) {
        if (e(j6)) {
            return;
        }
        if (this.memoryMetricCollectorJob != null) {
            if (this.memoryMetricCollectionRateMs != j6) {
                k();
                i(j6, timer);
                return;
            }
            return;
        }
        i(j6, timer);
    }
}

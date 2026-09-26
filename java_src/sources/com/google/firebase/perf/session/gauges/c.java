package com.google.firebase.perf.session.gauges;

import android.annotation.SuppressLint;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.Nullable;
import com.google.firebase.perf.util.Timer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    private static final int CSTIME_POSITION_IN_PROC_PID_STAT = 16;
    private static final int CUTIME_POSITION_IN_PROC_PID_STAT = 15;
    public static final long INVALID_CPU_COLLECTION_FREQUENCY = -1;
    private static final int INVALID_SC_PER_CPU_CLOCK_TICK = -1;
    private static final int STIME_POSITION_IN_PROC_PID_STAT = 14;
    private static final int UNSET_CPU_METRIC_COLLECTION_RATE = -1;
    private static final int UTIME_POSITION_IN_PROC_PID_STAT = 13;
    private static final y4.a logger = y4.a.e();
    private static final long MICROSECONDS_PER_SECOND = TimeUnit.SECONDS.toMicros(1);

    @Nullable
    private ScheduledFuture cpuMetricCollectorJob = null;
    private long cpuMetricCollectionRateMs = -1;
    public final ConcurrentLinkedQueue<com.google.firebase.perf.v1.e> cpuMetricReadings = new ConcurrentLinkedQueue<>();
    private final ScheduledExecutorService cpuMetricCollectorExecutor = Executors.newSingleThreadScheduledExecutor();
    private final String procFileName = "/proc/" + Integer.toString(Process.myPid()) + "/stat";
    private final long clockTicksPerSecond = e();

    private long d(long j6) {
        return Math.round((j6 / this.clockTicksPerSecond) * MICROSECONDS_PER_SECOND);
    }

    public static boolean f(long j6) {
        return j6 <= 0;
    }

    private synchronized void i(final Timer timer) {
        try {
            this.cpuMetricCollectorExecutor.schedule(new Runnable() { // from class: com.google.firebase.perf.session.gauges.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1617a.g(timer);
                }
            }, 0L, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            logger.j("Unable to collect Cpu Metric: " + e.getMessage());
        }
    }

    private synchronized void j(long j6, final Timer timer) {
        try {
            this.cpuMetricCollectionRateMs = j6;
            try {
                this.cpuMetricCollectorJob = this.cpuMetricCollectorExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.google.firebase.perf.session.gauges.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f1615a.h(timer);
                    }
                }, 0L, j6, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                logger.j("Unable to start collecting Cpu Metrics: " + e.getMessage());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    private com.google.firebase.perf.v1.e m(Timer timer) {
        if (timer == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.procFileName));
            try {
                long jE = timer.e();
                String[] strArrSplit = bufferedReader.readLine().split(" ");
                com.google.firebase.perf.v1.e eVarBuild = com.google.firebase.perf.v1.e.k().d(jE).h(d(Long.parseLong(strArrSplit[14]) + Long.parseLong(strArrSplit[16]))).j(d(Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[15]))).build();
                bufferedReader.close();
                return eVarBuild;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            logger.j("Unable to read 'proc/[pid]/stat' file: " + e.getMessage());
            return null;
        } catch (ArrayIndexOutOfBoundsException e2) {
            e = e2;
            logger.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NullPointerException e6) {
            e = e6;
            logger.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        } catch (NumberFormatException e7) {
            e = e7;
            logger.j("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage());
            return null;
        }
    }

    private long e() {
        return Os.sysconf(OsConstants._SC_CLK_TCK);
    }

    public void k(long j6, Timer timer) {
        long j10 = this.clockTicksPerSecond;
        if (j10 == -1 || j10 == 0 || f(j6)) {
            return;
        }
        if (this.cpuMetricCollectorJob == null) {
            j(j6, timer);
        } else if (this.cpuMetricCollectionRateMs != j6) {
            l();
            j(j6, timer);
        }
    }

    public void l() {
        ScheduledFuture scheduledFuture = this.cpuMetricCollectorJob;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(false);
        this.cpuMetricCollectorJob = null;
        this.cpuMetricCollectionRateMs = -1L;
    }

    @SuppressLint({"ThreadPoolCreation"})
    c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Timer timer) {
        com.google.firebase.perf.v1.e eVarM = m(timer);
        if (eVarM != null) {
            this.cpuMetricReadings.add(eVarM);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(Timer timer) {
        com.google.firebase.perf.v1.e eVarM = m(timer);
        if (eVarM != null) {
            this.cpuMetricReadings.add(eVarM);
        }
    }

    public void c(Timer timer) {
        i(timer);
    }
}

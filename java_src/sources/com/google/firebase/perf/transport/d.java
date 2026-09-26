package com.google.firebase.perf.transport;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.util.n;
import com.google.firebase.perf.v1.l;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
final class d {
    private final com.google.firebase.perf.config.a configResolver;
    private final double fragmentBucketId;
    private boolean isLogcatEnabled;
    private a networkLimiter;
    private final double samplingBucketId;
    private a traceLimiter;

    static class a {
        private long backgroundCapacity;
        private com.google.firebase.perf.util.i backgroundRate;
        private long capacity;
        private final com.google.firebase.perf.util.a clock;
        private long foregroundCapacity;
        private com.google.firebase.perf.util.i foregroundRate;
        private final boolean isLogcatEnabled;
        private Timer lastTimeTokenReplenished;
        private com.google.firebase.perf.util.i rate;
        private double tokenCount;
        private static final y4.a logger = y4.a.e();
        private static final long MICROS_IN_A_SECOND = TimeUnit.SECONDS.toMicros(1);

        synchronized void a(boolean z6) {
            try {
                this.rate = z6 ? this.foregroundRate : this.backgroundRate;
                this.capacity = z6 ? this.foregroundCapacity : this.backgroundCapacity;
            } catch (Throwable th) {
                throw th;
            }
        }

        synchronized boolean b(@NonNull com.google.firebase.perf.v1.i iVar) {
            try {
                Timer timerA = this.clock.a();
                double dH = (this.lastTimeTokenReplenished.h(timerA) * this.rate.a()) / MICROS_IN_A_SECOND;
                if (dH > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                    this.tokenCount = Math.min(this.tokenCount + dH, this.capacity);
                    this.lastTimeTokenReplenished = timerA;
                }
                double d = this.tokenCount;
                if (d >= 1.0d) {
                    this.tokenCount = d - 1.0d;
                    return true;
                }
                if (this.isLogcatEnabled) {
                    logger.j("Exceeded log rate limit, dropping the log.");
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }

        private static long c(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.E() : aVar.q();
        }

        private static long d(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private static long e(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.F() : aVar.r();
        }

        private static long f(com.google.firebase.perf.config.a aVar, String str) {
            return str == "Trace" ? aVar.t() : aVar.t();
        }

        private void g(com.google.firebase.perf.config.a aVar, String str, boolean z6) {
            long jF = f(aVar, str);
            long jE = e(aVar, str);
            TimeUnit timeUnit = TimeUnit.SECONDS;
            com.google.firebase.perf.util.i iVar = new com.google.firebase.perf.util.i(jE, jF, timeUnit);
            this.foregroundRate = iVar;
            this.foregroundCapacity = jE;
            if (z6) {
                logger.b("Foreground %s logging rate:%f, burst capacity:%d", str, iVar, Long.valueOf(jE));
            }
            long jD = d(aVar, str);
            long jC = c(aVar, str);
            com.google.firebase.perf.util.i iVar2 = new com.google.firebase.perf.util.i(jC, jD, timeUnit);
            this.backgroundRate = iVar2;
            this.backgroundCapacity = jC;
            if (z6) {
                logger.b("Background %s logging rate:%f, capacity:%d", str, iVar2, Long.valueOf(jC));
            }
        }

        a(com.google.firebase.perf.util.i iVar, long j6, com.google.firebase.perf.util.a aVar, com.google.firebase.perf.config.a aVar2, String str, boolean z6) {
            this.clock = aVar;
            this.capacity = j6;
            this.rate = iVar;
            this.tokenCount = j6;
            this.lastTimeTokenReplenished = aVar.a();
            g(aVar2, str, z6);
            this.isLogcatEnabled = z6;
        }
    }

    public d(@NonNull Context context, com.google.firebase.perf.util.i iVar, long j6) {
        this(iVar, j6, new com.google.firebase.perf.util.a(), b(), b(), com.google.firebase.perf.config.a.g());
        this.isLogcatEnabled = n.b(context);
    }

    @VisibleForTesting
    static double b() {
        return new Random().nextDouble();
    }

    private boolean d() {
        return this.fragmentBucketId < this.configResolver.f();
    }

    private boolean e() {
        return this.samplingBucketId < this.configResolver.s();
    }

    private boolean f() {
        return this.samplingBucketId < this.configResolver.G();
    }

    void a(boolean z6) {
        this.traceLimiter.a(z6);
        this.networkLimiter.a(z6);
    }

    private boolean c(List<com.google.firebase.perf.v1.k> list) {
        if (list.size() <= 0 || list.get(0).m() <= 0 || list.get(0).l(0) != l.GAUGES_AND_SYSTEM_EVENTS) {
            return false;
        }
        return true;
    }

    boolean g(com.google.firebase.perf.v1.i iVar) {
        if (!j(iVar)) {
            return false;
        }
        if (iVar.f()) {
            return !this.networkLimiter.b(iVar);
        }
        if (!iVar.g()) {
            return true;
        }
        return !this.traceLimiter.b(iVar);
    }

    boolean h(com.google.firebase.perf.v1.i iVar) {
        if (iVar.g() && !f() && !c(iVar.i().E())) {
            return false;
        }
        if (i(iVar) && !d() && !c(iVar.i().E())) {
            return false;
        }
        if (iVar.f() && !e() && !c(iVar.b().B())) {
            return false;
        }
        return true;
    }

    protected boolean i(com.google.firebase.perf.v1.i iVar) {
        if (iVar.g() && iVar.i().getName().startsWith("_st_") && iVar.i().u("Hosting_activity")) {
            return true;
        }
        return false;
    }

    boolean j(@NonNull com.google.firebase.perf.v1.i iVar) {
        if ((iVar.g() && ((iVar.i().getName().equals(com.google.firebase.perf.util.c.FOREGROUND_TRACE_NAME.toString()) || iVar.i().getName().equals(com.google.firebase.perf.util.c.BACKGROUND_TRACE_NAME.toString())) && iVar.i().x() > 0)) || iVar.e()) {
            return false;
        }
        return true;
    }

    d(com.google.firebase.perf.util.i iVar, long j6, com.google.firebase.perf.util.a aVar, double d, double d2, com.google.firebase.perf.config.a aVar2) {
        this.traceLimiter = null;
        this.networkLimiter = null;
        boolean z6 = false;
        this.isLogcatEnabled = false;
        n.a(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE <= d && d < 1.0d, "Sampling bucket ID should be in range [0.0, 1.0).");
        if (com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE <= d2 && d2 < 1.0d) {
            z6 = true;
        }
        n.a(z6, "Fragment sampling bucket ID should be in range [0.0, 1.0).");
        this.samplingBucketId = d;
        this.fragmentBucketId = d2;
        this.configResolver = aVar2;
        this.traceLimiter = new a(iVar, j6, aVar, aVar2, "Trace", this.isLogcatEnabled);
        this.networkLimiter = new a(iVar, j6, aVar, aVar2, "Network", this.isLogcatEnabled);
    }
}

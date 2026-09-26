package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
@AutoValue
public abstract class f {
    private static final long BACKOFF_LOG_BASE = 10000;
    private static final long ONE_SECOND = 1000;
    private static final long THIRTY_SECONDS = 30000;
    private static final long TWENTY_FOUR_HOURS = 86400000;

    public static class a {
        private m2.a clock;
        private Map<f2.d, b> values = new HashMap();

        public a c(m2.a aVar) {
            this.clock = aVar;
            return this;
        }

        public a a(f2.d dVar, b bVar) {
            this.values.put(dVar, bVar);
            return this;
        }

        public f b() {
            if (this.clock == null) {
                throw new NullPointerException("missing required property: clock");
            }
            if (this.values.keySet().size() < f2.d.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map<f2.d, b> map = this.values;
            this.values = new HashMap();
            return f.d(this.clock, map);
        }
    }

    @AutoValue
    public static abstract class b {

        @AutoValue.Builder
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j6);

            public abstract a c(Set<c> set);

            public abstract a d(long j6);
        }

        abstract long b();

        abstract Set<c> c();

        abstract long d();

        public static a a() {
            return new com.google.android.datatransport.runtime.scheduling.jobscheduling.c.b().c(Collections.emptySet());
        }
    }

    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    abstract m2.a e();

    abstract Map<f2.d, b> h();

    private long a(int i10, long j6) {
        int i11 = i10 - 1;
        return (long) (Math.pow(3.0d, i11) * j6 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j6 > 1 ? j6 : 2L) * ((long) i11))));
    }

    public static a b() {
        return new a();
    }

    static f d(m2.a aVar, Map<f2.d, b> map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.b(aVar, map);
    }

    private static <T> Set<T> i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    @RequiresApi
    private void j(JobInfo.Builder builder, Set<c> set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public static f f(m2.a aVar) {
        return b().a(f2.d.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(f2.d.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(f2.d.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(c.DEVICE_IDLE)).a()).c(aVar).b();
    }

    @RequiresApi
    public JobInfo.Builder c(JobInfo.Builder builder, f2.d dVar, long j6, int i10) {
        builder.setMinimumLatency(g(dVar, j6, i10));
        j(builder, h().get(dVar).c());
        return builder;
    }

    public long g(f2.d dVar, long j6, int i10) {
        long jA = j6 - e().a();
        b bVar = h().get(dVar);
        return Math.min(Math.max(a(i10, bVar.b()), jA), bVar.d());
    }
}

package androidx.work;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresApi;
import androidx.work.impl.utils.DurationApi26Impl;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PeriodicWorkRequest extends WorkRequest {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @SuppressLint({"MinMaxConstant"})
    public static final long MIN_PERIODIC_FLEX_MILLIS = 300000;

    @SuppressLint({"MinMaxConstant"})
    public static final long MIN_PERIODIC_INTERVAL_MILLIS = 900000;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class Builder extends WorkRequest.Builder<Builder, PeriodicWorkRequest> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull Class<? extends ListenableWorker> workerClass, long j6, @NotNull TimeUnit repeatIntervalTimeUnit) {
            super(workerClass);
            t.j(workerClass, "workerClass");
            t.j(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            h().l(repeatIntervalTimeUnit.toMillis(j6));
        }

        @Override // androidx.work.WorkRequest.Builder
        @NotNull
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public Builder g() {
            return this;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @RequiresApi
        public Builder(@NotNull Class<? extends ListenableWorker> workerClass, @NotNull Duration repeatInterval) {
            super(workerClass);
            t.j(workerClass, "workerClass");
            t.j(repeatInterval, "repeatInterval");
            h().l(DurationApi26Impl.a(repeatInterval));
        }

        @Override // androidx.work.WorkRequest.Builder
        @NotNull
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public PeriodicWorkRequest c() {
            if (d() && h().constraints.h()) {
                throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job".toString());
            }
            if (!h().expedited) {
                return new PeriodicWorkRequest(this);
            }
            throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited".toString());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(@NotNull Class<? extends ListenableWorker> workerClass, long j6, @NotNull TimeUnit repeatIntervalTimeUnit, long j10, @NotNull TimeUnit flexIntervalTimeUnit) {
            super(workerClass);
            t.j(workerClass, "workerClass");
            t.j(repeatIntervalTimeUnit, "repeatIntervalTimeUnit");
            t.j(flexIntervalTimeUnit, "flexIntervalTimeUnit");
            h().m(repeatIntervalTimeUnit.toMillis(j6), flexIntervalTimeUnit.toMillis(j10));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @RequiresApi
        public Builder(@NotNull Class<? extends ListenableWorker> workerClass, @NotNull Duration repeatInterval, @NotNull Duration flexInterval) {
            super(workerClass);
            t.j(workerClass, "workerClass");
            t.j(repeatInterval, "repeatInterval");
            t.j(flexInterval, "flexInterval");
            h().m(DurationApi26Impl.a(repeatInterval), DurationApi26Impl.a(flexInterval));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeriodicWorkRequest(@NotNull Builder builder) {
        super(builder.e(), builder.h(), builder.f());
        t.j(builder, "builder");
    }
}

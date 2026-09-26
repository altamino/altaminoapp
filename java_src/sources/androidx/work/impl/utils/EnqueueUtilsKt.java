package androidx.work.impl.utils;

import android.os.Build;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class EnqueueUtilsKt {
    @NotNull
    public static final WorkSpec a(@NotNull WorkSpec workSpec) throws Throwable {
        t.j(workSpec, "workSpec");
        Constraints constraints = workSpec.constraints;
        String str = workSpec.workerClassName;
        if (t.e(str, ConstraintTrackingWorker.class.getName())) {
            return workSpec;
        }
        if (!constraints.f() && !constraints.i()) {
            return workSpec;
        }
        Data dataA = new Data.Builder().c(workSpec.input).e(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME, str).a();
        t.i(dataA, "Builder().putAll(workSpe…ame)\n            .build()");
        String name = ConstraintTrackingWorker.class.getName();
        t.i(name, "name");
        return workSpec.d((1048555 & 1) != 0 ? workSpec.id : null, (1048555 & 2) != 0 ? workSpec.state : null, (1048555 & 4) != 0 ? workSpec.workerClassName : name, (1048555 & 8) != 0 ? workSpec.inputMergerClassName : null, (1048555 & 16) != 0 ? workSpec.input : dataA, (1048555 & 32) != 0 ? workSpec.output : null, (1048555 & 64) != 0 ? workSpec.initialDelay : 0L, (1048555 & 128) != 0 ? workSpec.intervalDuration : 0L, (1048555 & 256) != 0 ? workSpec.flexDuration : 0L, (1048555 & 512) != 0 ? workSpec.constraints : null, (1048555 & 1024) != 0 ? workSpec.runAttemptCount : 0, (1048555 & 2048) != 0 ? workSpec.backoffPolicy : null, (1048555 & 4096) != 0 ? workSpec.backoffDelayDuration : 0L, (1048555 & 8192) != 0 ? workSpec.lastEnqueueTime : 0L, (1048555 & 16384) != 0 ? workSpec.minimumRetentionDuration : 0L, (1048555 & 32768) != 0 ? workSpec.scheduleRequestedAt : 0L, (1048555 & 65536) != 0 ? workSpec.expedited : false, (131072 & 1048555) != 0 ? workSpec.outOfQuotaPolicy : null, (1048555 & 262144) != 0 ? workSpec.periodCount : 0, (1048555 & 524288) != 0 ? workSpec.generation : 0);
    }

    @NotNull
    public static final WorkSpec b(@NotNull List<? extends Scheduler> schedulers, @NotNull WorkSpec workSpec) {
        t.j(schedulers, "schedulers");
        t.j(workSpec, "workSpec");
        if (Build.VERSION.SDK_INT < 26) {
            return a(workSpec);
        }
        return workSpec;
    }
}

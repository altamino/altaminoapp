package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public final class Trackers {

    @NotNull
    private final ConstraintTracker<Boolean> batteryChargingTracker;

    @NotNull
    private final BatteryNotLowTracker batteryNotLowTracker;

    @NotNull
    private final ConstraintTracker<NetworkState> networkStateTracker;

    @NotNull
    private final ConstraintTracker<Boolean> storageNotLowTracker;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        this(context, taskExecutor, null, null, null, null, 60, null);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
    }

    @NotNull
    public final ConstraintTracker<Boolean> a() {
        return this.batteryChargingTracker;
    }

    @NotNull
    public final BatteryNotLowTracker b() {
        return this.batteryNotLowTracker;
    }

    @NotNull
    public final ConstraintTracker<NetworkState> c() {
        return this.networkStateTracker;
    }

    @NotNull
    public final ConstraintTracker<Boolean> d() {
        return this.storageNotLowTracker;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> batteryChargingTracker) {
        this(context, taskExecutor, batteryChargingTracker, null, null, null, 56, null);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        t.j(batteryChargingTracker, "batteryChargingTracker");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> batteryChargingTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker) {
        this(context, taskExecutor, batteryChargingTracker, batteryNotLowTracker, null, null, 48, null);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        t.j(batteryChargingTracker, "batteryChargingTracker");
        t.j(batteryNotLowTracker, "batteryNotLowTracker");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> batteryChargingTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker, @NotNull ConstraintTracker<NetworkState> networkStateTracker) {
        this(context, taskExecutor, batteryChargingTracker, batteryNotLowTracker, networkStateTracker, null, 32, null);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        t.j(batteryChargingTracker, "batteryChargingTracker");
        t.j(batteryNotLowTracker, "batteryNotLowTracker");
        t.j(networkStateTracker, "networkStateTracker");
    }

    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> batteryChargingTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker, @NotNull ConstraintTracker<NetworkState> networkStateTracker, @NotNull ConstraintTracker<Boolean> storageNotLowTracker) {
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        t.j(batteryChargingTracker, "batteryChargingTracker");
        t.j(batteryNotLowTracker, "batteryNotLowTracker");
        t.j(networkStateTracker, "networkStateTracker");
        t.j(storageNotLowTracker, "storageNotLowTracker");
        this.batteryChargingTracker = batteryChargingTracker;
        this.batteryNotLowTracker = batteryNotLowTracker;
        this.networkStateTracker = networkStateTracker;
        this.storageNotLowTracker = storageNotLowTracker;
    }

    public /* synthetic */ Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker constraintTracker, BatteryNotLowTracker batteryNotLowTracker, ConstraintTracker constraintTracker2, ConstraintTracker constraintTracker3, int i10, k kVar) {
        ConstraintTracker batteryChargingTracker;
        BatteryNotLowTracker batteryNotLowTracker2;
        ConstraintTracker constraintTrackerA;
        ConstraintTracker storageNotLowTracker;
        if ((i10 & 4) != 0) {
            Context applicationContext = context.getApplicationContext();
            t.i(applicationContext, "context.applicationContext");
            batteryChargingTracker = new BatteryChargingTracker(applicationContext, taskExecutor);
        } else {
            batteryChargingTracker = constraintTracker;
        }
        if ((i10 & 8) != 0) {
            Context applicationContext2 = context.getApplicationContext();
            t.i(applicationContext2, "context.applicationContext");
            batteryNotLowTracker2 = new BatteryNotLowTracker(applicationContext2, taskExecutor);
        } else {
            batteryNotLowTracker2 = batteryNotLowTracker;
        }
        if ((i10 & 16) != 0) {
            Context applicationContext3 = context.getApplicationContext();
            t.i(applicationContext3, "context.applicationContext");
            constraintTrackerA = NetworkStateTrackerKt.a(applicationContext3, taskExecutor);
        } else {
            constraintTrackerA = constraintTracker2;
        }
        if ((i10 & 32) != 0) {
            Context applicationContext4 = context.getApplicationContext();
            t.i(applicationContext4, "context.applicationContext");
            storageNotLowTracker = new StorageNotLowTracker(applicationContext4, taskExecutor);
        } else {
            storageNotLowTracker = constraintTracker3;
        }
        this(context, taskExecutor, batteryChargingTracker, batteryNotLowTracker2, constraintTrackerA, storageNotLowTracker);
    }
}

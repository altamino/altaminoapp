package androidx.work.impl.constraints;

import androidx.annotation.VisibleForTesting;
import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkConnectedController;
import androidx.work.impl.constraints.controllers.NetworkMeteredController;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingController;
import androidx.work.impl.constraints.controllers.NetworkUnmeteredController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class WorkConstraintsTrackerImpl implements WorkConstraintsTracker, ConstraintController.OnConstraintUpdatedCallback {

    @Nullable
    private final WorkConstraintsCallback callback;

    @NotNull
    private final ConstraintController<?>[] constraintControllers;

    @NotNull
    private final Object lock;

    @VisibleForTesting
    public WorkConstraintsTrackerImpl(@Nullable WorkConstraintsCallback workConstraintsCallback, @NotNull ConstraintController<?>[] constraintControllers) {
        t.j(constraintControllers, "constraintControllers");
        this.callback = workConstraintsCallback;
        this.constraintControllers = constraintControllers;
        this.lock = new Object();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsTracker
    public void reset() {
        synchronized (this.lock) {
            try {
                for (ConstraintController<?> constraintController : this.constraintControllers) {
                    constraintController.f();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTrackerImpl(@NotNull Trackers trackers, @Nullable WorkConstraintsCallback workConstraintsCallback) {
        this(workConstraintsCallback, (ConstraintController<?>[]) new ConstraintController[]{new BatteryChargingController(trackers.a()), new BatteryNotLowController(trackers.b()), new StorageNotLowController(trackers.d()), new NetworkConnectedController(trackers.c()), new NetworkUnmeteredController(trackers.c()), new NetworkNotRoamingController(trackers.c()), new NetworkMeteredController(trackers.c())});
        t.j(trackers, "trackers");
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsTracker
    public void a(@NotNull Iterable<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
        synchronized (this.lock) {
            try {
                for (ConstraintController<?> constraintController : this.constraintControllers) {
                    constraintController.g(null);
                }
                for (ConstraintController<?> constraintController2 : this.constraintControllers) {
                    constraintController2.e(workSpecs);
                }
                for (ConstraintController<?> constraintController3 : this.constraintControllers) {
                    constraintController3.g(this);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void b(@NotNull List<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
        synchronized (this.lock) {
            try {
                ArrayList<WorkSpec> arrayList = new ArrayList();
                for (Object obj : workSpecs) {
                    if (d(((WorkSpec) obj).id)) {
                        arrayList.add(obj);
                    }
                }
                for (WorkSpec workSpec : arrayList) {
                    Logger.e().a(WorkConstraintsTrackerKt.TAG, "Constraints met for " + workSpec);
                }
                WorkConstraintsCallback workConstraintsCallback = this.callback;
                if (workConstraintsCallback != null) {
                    workConstraintsCallback.f(arrayList);
                    l0 l0Var = l0.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController.OnConstraintUpdatedCallback
    public void c(@NotNull List<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
        synchronized (this.lock) {
            WorkConstraintsCallback workConstraintsCallback = this.callback;
            if (workConstraintsCallback != null) {
                workConstraintsCallback.a(workSpecs);
                l0 l0Var = l0.INSTANCE;
            }
        }
    }

    public final boolean d(@NotNull String workSpecId) {
        boolean z6;
        ConstraintController<?> constraintController;
        t.j(workSpecId, "workSpecId");
        synchronized (this.lock) {
            try {
                ConstraintController<?>[] constraintControllerArr = this.constraintControllers;
                int length = constraintControllerArr.length;
                z6 = false;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        constraintController = constraintControllerArr[i10];
                        if (constraintController.d(workSpecId)) {
                            break;
                        }
                        i10++;
                    } else {
                        constraintController = null;
                        break;
                    }
                }
                if (constraintController != null) {
                    Logger.e().a(WorkConstraintsTrackerKt.TAG, "Work " + workSpecId + " constrained by " + constraintController.getClass().getSimpleName());
                }
                if (constraintController == null) {
                    z6 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }
}

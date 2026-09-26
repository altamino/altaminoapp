package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class BatteryNotLowController extends ConstraintController<Boolean> {
    public boolean i(boolean z6) {
        return !z6;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public /* bridge */ /* synthetic */ boolean c(Boolean bool) {
        return i(bool.booleanValue());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryNotLowController(@NotNull BatteryNotLowTracker tracker) {
        super(tracker);
        t.j(tracker, "tracker");
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean b(@NotNull WorkSpec workSpec) {
        t.j(workSpec, "workSpec");
        return workSpec.constraints.f();
    }
}

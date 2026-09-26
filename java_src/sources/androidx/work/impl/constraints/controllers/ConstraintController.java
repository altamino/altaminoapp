package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ConstraintController<T> implements ConstraintListener<T> {

    @Nullable
    private OnConstraintUpdatedCallback callback;

    @Nullable
    private T currentValue;

    @NotNull
    private final List<String> matchingWorkSpecIds;

    @NotNull
    private final List<WorkSpec> matchingWorkSpecs;

    @NotNull
    private final ConstraintTracker<T> tracker;

    public interface OnConstraintUpdatedCallback {
        void b(@NotNull List<WorkSpec> list);

        void c(@NotNull List<WorkSpec> list);
    }

    public abstract boolean b(@NotNull WorkSpec workSpec);

    public abstract boolean c(T t5);

    private final void h(OnConstraintUpdatedCallback onConstraintUpdatedCallback, T t5) {
        if (this.matchingWorkSpecs.isEmpty() || onConstraintUpdatedCallback == null) {
            return;
        }
        if (t5 == null || c(t5)) {
            onConstraintUpdatedCallback.c(this.matchingWorkSpecs);
        } else {
            onConstraintUpdatedCallback.b(this.matchingWorkSpecs);
        }
    }

    @Override // androidx.work.impl.constraints.ConstraintListener
    public void a(T t5) {
        this.currentValue = t5;
        h(this.callback, t5);
    }

    public final void f() {
        if (!this.matchingWorkSpecs.isEmpty()) {
            this.matchingWorkSpecs.clear();
            this.tracker.f(this);
        }
    }

    public final void g(@Nullable OnConstraintUpdatedCallback onConstraintUpdatedCallback) {
        if (this.callback != onConstraintUpdatedCallback) {
            this.callback = onConstraintUpdatedCallback;
            h(onConstraintUpdatedCallback, this.currentValue);
        }
    }

    public ConstraintController(@NotNull ConstraintTracker<T> tracker) {
        t.j(tracker, "tracker");
        this.tracker = tracker;
        this.matchingWorkSpecs = new ArrayList();
        this.matchingWorkSpecIds = new ArrayList();
    }

    public final boolean d(@NotNull String workSpecId) {
        t.j(workSpecId, "workSpecId");
        T t5 = this.currentValue;
        if (t5 != null && c(t5) && this.matchingWorkSpecIds.contains(workSpecId)) {
            return true;
        }
        return false;
    }

    public final void e(@NotNull Iterable<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
        this.matchingWorkSpecs.clear();
        this.matchingWorkSpecIds.clear();
        List<WorkSpec> list = this.matchingWorkSpecs;
        for (WorkSpec workSpec : workSpecs) {
            if (b(workSpec)) {
                list.add(workSpec);
            }
        }
        List<WorkSpec> list2 = this.matchingWorkSpecs;
        List<String> list3 = this.matchingWorkSpecIds;
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            list3.add(((WorkSpec) it.next()).id);
        }
        if (this.matchingWorkSpecs.isEmpty()) {
            this.tracker.f(this);
        } else {
            this.tracker.c(this);
        }
        h(this.callback, this.currentValue);
    }
}

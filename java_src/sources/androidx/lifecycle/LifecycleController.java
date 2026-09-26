package androidx.lifecycle;

import androidx.annotation.MainThread;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@MainThread
public final class LifecycleController {

    @NotNull
    private final DispatchQueue dispatchQueue;

    @NotNull
    private final Lifecycle lifecycle;

    @NotNull
    private final Lifecycle.State minState;

    @NotNull
    private final LifecycleEventObserver observer;

    public LifecycleController(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State minState, @NotNull DispatchQueue dispatchQueue, @NotNull final b2 parentJob) {
        t.j(lifecycle, "lifecycle");
        t.j(minState, "minState");
        t.j(dispatchQueue, "dispatchQueue");
        t.j(parentJob, "parentJob");
        this.lifecycle = lifecycle;
        this.minState = minState;
        this.dispatchQueue = dispatchQueue;
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.f
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                LifecycleController.c(this.f218a, parentJob, lifecycleOwner, event);
            }
        };
        this.observer = lifecycleEventObserver;
        if (lifecycle.b() != Lifecycle.State.DESTROYED) {
            lifecycle.a(lifecycleEventObserver);
        } else {
            b2.a.a(parentJob, null, 1, null);
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(LifecycleController this$0, b2 parentJob, LifecycleOwner source, Lifecycle.Event event) {
        t.j(this$0, "this$0");
        t.j(parentJob, "$parentJob");
        t.j(source, "source");
        t.j(event, "<anonymous parameter 1>");
        if (source.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            b2.a.a(parentJob, null, 1, null);
            this$0.b();
        } else if (source.getLifecycle().b().compareTo(this$0.minState) < 0) {
            this$0.dispatchQueue.h();
        } else {
            this$0.dispatchQueue.i();
        }
    }

    @MainThread
    public final void b() {
        this.lifecycle.d(this.observer);
        this.dispatchQueue.g();
    }
}

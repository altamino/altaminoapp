package androidx.lifecycle;

import android.os.Handler;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class ServiceLifecycleDispatcher {

    @NotNull
    private final Handler handler;

    @Nullable
    private DispatchRunnable lastDispatchRunnable;

    @NotNull
    private final LifecycleRegistry registry;

    public static final class DispatchRunnable implements Runnable {

        @NotNull
        private final Lifecycle.Event event;

        @NotNull
        private final LifecycleRegistry registry;
        private boolean wasExecuted;

        public DispatchRunnable(@NotNull LifecycleRegistry registry, @NotNull Lifecycle.Event event) {
            t.j(registry, "registry");
            t.j(event, "event");
            this.registry = registry;
            this.event = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.wasExecuted) {
                return;
            }
            this.registry.i(this.event);
            this.wasExecuted = true;
        }
    }

    @NotNull
    public Lifecycle a() {
        return this.registry;
    }

    public ServiceLifecycleDispatcher(@NotNull LifecycleOwner provider) {
        t.j(provider, "provider");
        this.registry = new LifecycleRegistry(provider);
        this.handler = new Handler();
    }

    private final void f(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.lastDispatchRunnable;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.registry, event);
        this.lastDispatchRunnable = dispatchRunnable2;
        Handler handler = this.handler;
        t.g(dispatchRunnable2);
        handler.postAtFrontOfQueue(dispatchRunnable2);
    }

    public void b() {
        f(Lifecycle.Event.ON_START);
    }

    public void c() {
        f(Lifecycle.Event.ON_CREATE);
    }

    public void d() {
        f(Lifecycle.Event.ON_STOP);
        f(Lifecycle.Event.ON_DESTROY);
    }

    public void e() {
        f(Lifecycle.Event.ON_START);
    }
}

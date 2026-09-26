package coil.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends Lifecycle {

    @NotNull
    public static final g INSTANCE = new g();

    @NotNull
    private static final LifecycleOwner owner = new LifecycleOwner() { // from class: coil.request.f
        @Override // androidx.lifecycle.LifecycleOwner
        public final Lifecycle getLifecycle() {
            return g.f();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Lifecycle f() {
        return INSTANCE;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void d(@NotNull LifecycleObserver lifecycleObserver) {
    }

    @NotNull
    public String toString() {
        return "coil.request.GlobalLifecycle";
    }

    @Override // androidx.lifecycle.Lifecycle
    public void a(@NotNull LifecycleObserver lifecycleObserver) {
        if (!(lifecycleObserver instanceof DefaultLifecycleObserver)) {
            throw new IllegalArgumentException((lifecycleObserver + " must implement androidx.lifecycle.DefaultLifecycleObserver.").toString());
        }
        DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) lifecycleObserver;
        LifecycleOwner lifecycleOwner = owner;
        defaultLifecycleObserver.onCreate(lifecycleOwner);
        defaultLifecycleObserver.onStart(lifecycleOwner);
        defaultLifecycleObserver.onResume(lifecycleOwner);
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public Lifecycle.State b() {
        return Lifecycle.State.RESUMED;
    }

    private g() {
    }
}

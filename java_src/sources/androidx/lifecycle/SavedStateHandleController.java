package androidx.lifecycle;

import androidx.savedstate.SavedStateRegistry;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SavedStateHandleController implements LifecycleEventObserver {

    @NotNull
    private final SavedStateHandle handle;
    private boolean isAttached;

    @NotNull
    private final String key;

    @NotNull
    public final SavedStateHandle b() {
        return this.handle;
    }

    public final boolean c() {
        return this.isAttached;
    }

    public SavedStateHandleController(@NotNull String key, @NotNull SavedStateHandle handle) {
        t.j(key, "key");
        t.j(handle, "handle");
        this.key = key;
        this.handle = handle;
    }

    public final void a(@NotNull SavedStateRegistry registry, @NotNull Lifecycle lifecycle) {
        t.j(registry, "registry");
        t.j(lifecycle, "lifecycle");
        if (!(!this.isAttached)) {
            throw new IllegalStateException("Already attached to lifecycleOwner".toString());
        }
        this.isAttached = true;
        lifecycle.a(this);
        registry.h(this.key, this.handle.e());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        t.j(source, "source");
        t.j(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.isAttached = false;
            source.getLifecycle().d(this);
        }
    }
}

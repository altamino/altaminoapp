package androidx.lifecycle;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class SavedStateHandleAttacher implements LifecycleEventObserver {

    @NotNull
    private final SavedStateHandlesProvider provider;

    public SavedStateHandleAttacher(@NotNull SavedStateHandlesProvider provider) {
        t.j(provider, "provider");
        this.provider = provider;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        t.j(source, "source");
        t.j(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().d(this);
            this.provider.d();
        } else {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + event).toString());
        }
    }
}

package androidx.lifecycle;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public interface LifecycleEventObserver extends LifecycleObserver {
    void onStateChanged(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event);
}

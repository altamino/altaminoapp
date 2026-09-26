package androidx.lifecycle;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @NotNull
    private final Lifecycle lifecycle;

    @Override // androidx.lifecycle.LifecycleCoroutineScope
    @NotNull
    public Lifecycle a() {
        return this.lifecycle;
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return this.coroutineContext;
    }

    public LifecycleCoroutineScopeImpl(@NotNull Lifecycle lifecycle, @NotNull kotlin.coroutines.g coroutineContext) {
        t.j(lifecycle, "lifecycle");
        t.j(coroutineContext, "coroutineContext");
        this.lifecycle = lifecycle;
        this.coroutineContext = coroutineContext;
        if (a().b() == Lifecycle.State.DESTROYED) {
            h2.e(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        t.j(source, "source");
        t.j(event, "event");
        if (a().b().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            a().d(this);
            h2.e(getCoroutineContext(), null, 1, null);
        }
    }

    public final void c() {
        k.d(this, e1.c().getImmediate(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }
}

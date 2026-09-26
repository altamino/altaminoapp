package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class SavedStateRegistryController {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean attached;

    @NotNull
    private final SavedStateRegistryOwner owner;

    @NotNull
    private final SavedStateRegistry savedStateRegistry;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final SavedStateRegistryController a(@NotNull SavedStateRegistryOwner owner) {
            t.j(owner, "owner");
            return new SavedStateRegistryController(owner, null);
        }
    }

    public /* synthetic */ SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner, k kVar) {
        this(savedStateRegistryOwner);
    }

    @NotNull
    public static final SavedStateRegistryController a(@NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
        return Companion.a(savedStateRegistryOwner);
    }

    @NotNull
    public final SavedStateRegistry b() {
        return this.savedStateRegistry;
    }

    private SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.owner = savedStateRegistryOwner;
        this.savedStateRegistry = new SavedStateRegistry();
    }

    @MainThread
    public final void c() {
        Lifecycle lifecycle = this.owner.getLifecycle();
        if (lifecycle.b() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage".toString());
        }
        lifecycle.a(new Recreator(this.owner));
        this.savedStateRegistry.e(lifecycle);
        this.attached = true;
    }

    @MainThread
    public final void d(@Nullable Bundle bundle) {
        if (!this.attached) {
            c();
        }
        Lifecycle lifecycle = this.owner.getLifecycle();
        if (!lifecycle.b().b(Lifecycle.State.STARTED)) {
            this.savedStateRegistry.f(bundle);
            return;
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + lifecycle.b()).toString());
    }

    @MainThread
    public final void e(@NotNull Bundle outBundle) {
        t.j(outBundle, "outBundle");
        this.savedStateRegistry.g(outBundle);
    }
}

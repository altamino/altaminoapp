package androidx.lifecycle.testing;

import android.annotation.SuppressLint;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TestLifecycleOwner implements LifecycleOwner {

    @NotNull
    private final k0 coroutineDispatcher;

    @SuppressLint({"VisibleForTests"})
    @NotNull
    private final LifecycleRegistry lifecycleRegistry;

    /* JADX WARN: Multi-variable type inference failed */
    public TestLifecycleOwner() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public LifecycleRegistry getLifecycle() {
        return this.lifecycleRegistry;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TestLifecycleOwner(@NotNull Lifecycle.State initialState) {
        this(initialState, null, 2, 0 == true ? 1 : 0);
        t.j(initialState, "initialState");
    }

    public TestLifecycleOwner(@NotNull Lifecycle.State initialState, @NotNull k0 coroutineDispatcher) {
        t.j(initialState, "initialState");
        t.j(coroutineDispatcher, "coroutineDispatcher");
        this.coroutineDispatcher = coroutineDispatcher;
        LifecycleRegistry lifecycleRegistryA = LifecycleRegistry.Companion.a(this);
        lifecycleRegistryA.o(initialState);
        this.lifecycleRegistry = lifecycleRegistryA;
    }

    public /* synthetic */ TestLifecycleOwner(Lifecycle.State state, k0 k0Var, int i10, k kVar) {
        this((i10 & 1) != 0 ? Lifecycle.State.STARTED : state, (i10 & 2) != 0 ? e1.c().getImmediate() : k0Var);
    }
}

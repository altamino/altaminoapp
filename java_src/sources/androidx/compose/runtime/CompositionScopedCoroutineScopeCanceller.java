package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CompositionScopedCoroutineScopeCanceller implements RememberObserver {

    @NotNull
    private final o0 coroutineScope;

    @NotNull
    public final o0 a() {
        return this.coroutineScope;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
    }

    public CompositionScopedCoroutineScopeCanceller(@NotNull o0 coroutineScope) {
        t.j(coroutineScope, "coroutineScope");
        this.coroutineScope = coroutineScope;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        p0.e(this.coroutineScope, null, 1, null);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        p0.e(this.coroutineScope, null, 1, null);
    }
}

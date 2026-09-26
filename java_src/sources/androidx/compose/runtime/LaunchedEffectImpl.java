package androidx.compose.runtime;

import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class LaunchedEffectImpl implements RememberObserver {

    @Nullable
    private b2 job;

    @NotNull
    private final o0 scope;

    @NotNull
    private final p<o0, d<? super l0>, Object> task;

    /* JADX WARN: Multi-variable type inference failed */
    public LaunchedEffectImpl(@NotNull g parentCoroutineContext, @NotNull p<? super o0, ? super d<? super l0>, ? extends Object> task) {
        t.j(parentCoroutineContext, "parentCoroutineContext");
        t.j(task, "task");
        this.task = task;
        this.scope = p0.a(parentCoroutineContext);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        b2 b2Var = this.job;
        if (b2Var != null) {
            h2.f(b2Var, "Old job was still running!", null, 2, null);
        }
        this.job = k.d(this.scope, null, null, this.task, 3, null);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        b2 b2Var = this.job;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        b2 b2Var = this.job;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.job = null;
    }
}

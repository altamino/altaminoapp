package androidx.lifecycle;

import androidx.annotation.MainThread;
import e8.p;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockRunner<T> {

    @NotNull
    private final p<LiveDataScope<T>, kotlin.coroutines.d<? super l0>, Object> block;

    @Nullable
    private b2 cancellationJob;

    @NotNull
    private final CoroutineLiveData<T> liveData;

    @NotNull
    private final e8.a<l0> onDone;

    @Nullable
    private b2 runningJob;

    @NotNull
    private final o0 scope;
    private final long timeoutInMs;

    /* JADX WARN: Multi-variable type inference failed */
    public BlockRunner(@NotNull CoroutineLiveData<T> liveData, @NotNull p<? super LiveDataScope<T>, ? super kotlin.coroutines.d<? super l0>, ? extends Object> block, long j6, @NotNull o0 scope, @NotNull e8.a<l0> onDone) {
        t.j(liveData, "liveData");
        t.j(block, "block");
        t.j(scope, "scope");
        t.j(onDone, "onDone");
        this.liveData = liveData;
        this.block = block;
        this.timeoutInMs = j6;
        this.scope = scope;
        this.onDone = onDone;
    }

    @MainThread
    public final void g() {
        if (this.cancellationJob != null) {
            throw new IllegalStateException("Cancel call cannot happen without a maybeRun".toString());
        }
        this.cancellationJob = k.d(this.scope, e1.c().getImmediate(), null, new BlockRunner$cancel$1(this, null), 2, null);
    }

    @MainThread
    public final void h() {
        b2 b2Var = this.cancellationJob;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.cancellationJob = null;
        if (this.runningJob != null) {
            return;
        }
        this.runningJob = k.d(this.scope, null, null, new BlockRunner$maybeRun$1(this, null), 3, null);
    }
}

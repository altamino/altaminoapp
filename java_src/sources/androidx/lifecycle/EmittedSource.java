package androidx.lifecycle;

import androidx.annotation.MainThread;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class EmittedSource implements g1 {
    private boolean disposed;

    @NotNull
    private final MediatorLiveData<?> mediator;

    @NotNull
    private final LiveData<?> source;

    public EmittedSource(@NotNull LiveData<?> source, @NotNull MediatorLiveData<?> mediator) {
        t.j(source, "source");
        t.j(mediator, "mediator");
        this.source = source;
        this.mediator = mediator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public final void d() {
        if (this.disposed) {
            return;
        }
        this.mediator.r(this.source);
        this.disposed = true;
    }

    @Nullable
    public final Object c(@NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objG = kotlinx.coroutines.i.g(e1.c().getImmediate(), new EmittedSource$disposeNow$2(this, null), dVar);
        if (objG == kotlin.coroutines.intrinsics.d.e()) {
            return objG;
        }
        return l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.g1
    public void t() {
        k.d(p0.a(e1.c().getImmediate()), null, null, new EmittedSource$dispose$1(this, null), 3, null);
    }
}

package io.ktor.utils.io.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class d {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closeWaitJob$FU = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_closeWaitJob");

    @NotNull
    private volatile /* synthetic */ Object _closeWaitJob;

    @NotNull
    private volatile /* synthetic */ int closed;
    private final boolean delegateClose;

    @NotNull
    private final io.ktor.utils.io.a delegatedTo;

    public final void a() {
        this.closed = 1;
        b2 b2Var = (b2) _closeWaitJob$FU.getAndSet(this, null);
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
    }

    public final boolean b() {
        return this.delegateClose;
    }

    @NotNull
    public final io.ktor.utils.io.a c() {
        return this.delegatedTo;
    }

    public d(@NotNull io.ktor.utils.io.a delegatedTo, boolean z6) {
        t.j(delegatedTo, "delegatedTo");
        this.delegatedTo = delegatedTo;
        this.delegateClose = z6;
        this._closeWaitJob = null;
        this.closed = 0;
    }
}

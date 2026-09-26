package io.ktor.client.engine;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.n0;
import org.jetbrains.annotations.NotNull;
import w7.o;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c implements b {
    private static final /* synthetic */ AtomicIntegerFieldUpdater closed$FU = AtomicIntegerFieldUpdater.newUpdater(c.class, "closed");

    @NotNull
    private volatile /* synthetic */ int closed;

    @NotNull
    private final w7.m coroutineContext$delegate;

    @NotNull
    private final k0 dispatcher;

    @NotNull
    private final String engineName;

    static final class a extends v implements e8.a<kotlin.coroutines.g> {
        a() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final kotlin.coroutines.g invoke() {
            return io.ktor.util.m.b(null, 1, null).plus(c.this.h()).plus(new n0(c.this.engineName + "-context"));
        }
    }

    @NotNull
    public k0 h() {
        return this.dispatcher;
    }

    public c(@NotNull String engineName) {
        t.j(engineName, "engineName");
        this.engineName = engineName;
        this.closed = 0;
        this.dispatcher = d.a();
        this.coroutineContext$delegate = o.a(new a());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (closed$FU.compareAndSet(this, 0, 1)) {
            kotlin.coroutines.g.b bVar = getCoroutineContext().get(b2.Key);
            a0 a0Var = bVar instanceof a0 ? (a0) bVar : null;
            if (a0Var == null) {
                return;
            }
            a0Var.complete();
        }
    }

    @Override // kotlinx.coroutines.o0
    @NotNull
    public kotlin.coroutines.g getCoroutineContext() {
        return (kotlin.coroutines.g) this.coroutineContext$delegate.getValue();
    }

    @Override // io.ktor.client.engine.b
    @NotNull
    public Set<e<?>> G() {
        return b.a.g(this);
    }

    @Override // io.ktor.client.engine.b
    public void T(@NotNull io.ktor.client.a aVar) {
        b.a.h(this, aVar);
    }
}

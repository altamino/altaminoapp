package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.internal.q;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends f {

    @NotNull
    public static final c INSTANCE = new c();

    @Override // kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        return "Dispatchers.Default";
    }

    private c() {
        super(l.CORE_POOL_SIZE, l.MAX_POOL_SIZE, l.IDLE_WORKER_KEEP_ALIVE_NS, l.DEFAULT_SCHEDULER_NAME);
    }

    @Override // kotlinx.coroutines.scheduling.f, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public k0 limitedParallelism(int i10) {
        q.a(i10);
        if (i10 >= l.CORE_POOL_SIZE) {
            return this;
        }
        return super.limitedParallelism(i10);
    }
}

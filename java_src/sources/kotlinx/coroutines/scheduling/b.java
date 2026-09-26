package kotlinx.coroutines.scheduling;

import j8.o;
import java.util.concurrent.Executor;
import kotlinx.coroutines.internal.j0;
import kotlinx.coroutines.internal.l0;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.q1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends q1 implements Executor {

    @NotNull
    public static final b INSTANCE = new b();

    /* JADX INFO: renamed from: default, reason: not valid java name */
    @NotNull
    private static final k0 f22default = m.INSTANCE.limitedParallelism(l0.e("kotlinx.coroutines.io.parallelism", o.e(64, j0.a()), 0, 0, 12, null));

    @Override // kotlinx.coroutines.q1
    @NotNull
    public Executor L() {
        return this;
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        return "Dispatchers.IO";
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        f22default.dispatch(gVar, runnable);
    }

    @Override // kotlinx.coroutines.k0
    public void dispatchYield(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        f22default.dispatchYield(gVar, runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        dispatch(kotlin.coroutines.h.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public k0 limitedParallelism(int i10) {
        return m.INSTANCE.limitedParallelism(i10);
    }

    private b() {
    }
}

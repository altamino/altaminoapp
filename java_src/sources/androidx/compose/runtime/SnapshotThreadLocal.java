package androidx.compose.runtime;

import androidx.compose.runtime.internal.ThreadMap;
import androidx.compose.runtime.internal.ThreadMapKt;
import java.util.concurrent.atomic.AtomicReference;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class SnapshotThreadLocal<T> {

    @NotNull
    private final AtomicReference<ThreadMap> map = new AtomicReference<>(ThreadMapKt.a());

    @NotNull
    private final Object writeMutex = new Object();

    @Nullable
    public final T a() {
        return (T) this.map.get().b(Thread.currentThread().getId());
    }

    public final void b(@Nullable T t5) {
        long id = Thread.currentThread().getId();
        synchronized (this.writeMutex) {
            ThreadMap threadMap = this.map.get();
            if (threadMap.d(id, t5)) {
                return;
            }
            this.map.set(threadMap.c(id, t5));
            l0 l0Var = l0.INSTANCE;
        }
    }
}

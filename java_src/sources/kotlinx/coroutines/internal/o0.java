package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class o0 implements kotlin.coroutines.g.c<n0<?>> {

    @NotNull
    private final ThreadLocal<?> threadLocal;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o0) && kotlin.jvm.internal.t.e(this.threadLocal, ((o0) obj).threadLocal);
    }

    public int hashCode() {
        return this.threadLocal.hashCode();
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.threadLocal + ')';
    }

    public o0(@NotNull ThreadLocal<?> threadLocal) {
        this.threadLocal = threadLocal;
    }
}

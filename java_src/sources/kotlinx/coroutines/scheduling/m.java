package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.internal.q;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class m extends k0 {

    @NotNull
    public static final m INSTANCE = new m();

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        c.INSTANCE.F0(runnable, l.BlockingContext, false);
    }

    @Override // kotlinx.coroutines.k0
    public void dispatchYield(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        c.INSTANCE.F0(runnable, l.BlockingContext, true);
    }

    private m() {
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public k0 limitedParallelism(int i10) {
        q.a(i10);
        if (i10 >= l.MAX_POOL_SIZE) {
            return this;
        }
        return super.limitedParallelism(i10);
    }
}

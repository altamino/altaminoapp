package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class z1 extends d2 {

    @NotNull
    private static final AtomicIntegerFieldUpdater _invoked$FU = AtomicIntegerFieldUpdater.newUpdater(z1.class, "_invoked");
    private volatile int _invoked;

    @NotNull
    private final e8.l<Throwable, w7.l0> handler;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        if (_invoked$FU.compareAndSet(this, 0, 1)) {
            this.handler.invoke(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z1(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        this.handler = lVar;
    }
}

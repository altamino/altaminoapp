package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class y1 extends m {

    @NotNull
    private final e8.l<Throwable, w7.l0> handler;

    @Override // kotlinx.coroutines.n
    public void d(@Nullable Throwable th) {
        this.handler.invoke(th);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        d(th);
        return w7.l0.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "InvokeOnCancel[" + s0.a(this.handler) + '@' + s0.b(this) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public y1(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        this.handler = lVar;
    }
}

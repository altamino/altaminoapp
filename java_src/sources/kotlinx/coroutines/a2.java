package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class a2 extends i2 {

    @NotNull
    private final e8.l<Throwable, w7.l0> handler;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        this.handler.invoke(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a2(@NotNull e8.l<? super Throwable, w7.l0> lVar) {
        this.handler = lVar;
    }
}

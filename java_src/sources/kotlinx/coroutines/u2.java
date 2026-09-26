package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class u2 extends i2 {

    @NotNull
    private final kotlin.coroutines.d<w7.l0> continuation;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        kotlin.coroutines.d<w7.l0> dVar = this.continuation;
        w7.v.a aVar = w7.v.Companion;
        dVar.resumeWith(w7.v.b(w7.l0.INSTANCE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u2(@NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        this.continuation = dVar;
    }
}

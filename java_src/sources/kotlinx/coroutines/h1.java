package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class h1 extends m {

    @NotNull
    private final g1 handle;

    @Override // kotlinx.coroutines.n
    public void d(@Nullable Throwable th) {
        this.handle.t();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        d(th);
        return w7.l0.INSTANCE;
    }

    @NotNull
    public String toString() {
        return "DisposeOnCancel[" + this.handle + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public h1(@NotNull g1 g1Var) {
        this.handle = g1Var;
    }
}

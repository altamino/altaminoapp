package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class t extends d2 {

    @NotNull
    public final p<?> child;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        p<?> pVar = this.child;
        pVar.F(pVar.s(s()));
    }

    public t(@NotNull p<?> pVar) {
        this.child = pVar;
    }
}

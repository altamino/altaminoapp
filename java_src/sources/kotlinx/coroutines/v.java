package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class v extends d2 implements u {

    @NotNull
    public final w childJob;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        this.childJob.j(s());
    }

    public v(@NotNull w wVar) {
        this.childJob = wVar;
    }

    @Override // kotlinx.coroutines.u
    public boolean b(@NotNull Throwable th) {
        return s().W(th);
    }

    @Override // kotlinx.coroutines.u
    @NotNull
    public b2 getParent() {
        return s();
    }
}

package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class t2<T> extends i2 {

    @NotNull
    private final p<T> continuation;

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Throwable th) {
        r(th);
        return w7.l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public t2(@NotNull p<? super T> pVar) {
        this.continuation = pVar;
    }

    @Override // kotlinx.coroutines.e0
    public void r(@Nullable Throwable th) {
        Object objN0 = s().n0();
        if (objN0 instanceof c0) {
            p<T> pVar = this.continuation;
            w7.v.a aVar = w7.v.Companion;
            pVar.resumeWith(w7.v.b(w7.w.a(((c0) objN0).cause)));
        } else {
            p<T> pVar2 = this.continuation;
            w7.v.a aVar2 = w7.v.Companion;
            pVar2.resumeWith(w7.v.b(k2.h(objN0)));
        }
    }
}

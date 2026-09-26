package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
class w0<T> extends a<T> implements v0<T> {
    public w0(@NotNull kotlin.coroutines.g gVar, boolean z6) {
        super(gVar, true, z6);
    }

    @Override // kotlinx.coroutines.v0
    @Nullable
    public Object i(@NotNull kotlin.coroutines.d<? super T> dVar) {
        return a1(this, dVar);
    }

    static /* synthetic */ <T> Object a1(w0<T> w0Var, kotlin.coroutines.d<? super T> dVar) throws Throwable {
        Object objD = w0Var.D(dVar);
        kotlin.coroutines.intrinsics.d.e();
        return objD;
    }

    @Override // kotlinx.coroutines.v0
    public T h() {
        return (T) e0();
    }
}

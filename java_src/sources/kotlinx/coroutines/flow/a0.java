package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class a0<T> extends a<T> {

    @NotNull
    private final e8.p<h<? super T>, kotlin.coroutines.d<? super w7.l0>, Object> block;

    @Override // kotlinx.coroutines.flow.a
    @Nullable
    public Object f(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
        Object objInvoke = this.block.invoke(hVar, dVar);
        return objInvoke == kotlin.coroutines.intrinsics.d.e() ? objInvoke : w7.l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a0(@NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        this.block = pVar;
    }
}

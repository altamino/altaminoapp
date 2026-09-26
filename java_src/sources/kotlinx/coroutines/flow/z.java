package kotlinx.coroutines.flow;

import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class z<T> implements l0<T>, c<T>, kotlinx.coroutines.flow.internal.p<T> {
    private final /* synthetic */ l0<T> $$delegate_0;

    @Nullable
    private final b2 job;

    @Override // kotlinx.coroutines.flow.b0, kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<?> dVar) {
        return this.$$delegate_0.collect(hVar, dVar);
    }

    @Override // kotlinx.coroutines.flow.l0
    public T getValue() {
        return this.$$delegate_0.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z(@NotNull l0<? extends T> l0Var, @Nullable b2 b2Var) {
        this.job = b2Var;
        this.$$delegate_0 = l0Var;
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @NotNull
    public g<T> e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return n0.d(this, gVar, i10, aVar);
    }
}

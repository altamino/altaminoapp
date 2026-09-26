package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.f0;
import kotlinx.coroutines.j3;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class s<E> implements j3 {

    @NotNull
    public final kotlinx.coroutines.p<h<? extends E>> cont;

    @Override // kotlinx.coroutines.j3
    public void a(@NotNull f0<?> f0Var, int i10) {
        this.cont.a(f0Var, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s(@NotNull kotlinx.coroutines.p<? super h<? extends E>> pVar) {
        this.cont = pVar;
    }
}

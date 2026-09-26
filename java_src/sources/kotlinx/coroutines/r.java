package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class r {
    public static final void a(@NotNull o<?> oVar, @NotNull g1 g1Var) {
        oVar.S(new h1(g1Var));
    }

    @NotNull
    public static final <T> p<T> b(@NotNull kotlin.coroutines.d<? super T> dVar) {
        if (!(dVar instanceof kotlinx.coroutines.internal.j)) {
            return new p<>(dVar, 1);
        }
        p<T> pVarJ = ((kotlinx.coroutines.internal.j) dVar).j();
        if (pVarJ != null) {
            if (!pVarJ.H()) {
                pVarJ = null;
            }
            if (pVarJ != null) {
                return pVarJ;
            }
        }
        return new p<>(dVar, 2);
    }
}

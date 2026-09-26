package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class n0 {

    @NotNull
    private static final kotlinx.coroutines.internal.i0 NONE = new kotlinx.coroutines.internal.i0("NONE");

    @NotNull
    private static final kotlinx.coroutines.internal.i0 PENDING = new kotlinx.coroutines.internal.i0("PENDING");

    @NotNull
    public static final <T> x<T> a(T t5) {
        if (t5 == null) {
            t5 = (T) kotlinx.coroutines.flow.internal.s.NULL;
        }
        return new m0(t5);
    }

    @NotNull
    public static final <T> g<T> d(@NotNull l0<? extends T> l0Var, @NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        return (((i10 < 0 || i10 >= 2) && i10 != -2) || aVar != kotlinx.coroutines.channels.a.DROP_OLDEST) ? d0.e(l0Var, gVar, i10, aVar) : l0Var;
    }
}

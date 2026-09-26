package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class z {
    @NotNull
    public static final <T> x<T> a(@Nullable b2 b2Var) {
        return new y(b2Var);
    }

    public static /* synthetic */ x b(b2 b2Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            b2Var = null;
        }
        return a(b2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean c(@NotNull x<T> xVar, @NotNull Object obj) {
        Throwable thE = w7.v.e(obj);
        if (thE == null) {
            return xVar.o(obj);
        }
        return xVar.a(thE);
    }
}

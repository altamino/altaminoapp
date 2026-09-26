package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface z2<S> extends kotlin.coroutines.g.b {
    S E0(@NotNull kotlin.coroutines.g gVar);

    void n(@NotNull kotlin.coroutines.g gVar, S s);

    public static final class a {
        public static <S, R> R a(@NotNull z2<S> z2Var, R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
            return (R) kotlin.coroutines.g.b.a.a(z2Var, r, pVar);
        }

        @NotNull
        public static <S> kotlin.coroutines.g b(@NotNull z2<S> z2Var, @NotNull kotlin.coroutines.g gVar) {
            return kotlin.coroutines.g.b.a.d(z2Var, gVar);
        }
    }
}

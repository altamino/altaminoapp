package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface l0 extends kotlin.coroutines.g.b {

    @NotNull
    public static final b Key = b.$$INSTANCE;

    void handleException(@NotNull kotlin.coroutines.g gVar, @NotNull Throwable th);

    public static final class a {
        public static <R> R a(@NotNull l0 l0Var, R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
            return (R) kotlin.coroutines.g.b.a.a(l0Var, r, pVar);
        }

        @Nullable
        public static <E extends kotlin.coroutines.g.b> E b(@NotNull l0 l0Var, @NotNull kotlin.coroutines.g.c<E> cVar) {
            return (E) kotlin.coroutines.g.b.a.b(l0Var, cVar);
        }

        @NotNull
        public static kotlin.coroutines.g c(@NotNull l0 l0Var, @NotNull kotlin.coroutines.g.c<?> cVar) {
            return kotlin.coroutines.g.b.a.c(l0Var, cVar);
        }

        @NotNull
        public static kotlin.coroutines.g d(@NotNull l0 l0Var, @NotNull kotlin.coroutines.g gVar) {
            return kotlin.coroutines.g.b.a.d(l0Var, gVar);
        }
    }

    public static final class b implements kotlin.coroutines.g.c<l0> {
        static final /* synthetic */ b $$INSTANCE = new b();

        private b() {
        }
    }
}

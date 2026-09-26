package androidx.compose.runtime;

import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface MonotonicFrameClock extends g.b {

    @NotNull
    public static final Key Key = Key.$$INSTANCE;

    public static final class DefaultImpls {
        public static <R> R a(@NotNull MonotonicFrameClock monotonicFrameClock, R r, @NotNull p<? super R, ? super g.b, ? extends R> operation) {
            t.j(operation, "operation");
            return (R) g.b.a.a(monotonicFrameClock, r, operation);
        }

        @Nullable
        public static <E extends g.b> E b(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull g.c<E> key) {
            t.j(key, "key");
            return (E) g.b.a.b(monotonicFrameClock, key);
        }

        @NotNull
        public static g c(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull g.c<?> key) {
            t.j(key, "key");
            return g.b.a.c(monotonicFrameClock, key);
        }

        @NotNull
        public static g d(@NotNull MonotonicFrameClock monotonicFrameClock, @NotNull g context) {
            t.j(context, "context");
            return g.b.a.d(monotonicFrameClock, context);
        }
    }

    @Nullable
    <R> Object k(@NotNull l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar);

    public static final class Key implements g.c<MonotonicFrameClock> {
        static final /* synthetic */ Key $$INSTANCE = new Key();

        private Key() {
        }
    }
}

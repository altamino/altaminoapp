package kotlin.coroutines;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface e extends g.b {

    @NotNull
    public static final b Key = b.$$INSTANCE;

    public static final class a {
        @Nullable
        public static <E extends g.b> E a(@NotNull e eVar, @NotNull g.c<E> key) {
            t.j(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                if (e.Key != key) {
                    return null;
                }
                t.h(eVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return eVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            if (!bVar.a(eVar.getKey())) {
                return null;
            }
            E e = (E) bVar.b(eVar);
            if (e instanceof g.b) {
                return e;
            }
            return null;
        }

        @NotNull
        public static g b(@NotNull e eVar, @NotNull g.c<?> key) {
            t.j(key, "key");
            if (!(key instanceof kotlin.coroutines.b)) {
                return e.Key == key ? h.INSTANCE : eVar;
            }
            kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
            return (!bVar.a(eVar.getKey()) || bVar.b(eVar) == null) ? eVar : h.INSTANCE;
        }
    }

    @NotNull
    <T> d<T> interceptContinuation(@NotNull d<? super T> dVar);

    void releaseInterceptedContinuation(@NotNull d<?> dVar);

    public static final class b implements g.c<e> {
        static final /* synthetic */ b $$INSTANCE = new b();

        private b() {
        }
    }
}

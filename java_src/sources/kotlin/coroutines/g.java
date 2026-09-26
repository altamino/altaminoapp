package kotlin.coroutines;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public interface g {

    public static final class a {

        /* JADX INFO: renamed from: kotlin.coroutines.g$a$a, reason: collision with other inner class name */
        static final class C0428a extends v implements p<g, b, g> {
            public static final C0428a INSTANCE = new C0428a();

            C0428a() {
                super(2);
            }

            @Override // e8.p
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final g invoke(@NotNull g acc, @NotNull b element) {
                kotlin.coroutines.c cVar;
                t.j(acc, "acc");
                t.j(element, "element");
                g gVarMinusKey = acc.minusKey(element.getKey());
                h hVar = h.INSTANCE;
                if (gVarMinusKey == hVar) {
                    return element;
                }
                e.b bVar = e.Key;
                e eVar = (e) gVarMinusKey.get(bVar);
                if (eVar == null) {
                    cVar = new kotlin.coroutines.c(gVarMinusKey, element);
                } else {
                    g gVarMinusKey2 = gVarMinusKey.minusKey(bVar);
                    if (gVarMinusKey2 == hVar) {
                        return new kotlin.coroutines.c(element, eVar);
                    }
                    cVar = new kotlin.coroutines.c(new kotlin.coroutines.c(gVarMinusKey2, element), eVar);
                }
                return cVar;
            }
        }

        @NotNull
        public static g a(@NotNull g gVar, @NotNull g context) {
            t.j(context, "context");
            return context == h.INSTANCE ? gVar : (g) context.fold(gVar, C0428a.INSTANCE);
        }
    }

    public interface b extends g {

        public static final class a {
            public static <R> R a(@NotNull b bVar, R r, @NotNull p<? super R, ? super b, ? extends R> operation) {
                t.j(operation, "operation");
                return operation.invoke(r, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Nullable
            public static <E extends b> E b(@NotNull b bVar, @NotNull c<E> key) {
                t.j(key, "key");
                if (!t.e(bVar.getKey(), key)) {
                    return null;
                }
                t.h(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            @NotNull
            public static g c(@NotNull b bVar, @NotNull c<?> key) {
                t.j(key, "key");
                return t.e(bVar.getKey(), key) ? h.INSTANCE : bVar;
            }

            @NotNull
            public static g d(@NotNull b bVar, @NotNull g context) {
                t.j(context, "context");
                return a.a(bVar, context);
            }
        }

        @Override // kotlin.coroutines.g
        <R> R fold(R r, @NotNull p<? super R, ? super b, ? extends R> pVar);

        @Override // kotlin.coroutines.g
        @Nullable
        <E extends b> E get(@NotNull c<E> cVar);

        @NotNull
        c<?> getKey();

        @Override // kotlin.coroutines.g
        @NotNull
        g minusKey(@NotNull c<?> cVar);
    }

    public interface c<E extends b> {
    }

    <R> R fold(R r, @NotNull p<? super R, ? super b, ? extends R> pVar);

    @Nullable
    <E extends b> E get(@NotNull c<E> cVar);

    @NotNull
    g minusKey(@NotNull c<?> cVar);

    @NotNull
    g plus(@NotNull g gVar);
}

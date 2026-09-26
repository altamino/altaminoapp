package kotlin.collections;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class s0 extends r0 {
    @NotNull
    public static <K, V> Map<K, V> A(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return new LinkedHashMap(map);
    }

    @NotNull
    public static <K, V> Map<K, V> h() {
        g0 g0Var = g0.INSTANCE;
        kotlin.jvm.internal.t.h(g0Var, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return g0Var;
    }

    public static <K, V> V i(@NotNull Map<K, ? extends V> map, K k) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return (V) q0.a(map, k);
    }

    @NotNull
    public static <K, V> HashMap<K, V> j(@NotNull w7.u<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.t.j(pairs, "pairs");
        HashMap<K, V> map = new HashMap<>(r0.e(pairs.length));
        t(map, pairs);
        return map;
    }

    @NotNull
    public static <K, V> LinkedHashMap<K, V> k(@NotNull w7.u<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.t.j(pairs, "pairs");
        return (LinkedHashMap) z(pairs, new LinkedHashMap(r0.e(pairs.length)));
    }

    @NotNull
    public static <K, V> Map<K, V> l(@NotNull w7.u<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.t.j(pairs, "pairs");
        return pairs.length > 0 ? z(pairs, new LinkedHashMap(r0.e(pairs.length))) : h();
    }

    @NotNull
    public static <K, V> Map<K, V> m(@NotNull Map<? extends K, ? extends V> map, K k) {
        kotlin.jvm.internal.t.j(map, "<this>");
        Map mapA = A(map);
        mapA.remove(k);
        return o(mapA);
    }

    @NotNull
    public static <K, V> Map<K, V> n(@NotNull w7.u<? extends K, ? extends V>... pairs) {
        kotlin.jvm.internal.t.j(pairs, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(r0.e(pairs.length));
        t(linkedHashMap, pairs);
        return linkedHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <K, V> Map<K, V> o(@NotNull Map<K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : r0.g(map);
        }
        return h();
    }

    @NotNull
    public static <K, V> Map<K, V> p(@NotNull Map<? extends K, ? extends V> map, @NotNull Map<? extends K, ? extends V> map2) {
        kotlin.jvm.internal.t.j(map, "<this>");
        kotlin.jvm.internal.t.j(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    @NotNull
    public static <K, V> Map<K, V> q(@NotNull Map<? extends K, ? extends V> map, @NotNull w7.u<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.t.j(map, "<this>");
        kotlin.jvm.internal.t.j(pair, "pair");
        if (map.isEmpty()) {
            return r0.f(pair);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.put(pair.c(), pair.d());
        return linkedHashMap;
    }

    public static final <K, V> void r(@NotNull Map<? super K, ? super V> map, @NotNull Iterable<? extends w7.u<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.t.j(map, "<this>");
        kotlin.jvm.internal.t.j(pairs, "pairs");
        for (w7.u<? extends K, ? extends V> uVar : pairs) {
            map.put(uVar.a(), uVar.b());
        }
    }

    public static final <K, V> void s(@NotNull Map<? super K, ? super V> map, @NotNull kotlin.sequences.g<? extends w7.u<? extends K, ? extends V>> pairs) {
        kotlin.jvm.internal.t.j(map, "<this>");
        kotlin.jvm.internal.t.j(pairs, "pairs");
        for (w7.u<? extends K, ? extends V> uVar : pairs) {
            map.put(uVar.a(), uVar.b());
        }
    }

    public static final <K, V> void t(@NotNull Map<? super K, ? super V> map, @NotNull w7.u<? extends K, ? extends V>[] pairs) {
        kotlin.jvm.internal.t.j(map, "<this>");
        kotlin.jvm.internal.t.j(pairs, "pairs");
        for (w7.u<? extends K, ? extends V> uVar : pairs) {
            map.put(uVar.a(), uVar.b());
        }
    }

    @NotNull
    public static <K, V> Map<K, V> u(@NotNull Iterable<? extends w7.u<? extends K, ? extends V>> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return o(v(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return h();
        }
        if (size != 1) {
            return v(iterable, new LinkedHashMap(r0.e(collection.size())));
        }
        return r0.f(iterable instanceof List ? (w7.u<? extends K, ? extends V>) ((List) iterable).get(0) : iterable.iterator().next());
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M v(@NotNull Iterable<? extends w7.u<? extends K, ? extends V>> iterable, @NotNull M destination) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        r(destination, iterable);
        return destination;
    }

    @NotNull
    public static <K, V> Map<K, V> w(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? A(map) : r0.g(map);
        }
        return h();
    }

    @NotNull
    public static <K, V> Map<K, V> x(@NotNull kotlin.sequences.g<? extends w7.u<? extends K, ? extends V>> gVar) {
        kotlin.jvm.internal.t.j(gVar, "<this>");
        return o(y(gVar, new LinkedHashMap()));
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M y(@NotNull kotlin.sequences.g<? extends w7.u<? extends K, ? extends V>> gVar, @NotNull M destination) {
        kotlin.jvm.internal.t.j(gVar, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        s(destination, gVar);
        return destination;
    }

    @NotNull
    public static final <K, V, M extends Map<? super K, ? super V>> M z(@NotNull w7.u<? extends K, ? extends V>[] uVarArr, @NotNull M destination) {
        kotlin.jvm.internal.t.j(uVarArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        t(destination, uVarArr);
        return destination;
    }
}

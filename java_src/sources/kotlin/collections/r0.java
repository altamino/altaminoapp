package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes8.dex */
public class r0 extends q0 {
    private static final int INT_MAX_POWER_OF_TWO = 1073741824;

    public static int e(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    @NotNull
    public static <K, V> Map<K, V> b(@NotNull Map<K, V> builder) {
        kotlin.jvm.internal.t.j(builder, "builder");
        return ((x7.d) builder).p();
    }

    @NotNull
    public static <K, V> Map<K, V> c() {
        return new x7.d();
    }

    @NotNull
    public static <K, V> Map<K, V> d(int i10) {
        return new x7.d(i10);
    }

    @NotNull
    public static <K, V> Map<K, V> f(@NotNull w7.u<? extends K, ? extends V> pair) {
        kotlin.jvm.internal.t.j(pair, "pair");
        Map<K, V> mapSingletonMap = Collections.singletonMap(pair.c(), pair.d());
        kotlin.jvm.internal.t.i(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    @NotNull
    public static final <K, V> Map<K, V> g(@NotNull Map<? extends K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        kotlin.jvm.internal.t.i(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }
}

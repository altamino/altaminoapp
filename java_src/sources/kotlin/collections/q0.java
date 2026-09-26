package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
class q0 {
    public static <K, V> V a(@NotNull Map<K, ? extends V> map, K k) {
        kotlin.jvm.internal.t.j(map, "<this>");
        if (map instanceof o0) {
            return (V) ((o0) map).d(k);
        }
        V v5 = map.get(k);
        if (v5 != null || map.containsKey(k)) {
            return v5;
        }
        throw new NoSuchElementException("Key " + k + " is missing in the map.");
    }
}

package kotlin.collections;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maps.kt */
/* loaded from: classes4.dex */
public class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    private static final int INT_MAX_POWER_OF_TWO = 1073741824;

    public static <K, V> LinkedHashMap<K, V> linkedMapOf(Pair<? extends K, ? extends V>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        LinkedHashMap<K, V> linkedHashMap = new LinkedHashMap<>(mapCapacity(pairs.length));
        toMap(pairs, linkedHashMap);
        return linkedHashMap;
    }

    public static final int mapCapacity(int i) {
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return i + (i / 3);
        }
        return Integer.MAX_VALUE;
    }

    public static final <K, V> void putAll(Map<? super K, ? super V> putAll, Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkParameterIsNotNull(putAll, "$this$putAll");
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            putAll.put(pair.component1(), pair.component2());
        }
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(Pair<? extends K, ? extends V>[] toMap, M destination) {
        Intrinsics.checkParameterIsNotNull(toMap, "$this$toMap");
        Intrinsics.checkParameterIsNotNull(destination, "destination");
        putAll(destination, toMap);
        return destination;
    }
}

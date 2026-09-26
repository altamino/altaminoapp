package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.a0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class RecomposerKt {
    private static final int RecomposerCompoundHashKey = 1000;

    @NotNull
    private static final Object ProduceAnotherFrame = new Object();

    @NotNull
    private static final Object FramePending = new Object();

    public static final <K, V> boolean c(@NotNull Map<K, List<V>> map, K k, V v5) {
        t.j(map, "<this>");
        List<V> arrayList = map.get(k);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(k, arrayList);
        }
        return arrayList.add(v5);
    }

    @Nullable
    public static final <K, V> V d(@NotNull Map<K, List<V>> map, K k) {
        t.j(map, "<this>");
        List<V> list = map.get(k);
        if (list == null) {
            return null;
        }
        V v5 = (V) a0.K(list);
        if (!list.isEmpty()) {
            return v5;
        }
        map.remove(k);
        return v5;
    }
}

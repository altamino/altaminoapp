package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry;
import f8.e;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements e.a {

    @NotNull
    private LinkedValue<V> links;

    @NotNull
    private final Map<K, LinkedValue<V>> mutableMap;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableMapEntry(@NotNull Map<K, LinkedValue<V>> mutableMap, K k, @NotNull LinkedValue<V> links) {
        super(k, links.e());
        t.j(mutableMap, "mutableMap");
        t.j(links, "links");
        this.mutableMap = mutableMap;
        this.links = links;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V getValue() {
        return this.links.e();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V setValue(V v5) {
        V vE = this.links.e();
        this.links = this.links.h(v5);
        this.mutableMap.put(getKey(), this.links);
        return vE;
    }
}

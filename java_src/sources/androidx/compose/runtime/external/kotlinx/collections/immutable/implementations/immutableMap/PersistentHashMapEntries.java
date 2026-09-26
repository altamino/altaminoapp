package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.i;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class PersistentHashMapEntries<K, V> extends i<Map.Entry<? extends K, ? extends V>> implements ImmutableSet<Map.Entry<? extends K, ? extends V>> {

    @NotNull
    private final PersistentHashMap<K, V> map;

    public PersistentHashMapEntries(@NotNull PersistentHashMap<K, V> map) {
        t.j(map, "map");
        this.map = map;
    }

    public boolean a(@NotNull Map.Entry<? extends K, ? extends V> element) {
        t.j(element, "element");
        V v5 = this.map.get(element.getKey());
        if (v5 != null) {
            return t.e(v5, element.getValue());
        }
        return element.getValue() == null && this.map.containsKey(element.getKey());
    }

    @Override // kotlin.collections.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return a((Map.Entry) obj);
        }
        return false;
    }

    @Override // kotlin.collections.a
    public int getSize() {
        return this.map.size();
    }

    @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new PersistentHashMapEntriesIterator(this.map.s());
    }
}

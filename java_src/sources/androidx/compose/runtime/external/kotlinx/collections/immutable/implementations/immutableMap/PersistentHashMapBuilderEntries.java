package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentHashMapBuilderEntries<K, V> extends AbstractMapBuilderEntries<Map.Entry<K, V>, K, V> {

    @NotNull
    private final PersistentHashMapBuilder<K, V> builder;

    public PersistentHashMapBuilderEntries(@NotNull PersistentHashMapBuilder<K, V> builder) {
        t.j(builder, "builder");
        this.builder = builder;
    }

    @Override // kotlin.collections.h
    public int c() {
        return this.builder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.builder.clear();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.AbstractMapBuilderEntries
    public boolean f(@NotNull Map.Entry<? extends K, ? extends V> element) {
        t.j(element, "element");
        V v5 = this.builder.get(element.getKey());
        if (v5 != null) {
            return t.e(v5, element.getValue());
        }
        return element.getValue() == null && this.builder.containsKey(element.getKey());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new PersistentHashMapBuilderEntriesIterator(this.builder);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.AbstractMapBuilderEntries
    public boolean j(@NotNull Map.Entry<? extends K, ? extends V> element) {
        t.j(element, "element");
        return this.builder.remove(element.getKey(), element.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public boolean add(@NotNull Map.Entry<K, V> element) {
        t.j(element, "element");
        throw new UnsupportedOperationException();
    }
}

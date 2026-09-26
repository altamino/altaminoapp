package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import java.util.Iterator;
import kotlin.collections.e;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PersistentOrderedMapBuilderValues<K, V> extends e<V> {

    @NotNull
    private final PersistentOrderedMapBuilder<K, V> builder;

    public PersistentOrderedMapBuilderValues(@NotNull PersistentOrderedMapBuilder<K, V> builder) {
        t.j(builder, "builder");
        this.builder = builder;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(V v5) {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.e
    public int c() {
        return this.builder.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.builder.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.builder.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return new PersistentOrderedMapBuilderValuesIterator(this.builder);
    }
}

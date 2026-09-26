package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import f8.a;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentOrderedMapBuilderValuesIterator<K, V> implements Iterator<V>, a {

    @NotNull
    private final PersistentOrderedMapBuilderLinksIterator<K, V> internal;

    public PersistentOrderedMapBuilderValuesIterator(@NotNull PersistentOrderedMapBuilder<K, V> map) {
        t.j(map, "map");
        this.internal = new PersistentOrderedMapBuilderLinksIterator<>(map.h(), map);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.internal.hasNext();
    }

    @Override // java.util.Iterator
    public V next() {
        return this.internal.next().e();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.internal.remove();
    }
}

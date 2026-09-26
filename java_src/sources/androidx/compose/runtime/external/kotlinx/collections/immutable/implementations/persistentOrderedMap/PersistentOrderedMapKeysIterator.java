package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import f8.a;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentOrderedMapKeysIterator<K, V> implements Iterator<K>, a {

    @NotNull
    private final PersistentOrderedMapLinksIterator<K, V> internal;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public PersistentOrderedMapKeysIterator(@NotNull PersistentOrderedMap<K, V> map) {
        t.j(map, "map");
        this.internal = new PersistentOrderedMapLinksIterator<>(map.p(), map.q());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.internal.hasNext();
    }

    @Override // java.util.Iterator
    public K next() {
        K k = (K) this.internal.a();
        this.internal.next();
        return k;
    }
}

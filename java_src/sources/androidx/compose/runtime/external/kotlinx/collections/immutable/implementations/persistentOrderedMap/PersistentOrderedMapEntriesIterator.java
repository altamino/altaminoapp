package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry;
import f8.a;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class PersistentOrderedMapEntriesIterator<K, V> implements Iterator<Map.Entry<? extends K, ? extends V>>, a {

    @NotNull
    private final PersistentOrderedMapLinksIterator<K, V> internal;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public PersistentOrderedMapEntriesIterator(@NotNull PersistentOrderedMap<K, V> map) {
        t.j(map, "map");
        this.internal = new PersistentOrderedMapLinksIterator<>(map.p(), map.q());
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> next() {
        return new MapEntry(this.internal.a(), this.internal.next().e());
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.internal.hasNext();
    }
}

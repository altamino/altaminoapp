package androidx.compose.runtime.snapshots;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class StateMapMutableValuesIterator<K, V> extends StateMapMutableIterator<K, V> implements Iterator<V>, f8.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMapMutableValuesIterator(@NotNull SnapshotStateMap<K, V> map, @NotNull Iterator<? extends Map.Entry<? extends K, ? extends V>> iterator) {
        super(map, iterator);
        t.j(map, "map");
        t.j(iterator, "iterator");
    }

    @Override // java.util.Iterator
    public V next() {
        Map.Entry<K, V> entryG = g();
        if (entryG != null) {
            c();
            return entryG.getValue();
        }
        throw new IllegalStateException();
    }
}

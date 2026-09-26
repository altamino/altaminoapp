package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import f8.e;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements e.a {

    @NotNull
    private final PersistentHashMapBuilderEntriesIterator<K, V> parentIterator;
    private V value;

    public void a(V v5) {
        this.value = v5;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableMapEntry(@NotNull PersistentHashMapBuilderEntriesIterator<K, V> parentIterator, K k, V v5) {
        super(k, v5);
        t.j(parentIterator, "parentIterator");
        this.parentIterator = parentIterator;
        this.value = v5;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public V setValue(V v5) {
        V value = getValue();
        a(v5);
        this.parentIterator.b(getKey(), v5);
        return value;
    }
}

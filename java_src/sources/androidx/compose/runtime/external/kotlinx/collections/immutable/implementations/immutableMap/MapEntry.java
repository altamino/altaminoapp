package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import f8.a;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class MapEntry<K, V> implements Map.Entry<K, V>, a {
    private final K key;
    private final V value;

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        Map.Entry entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
        return entry != null && t.e(entry.getKey(), getKey()) && t.e(entry.getValue(), getValue());
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }

    public MapEntry(K k, V v5) {
        this.key = k;
        this.value = v5;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        int iHashCode;
        K key = getKey();
        int iHashCode2 = 0;
        if (key != null) {
            iHashCode = key.hashCode();
        } else {
            iHashCode = 0;
        }
        V value = getValue();
        if (value != null) {
            iHashCode2 = value.hashCode();
        }
        return iHashCode ^ iHashCode2;
    }
}

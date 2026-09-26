package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import f8.a;
import java.util.Map;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class ImmutableMapAdapter<K, V> implements ImmutableMap<K, V>, Map<K, V>, a {

    @NotNull
    private final ImmutableSet<Map.Entry<K, V>> entries;

    @NotNull
    private final Map<K, V> impl;

    @NotNull
    private final ImmutableSet<K> keys;

    @NotNull
    private final ImmutableCollection<V> values;

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V compute(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V computeIfAbsent(K k, Function<? super K, ? extends V> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V computeIfPresent(K k, BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.impl.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.impl.containsValue(obj);
    }

    @NotNull
    public ImmutableSet<Map.Entry<K, V>> e() {
        return this.entries;
    }

    @NotNull
    public ImmutableSet<K> f() {
        return this.keys;
    }

    public int g() {
        return this.impl.size();
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return this.impl.get(obj);
    }

    @NotNull
    public ImmutableCollection<V> h() {
        return this.values;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.impl.isEmpty();
    }

    @Override // java.util.Map
    public V merge(K k, V v5, BiFunction<? super V, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V put(K k, V v5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V putIfAbsent(K k, V v5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V replace(K k, V v5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super K, ? super V, ? extends V> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableMapAdapter(@NotNull Map<K, ? extends V> impl) {
        t.j(impl, "impl");
        this.impl = impl;
        this.keys = new ImmutableSetAdapter(impl.keySet());
        this.values = new ImmutableCollectionAdapter(impl.values());
        this.entries = new ImmutableSetAdapter(impl.entrySet());
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return this.impl.equals(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.impl.hashCode();
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean replace(K k, V v5, V v6) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public String toString() {
        return this.impl.toString();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return e();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final /* bridge */ ImmutableSet<K> keySet() {
        return f();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final /* bridge */ ImmutableCollection<V> values() {
        return h();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return g();
    }
}

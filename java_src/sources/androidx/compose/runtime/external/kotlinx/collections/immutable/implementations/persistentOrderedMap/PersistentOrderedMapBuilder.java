package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class PersistentOrderedMapBuilder<K, V> extends g<K, V> implements PersistentMap.Builder<K, V> {

    @Nullable
    private Object firstKey;

    @NotNull
    private final PersistentHashMapBuilder<K, LinkedValue<V>> hashMapBuilder;

    @Nullable
    private Object lastKey;

    @NotNull
    private PersistentOrderedMap<K, V> map;

    @Nullable
    public final Object h() {
        return this.firstKey;
    }

    @NotNull
    public final PersistentHashMapBuilder<K, LinkedValue<V>> j() {
        return this.hashMapBuilder;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(Object obj) {
        LinkedValue<V> linkedValueRemove = this.hashMapBuilder.remove(obj);
        if (linkedValueRemove == null) {
            return null;
        }
        if (linkedValueRemove.b()) {
            LinkedValue<V> linkedValue = this.hashMapBuilder.get(linkedValueRemove.d());
            t.g(linkedValue);
            this.hashMapBuilder.put((K) linkedValueRemove.d(), linkedValue.f(linkedValueRemove.c()));
        } else {
            this.firstKey = linkedValueRemove.c();
        }
        if (linkedValueRemove.a()) {
            LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(linkedValueRemove.c());
            t.g(linkedValue2);
            this.hashMapBuilder.put((K) linkedValueRemove.c(), linkedValue2.g(linkedValueRemove.d()));
        } else {
            this.lastKey = linkedValueRemove.d();
        }
        return linkedValueRemove.e();
    }

    public PersistentOrderedMapBuilder(@NotNull PersistentOrderedMap<K, V> map) {
        t.j(map, "map");
        this.map = map;
        this.firstKey = map.p();
        this.lastKey = this.map.s();
        this.hashMapBuilder = this.map.q().builder();
    }

    @Override // kotlin.collections.g
    @NotNull
    public Set<Map.Entry<K, V>> a() {
        return new PersistentOrderedMapBuilderEntries(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    @NotNull
    public PersistentMap<K, V> build() {
        PersistentOrderedMap<K, V> persistentOrderedMap;
        PersistentHashMap<K, LinkedValue<V>> persistentHashMapBuild = this.hashMapBuilder.build();
        if (persistentHashMapBuild == this.map.q()) {
            CommonFunctionsKt.a(this.firstKey == this.map.p());
            CommonFunctionsKt.a(this.lastKey == this.map.s());
            persistentOrderedMap = this.map;
        } else {
            persistentOrderedMap = new PersistentOrderedMap<>(this.firstKey, this.lastKey, persistentHashMapBuild);
        }
        this.map = persistentOrderedMap;
        return persistentOrderedMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.hashMapBuilder.clear();
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        this.firstKey = endOfChain;
        this.lastKey = endOfChain;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMapBuilder.containsKey(obj);
    }

    @Override // kotlin.collections.g
    @NotNull
    public Set<K> e() {
        return new PersistentOrderedMapBuilderKeys(this);
    }

    @Override // kotlin.collections.g
    public int f() {
        return this.hashMapBuilder.size();
    }

    @Override // kotlin.collections.g
    @NotNull
    public Collection<V> g() {
        return new PersistentOrderedMapBuilderValues(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue != null) {
            return linkedValue.e();
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(K k, V v5) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(k);
        if (linkedValue != null) {
            if (linkedValue.e() == v5) {
                return v5;
            }
            this.hashMapBuilder.put(k, linkedValue.h(v5));
            return linkedValue.e();
        }
        if (isEmpty()) {
            this.firstKey = k;
            this.lastKey = k;
            this.hashMapBuilder.put(k, new LinkedValue<>(v5));
            return null;
        }
        Object obj = this.lastKey;
        LinkedValue<V> linkedValue2 = this.hashMapBuilder.get(obj);
        t.g(linkedValue2);
        LinkedValue<V> linkedValue3 = linkedValue2;
        CommonFunctionsKt.a(!linkedValue3.a());
        this.hashMapBuilder.put((K) obj, linkedValue3.f(k));
        this.hashMapBuilder.put(k, new LinkedValue<>(v5, obj));
        this.lastKey = k;
        return null;
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        LinkedValue<V> linkedValue = this.hashMapBuilder.get(obj);
        if (linkedValue == null || !t.e(linkedValue.e(), obj2)) {
            return false;
        }
        remove(obj);
        return true;
    }
}

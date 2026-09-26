package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.collections.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class PersistentHashMapBuilder<K, V> extends g<K, V> implements PersistentMap.Builder<K, V> {

    @NotNull
    private PersistentHashMap<K, V> map;
    private int modCount;

    @NotNull
    private TrieNode<K, V> node;

    @Nullable
    private V operationResult;

    @NotNull
    private MutabilityOwnership ownership;
    private int size;

    @Override // kotlin.collections.g
    public int f() {
        return this.size;
    }

    public final int j() {
        return this.modCount;
    }

    @NotNull
    public final TrieNode<K, V> k() {
        return this.node;
    }

    @NotNull
    public final MutabilityOwnership l() {
        return this.ownership;
    }

    public final void m(int i10) {
        this.modCount = i10;
    }

    public final void o(@Nullable V v5) {
        this.operationResult = v5;
    }

    public void p(int i10) {
        this.size = i10;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V put(K k, V v5) {
        this.operationResult = null;
        this.node = this.node.D(k != null ? k.hashCode() : 0, k, v5, 0, this);
        return this.operationResult;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V remove(Object obj) {
        this.operationResult = null;
        TrieNode trieNodeG = this.node.G(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (trieNodeG == null) {
            trieNodeG = TrieNode.Companion.a();
        }
        this.node = trieNodeG;
        return this.operationResult;
    }

    public PersistentHashMapBuilder(@NotNull PersistentHashMap<K, V> map) {
        t.j(map, "map");
        this.map = map;
        this.ownership = new MutabilityOwnership();
        this.node = this.map.s();
        this.size = this.map.size();
    }

    @Override // kotlin.collections.g
    @NotNull
    public Set<Map.Entry<K, V>> a() {
        return new PersistentHashMapBuilderEntries(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.node = TrieNode.Companion.a();
        p(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.node.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.g
    @NotNull
    public Set<K> e() {
        return new PersistentHashMapBuilderKeys(this);
    }

    @Override // kotlin.collections.g
    @NotNull
    public Collection<V> g() {
        return new PersistentHashMapBuilderValues(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(Object obj) {
        return this.node.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap.Builder
    @NotNull
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public PersistentHashMap<K, V> build() {
        PersistentHashMap<K, V> persistentHashMap;
        if (this.node == this.map.s()) {
            persistentHashMap = this.map;
        } else {
            this.ownership = new MutabilityOwnership();
            persistentHashMap = new PersistentHashMap<>(this.node, size());
        }
        this.map = persistentHashMap;
        return persistentHashMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        t.j(from, "from");
        PersistentHashMap<K, V> persistentHashMapBuild = from instanceof PersistentHashMap ? (PersistentHashMap) from : null;
        if (persistentHashMapBuild == null) {
            PersistentHashMapBuilder persistentHashMapBuilder = from instanceof PersistentHashMapBuilder ? (PersistentHashMapBuilder) from : null;
            persistentHashMapBuild = persistentHashMapBuilder != null ? persistentHashMapBuilder.build() : null;
        }
        if (persistentHashMapBuild == null) {
            super.putAll(from);
            return;
        }
        DeltaCounter deltaCounter = new DeltaCounter(0, 1, null);
        int size = size();
        this.node = this.node.E(persistentHashMapBuild.s(), 0, deltaCounter, this);
        int size2 = (persistentHashMapBuild.size() + size) - deltaCounter.a();
        if (size != size2) {
            p(size2);
        }
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int size = size();
        TrieNode trieNodeH = this.node.H(obj != null ? obj.hashCode() : 0, obj, obj2, 0, this);
        if (trieNodeH == null) {
            trieNodeH = TrieNode.Companion.a();
        }
        this.node = trieNodeH;
        return size != size();
    }
}

package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class PersistentHashMap<K, V> extends d<K, V> implements PersistentMap<K, V> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PersistentHashMap EMPTY = new PersistentHashMap(TrieNode.Companion.a(), 0);

    @NotNull
    private final TrieNode<K, V> node;
    private final int size;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final <K, V> PersistentHashMap<K, V> a() {
            return PersistentHashMap.EMPTY;
        }
    }

    @Override // kotlin.collections.d
    public int h() {
        return this.size;
    }

    @NotNull
    public final TrieNode<K, V> s() {
        return this.node;
    }

    public PersistentHashMap(@NotNull TrieNode<K, V> node, int i10) {
        t.j(node, "node");
        this.node = node;
        this.size = i10;
    }

    private final ImmutableSet<Map.Entry<K, V>> q() {
        return new PersistentHashMapEntries(this);
    }

    @Override // kotlin.collections.d, java.util.Map
    public boolean containsKey(Object obj) {
        return this.node.k(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // kotlin.collections.d, java.util.Map
    @Nullable
    public V get(Object obj) {
        return this.node.o(obj != null ? obj.hashCode() : 0, obj, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PersistentHashMapBuilder<K, V> builder() {
        return new PersistentHashMapBuilder<>(this);
    }

    @Override // kotlin.collections.d
    @NotNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<K> g() {
        return new PersistentHashMapKeys(this);
    }

    @Override // kotlin.collections.d
    @NotNull
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection<V> j() {
        return new PersistentHashMapValues(this);
    }

    @NotNull
    public PersistentHashMap<K, V> u(K k, V v5) {
        TrieNode.ModificationResult<K, V> modificationResultP = this.node.P(k != null ? k.hashCode() : 0, k, v5, 0);
        return modificationResultP == null ? this : new PersistentHashMap<>(modificationResultP.a(), size() + modificationResultP.b());
    }

    @NotNull
    public PersistentHashMap<K, V> v(K k) {
        TrieNode<K, V> trieNodeQ = this.node.Q(k != null ? k.hashCode() : 0, k, 0);
        if (this.node == trieNodeQ) {
            return this;
        }
        return trieNodeQ == null ? Companion.a() : new PersistentHashMap<>(trieNodeQ, size() - 1);
    }

    @Override // kotlin.collections.d
    @NotNull
    public final Set<Map.Entry<K, V>> f() {
        return q();
    }
}

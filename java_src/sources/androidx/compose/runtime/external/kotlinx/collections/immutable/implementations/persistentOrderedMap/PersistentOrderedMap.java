package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class PersistentOrderedMap<K, V> extends d<K, V> implements PersistentMap<K, V> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PersistentOrderedMap EMPTY;

    @Nullable
    private final Object firstKey;

    @NotNull
    private final PersistentHashMap<K, LinkedValue<V>> hashMap;

    @Nullable
    private final Object lastKey;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Nullable
    public final Object p() {
        return this.firstKey;
    }

    @NotNull
    public final PersistentHashMap<K, LinkedValue<V>> q() {
        return this.hashMap;
    }

    @Nullable
    public final Object s() {
        return this.lastKey;
    }

    static {
        EndOfChain endOfChain = EndOfChain.INSTANCE;
        EMPTY = new PersistentOrderedMap(endOfChain, endOfChain, PersistentHashMap.Companion.a());
    }

    public PersistentOrderedMap(@Nullable Object obj, @Nullable Object obj2, @NotNull PersistentHashMap<K, LinkedValue<V>> hashMap) {
        t.j(hashMap, "hashMap");
        this.firstKey = obj;
        this.lastKey = obj2;
        this.hashMap = hashMap;
    }

    private final ImmutableSet<Map.Entry<K, V>> o() {
        return new PersistentOrderedMapEntries(this);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    @NotNull
    public PersistentMap.Builder<K, V> builder() {
        return new PersistentOrderedMapBuilder(this);
    }

    @Override // kotlin.collections.d, java.util.Map
    public boolean containsKey(Object obj) {
        return this.hashMap.containsKey(obj);
    }

    @Override // kotlin.collections.d, java.util.Map
    @Nullable
    public V get(Object obj) {
        LinkedValue<V> linkedValue = this.hashMap.get(obj);
        if (linkedValue != null) {
            return linkedValue.e();
        }
        return null;
    }

    @Override // kotlin.collections.d
    public int h() {
        return this.hashMap.size();
    }

    @Override // kotlin.collections.d
    @NotNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<K> g() {
        return new PersistentOrderedMapKeys(this);
    }

    @Override // kotlin.collections.d
    @NotNull
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection<V> j() {
        return new PersistentOrderedMapValues(this);
    }

    @Override // kotlin.collections.d
    @NotNull
    public final Set<Map.Entry<K, V>> f() {
        return o();
    }
}

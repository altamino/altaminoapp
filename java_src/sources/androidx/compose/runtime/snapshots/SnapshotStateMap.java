package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import f8.e;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@Stable
public final class SnapshotStateMap<K, V> implements Map<K, V>, StateObject, e {

    @NotNull
    private StateRecord firstStateRecord = new StateMapStateRecord(ExtensionsKt.a());

    @NotNull
    private final Set<Map.Entry<K, V>> entries = new SnapshotMapEntrySet(this);

    @NotNull
    private final Set<K> keys = new SnapshotMapKeySet(this);

    @NotNull
    private final Collection<V> values = new SnapshotMapValueSet(this);

    public static final class StateMapStateRecord<K, V> extends StateRecord {

        @NotNull
        private PersistentMap<K, ? extends V> map;
        private int modification;

        @NotNull
        public final PersistentMap<K, V> g() {
            return this.map;
        }

        public final int h() {
            return this.modification;
        }

        public final void i(@NotNull PersistentMap<K, ? extends V> persistentMap) {
            t.j(persistentMap, "<set-?>");
            this.map = persistentMap;
        }

        public final void j(int i10) {
            this.modification = i10;
        }

        public StateMapStateRecord(@NotNull PersistentMap<K, ? extends V> map) {
            t.j(map, "map");
            this.map = map;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void a(@NotNull StateRecord value) {
            t.j(value, "value");
            StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) value;
            synchronized (SnapshotStateMapKt.sync) {
                this.map = stateMapStateRecord.map;
                this.modification = stateMapStateRecord.modification;
                l0 l0Var = l0.INSTANCE;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord b() {
            return new StateMapStateRecord(this.map);
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public /* synthetic */ StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return a.a(this, stateRecord, stateRecord2, stateRecord3);
    }

    @NotNull
    public Set<Map.Entry<K, V>> f() {
        return this.entries;
    }

    @NotNull
    public Set<K> g() {
        return this.keys;
    }

    @NotNull
    public Collection<V> l() {
        return this.values;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord m() {
        return this.firstStateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void a(@NotNull StateRecord value) {
        t.j(value, "value");
        this.firstStateRecord = (StateMapStateRecord) value;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0076 */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Snapshot.Companion companion;
        PersistentMap<K, V> persistentMapG;
        int iH;
        Snapshot snapshotB;
        boolean z6;
        t.j(from, "from");
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) m();
                companion = Snapshot.Companion;
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.A(stateMapStateRecord, companion.b());
                persistentMapG = stateMapStateRecord2.g();
                iH = stateMapStateRecord2.h();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentMapG);
            PersistentMap.Builder<K, V> builder = persistentMapG.builder();
            builder.putAll(from);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (t.e(persistentMapBuild, persistentMapG)) {
                return;
            }
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    try {
                        snapshotB = companion.b();
                        StateMapStateRecord stateMapStateRecord4 = (StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord3, this, snapshotB);
                        if (stateMapStateRecord4.h() == iH) {
                            stateMapStateRecord4.i(persistentMapBuild);
                            z6 = true;
                            stateMapStateRecord4.j(stateMapStateRecord4.h() + 1);
                        } else {
                            z6 = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
    }

    @Override // java.util.Map
    public void clear() {
        Snapshot snapshotB;
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) m();
        Snapshot.Companion companion = Snapshot.Companion;
        StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.A(stateMapStateRecord, companion.b());
        stateMapStateRecord2.g();
        PersistentMap<K, V> persistentMapA = ExtensionsKt.a();
        if (persistentMapA != stateMapStateRecord2.g()) {
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateMapStateRecord stateMapStateRecord4 = (StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord3, this, snapshotB);
                    stateMapStateRecord4.i(persistentMapA);
                    stateMapStateRecord4.j(stateMapStateRecord4.h() + 1);
                }
                SnapshotKt.J(snapshotB, this);
            }
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return j().g().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return j().g().containsValue(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return f();
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return j().g().get(obj);
    }

    public final int h() {
        return j().h();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return j().g().isEmpty();
    }

    @NotNull
    public final StateMapStateRecord<K, V> j() {
        return (StateMapStateRecord) SnapshotKt.O((StateMapStateRecord) m(), this);
    }

    public int k() {
        return j().g().size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return g();
    }

    public final boolean o(V v5) {
        Object next;
        Iterator<T> it = entrySet().iterator();
        do {
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = null;
                break;
            }
        } while (!t.e(((Map.Entry) next).getValue(), v5));
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            remove(entry.getKey());
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k, V v5) {
        Snapshot.Companion companion;
        PersistentMap<K, V> persistentMapG;
        int iH;
        V vPut;
        Snapshot snapshotB;
        boolean z6;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) m();
                companion = Snapshot.Companion;
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.A(stateMapStateRecord, companion.b());
                persistentMapG = stateMapStateRecord2.g();
                iH = stateMapStateRecord2.h();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentMapG);
            PersistentMap.Builder<K, V> builder = persistentMapG.builder();
            vPut = builder.put(k, v5);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (t.e(persistentMapBuild, persistentMapG)) {
                break;
            }
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateMapStateRecord stateMapStateRecord4 = (StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord3, this, snapshotB);
                    if (stateMapStateRecord4.h() == iH) {
                        stateMapStateRecord4.i(persistentMapBuild);
                        z6 = true;
                        stateMapStateRecord4.j(stateMapStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return vPut;
    }

    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        Snapshot.Companion companion;
        PersistentMap<K, V> persistentMapG;
        int iH;
        V vRemove;
        Snapshot snapshotB;
        boolean z6;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) m();
                companion = Snapshot.Companion;
                StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) SnapshotKt.A(stateMapStateRecord, companion.b());
                persistentMapG = stateMapStateRecord2.g();
                iH = stateMapStateRecord2.h();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentMapG);
            PersistentMap.Builder<K, V> builder = persistentMapG.builder();
            vRemove = builder.remove(obj);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (t.e(persistentMapBuild, persistentMapG)) {
                break;
            }
            synchronized (SnapshotStateMapKt.sync) {
                StateMapStateRecord stateMapStateRecord3 = (StateMapStateRecord) m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = companion.b();
                    StateMapStateRecord stateMapStateRecord4 = (StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord3, this, snapshotB);
                    if (stateMapStateRecord4.h() == iH) {
                        stateMapStateRecord4.i(persistentMapBuild);
                        z6 = true;
                        stateMapStateRecord4.j(stateMapStateRecord4.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, this);
            }
        } while (!z6);
        return vRemove;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return k();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return l();
    }
}

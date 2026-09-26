package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SnapshotMapValueSet<K, V> extends SnapshotMapSet<K, V, V> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotMapValueSet(@NotNull SnapshotStateMap<K, V> map) {
        super(map);
        t.j(map, "map");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!c().containsValue(it.next())) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public Void g(@NotNull Collection<? extends V> elements) {
        t.j(elements, "elements");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public StateMapMutableValuesIterator<K, V> iterator() {
        return new StateMapMutableValuesIterator<>(c(), ((ImmutableSet) c().j().g().entrySet()).iterator());
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        PersistentMap<K, V> persistentMapG;
        int iH;
        boolean z6;
        Snapshot snapshotB;
        t.j(elements, "elements");
        Set setY0 = d0.Y0(elements);
        SnapshotStateMap<K, V> snapshotStateMapC = c();
        boolean z10 = false;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.A((SnapshotStateMap.StateMapStateRecord) snapshotStateMapC.m(), Snapshot.Companion.b());
                persistentMapG = stateMapStateRecord.g();
                iH = stateMapStateRecord.h();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentMapG);
            PersistentMap.Builder<K, V> builder = persistentMapG.builder();
            Iterator<Map.Entry<K, V>> it = snapshotStateMapC.entrySet().iterator();
            while (true) {
                z6 = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<K, V> next = it.next();
                if (setY0.contains(next.getValue())) {
                    builder.remove(next.getKey());
                    z10 = true;
                }
            }
            l0 l0Var2 = l0.INSTANCE;
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (t.e(persistentMapBuild, persistentMapG)) {
                break;
            }
            synchronized (SnapshotStateMapKt.sync) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) snapshotStateMapC.m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = Snapshot.Companion.b();
                    SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord2, snapshotStateMapC, snapshotB);
                    if (stateMapStateRecord3.h() == iH) {
                        stateMapStateRecord3.i(persistentMapBuild);
                        stateMapStateRecord3.j(stateMapStateRecord3.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, snapshotStateMapC);
            }
        } while (!z6);
        return z10;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        PersistentMap<K, V> persistentMapG;
        int iH;
        boolean z6;
        Snapshot snapshotB;
        t.j(elements, "elements");
        Set setY0 = d0.Y0(elements);
        SnapshotStateMap<K, V> snapshotStateMapC = c();
        boolean z10 = false;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.A((SnapshotStateMap.StateMapStateRecord) snapshotStateMapC.m(), Snapshot.Companion.b());
                persistentMapG = stateMapStateRecord.g();
                iH = stateMapStateRecord.h();
                l0 l0Var = l0.INSTANCE;
            }
            t.g(persistentMapG);
            PersistentMap.Builder<K, V> builder = persistentMapG.builder();
            Iterator<Map.Entry<K, V>> it = snapshotStateMapC.entrySet().iterator();
            while (true) {
                z6 = true;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<K, V> next = it.next();
                if (!setY0.contains(next.getValue())) {
                    builder.remove(next.getKey());
                    z10 = true;
                }
            }
            l0 l0Var2 = l0.INSTANCE;
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (t.e(persistentMapBuild, persistentMapG)) {
                break;
            }
            synchronized (SnapshotStateMapKt.sync) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) snapshotStateMapC.m();
                SnapshotKt.D();
                synchronized (SnapshotKt.C()) {
                    snapshotB = Snapshot.Companion.b();
                    SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.Z(stateMapStateRecord2, snapshotStateMapC, snapshotB);
                    if (stateMapStateRecord3.h() == iH) {
                        stateMapStateRecord3.i(persistentMapBuild);
                        stateMapStateRecord3.j(stateMapStateRecord3.h() + 1);
                    } else {
                        z6 = false;
                    }
                }
                SnapshotKt.J(snapshotB, snapshotStateMapC);
            }
        } while (!z6);
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) f(obj)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) g(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return c().containsValue(obj);
    }

    @NotNull
    public Void f(V v5) {
        SnapshotStateMapKt.b();
        throw new i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return c().o(obj);
    }
}

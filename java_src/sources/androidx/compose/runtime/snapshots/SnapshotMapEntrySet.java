package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import j8.o;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.r0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.i;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
final class SnapshotMapEntrySet<K, V> extends SnapshotMapSet<K, V, Map.Entry<K, V>> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotMapEntrySet(@NotNull SnapshotStateMap<K, V> map) {
        super(map);
        t.j(map, "map");
    }

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return ((Boolean) f((Map.Entry) obj)).booleanValue();
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
            if (!contains((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public Void f(@NotNull Map.Entry<K, V> element) {
        t.j(element, "element");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @NotNull
    public Void g(@NotNull Collection<? extends Map.Entry<K, V>> elements) {
        t.j(elements, "elements");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<Map.Entry<K, V>> iterator() {
        return new StateMapMutableEntriesIterator(c(), ((ImmutableSet) c().j().g().entrySet()).iterator());
    }

    public boolean j(@NotNull Map.Entry<K, V> element) {
        t.j(element, "element");
        return t.e(c().get(element.getKey()), element.getValue());
    }

    public boolean m(@NotNull Map.Entry<K, V> element) {
        t.j(element, "element");
        return c().remove(element.getKey()) != null;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        while (true) {
            boolean z6 = false;
            while (it.hasNext()) {
                if (c().remove(((Map.Entry) it.next()).getKey()) != null || z6) {
                    z6 = true;
                }
            }
            return z6;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        PersistentMap<K, V> persistentMapG;
        int iH;
        boolean z6;
        Snapshot snapshotB;
        t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        LinkedHashMap linkedHashMap = new LinkedHashMap(o.e(r0.e(w.x(collection, 10)), 16));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            u uVarA = a0.a(entry.getKey(), entry.getValue());
            linkedHashMap.put(uVarA.c(), uVarA.d());
        }
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
            Iterator<Map.Entry<K, V>> it2 = snapshotStateMapC.entrySet().iterator();
            while (true) {
                z6 = true;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<K, V> next = it2.next();
                if (!linkedHashMap.containsKey(next.getKey()) || !t.e(linkedHashMap.get(next.getKey()), next.getValue())) {
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
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return ((Boolean) g(collection)).booleanValue();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!v0.m(obj)) {
            return false;
        }
        return j((Map.Entry) obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        if (!v0.m(obj)) {
            return false;
        }
        return m((Map.Entry) obj);
    }
}

package androidx.compose.runtime.snapshots;

import f8.f;
import java.util.Set;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
abstract class SnapshotMapSet<K, V, E> implements Set<E>, f {

    @NotNull
    private final SnapshotStateMap<K, V> map;

    @NotNull
    public final SnapshotStateMap<K, V> c() {
        return this.map;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    public SnapshotMapSet(@NotNull SnapshotStateMap<K, V> map) {
        t.j(map, "map");
        this.map = map;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.map.clear();
    }

    public int e() {
        return this.map.size();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return e();
    }
}

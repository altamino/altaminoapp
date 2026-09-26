package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
abstract class StateMapMutableIterator<K, V> {

    @Nullable
    private Map.Entry<? extends K, ? extends V> current;

    @NotNull
    private final Iterator<Map.Entry<K, V>> iterator;

    @NotNull
    private final SnapshotStateMap<K, V> map;
    private int modification;

    @Nullable
    private Map.Entry<? extends K, ? extends V> next;

    @Nullable
    protected final Map.Entry<K, V> e() {
        return this.current;
    }

    @NotNull
    public final SnapshotStateMap<K, V> f() {
        return this.map;
    }

    @Nullable
    protected final Map.Entry<K, V> g() {
        return this.next;
    }

    public final boolean hasNext() {
        return this.next != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StateMapMutableIterator(@NotNull SnapshotStateMap<K, V> map, @NotNull Iterator<? extends Map.Entry<? extends K, ? extends V>> iterator) {
        t.j(map, "map");
        t.j(iterator, "iterator");
        this.map = map;
        this.iterator = iterator;
        this.modification = map.h();
        c();
    }

    protected final void c() {
        this.current = this.next;
        this.next = this.iterator.hasNext() ? this.iterator.next() : null;
    }

    public final void remove() {
        if (f().h() == this.modification) {
            Map.Entry<? extends K, ? extends V> entry = this.current;
            if (entry != null) {
                this.map.remove(entry.getKey());
                this.current = null;
                l0 l0Var = l0.INSTANCE;
                this.modification = f().h();
                return;
            }
            throw new IllegalStateException();
        }
        throw new ConcurrentModificationException();
    }
}

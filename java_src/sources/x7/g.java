package x7;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class g<V> extends kotlin.collections.e<V> {

    @NotNull
    private final d<?, V> backing;

    public g(@NotNull d<?, V> backing) {
        t.j(backing, "backing");
        this.backing = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(V v5) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends V> elements) {
        t.j(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.e
    public int c() {
        return this.backing.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.backing.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.backing.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.backing.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<V> iterator() {
        return this.backing.U();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        return this.backing.S(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        this.backing.q();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        this.backing.q();
        return super.retainAll(elements);
    }
}

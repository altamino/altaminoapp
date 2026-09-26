package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class j<T> implements Collection<T>, f8.a {
    private final boolean isVarargs;

    @NotNull
    private final T[] values;

    @Override // java.util.Collection
    public boolean add(T t5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        return (T[]) kotlin.jvm.internal.j.b(this, array);
    }

    public j(@NotNull T[] values, boolean z6) {
        kotlin.jvm.internal.t.j(values, "values");
        this.values = values;
        this.isVarargs = z6;
    }

    public int c() {
        return this.values.length;
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return p.F(this.values, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.values.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return kotlin.jvm.internal.c.a(this.values);
    }

    @Override // java.util.Collection
    @NotNull
    public final Object[] toArray() {
        return u.b(this.values, this.isVarargs);
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }
}

package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import f8.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class ImmutableCollectionAdapter<E> implements ImmutableCollection<E>, Collection<E>, a {

    @NotNull
    private final Collection<E> impl;

    @Override // java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int c() {
        return this.impl.size();
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.impl.contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return this.impl.containsAll(elements);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.impl.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<E> iterator() {
        return this.impl.iterator();
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
    public boolean removeIf(Predicate<? super E> predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableCollectionAdapter(@NotNull Collection<? extends E> impl) {
        t.j(impl, "impl");
        this.impl = impl;
    }

    @Override // java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return this.impl.equals(obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.impl.hashCode();
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @NotNull
    public String toString() {
        return this.impl.toString();
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }
}

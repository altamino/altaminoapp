package androidx.compose.runtime.external.kotlinx.collections.immutable.adapters;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import f8.a;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ImmutableListAdapter<E> implements ImmutableList<E>, List<E>, a {

    @NotNull
    private final List<E> impl;

    @Override // java.util.List
    public void add(int i10, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int c() {
        return this.impl.size();
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return this.impl.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        return this.impl.containsAll(elements);
    }

    @Override // java.util.List
    public E get(int i10) {
        return this.impl.get(i10);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return this.impl.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.impl.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<E> iterator() {
        return this.impl.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return this.impl.lastIndexOf(obj);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return this.impl.listIterator();
    }

    @Override // java.util.List
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<E> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i10, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super E> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmutableListAdapter(@NotNull List<? extends E> impl) {
        t.j(impl, "impl");
        this.impl = impl;
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ImmutableList<E> subList(int i10, int i11) {
        return new ImmutableListAdapter(this.impl.subList(i10, i11));
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return this.impl.equals(obj);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.impl.hashCode();
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        return this.impl.listIterator(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @NotNull
    public String toString() {
        return this.impl.toString();
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }
}

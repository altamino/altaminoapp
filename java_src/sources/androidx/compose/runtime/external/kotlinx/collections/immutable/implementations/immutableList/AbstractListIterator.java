package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import f8.a;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes10.dex */
public abstract class AbstractListIterator<E> implements ListIterator<E>, a {
    private int index;
    private int size;

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final int c() {
        return this.index;
    }

    public final int e() {
        return this.size;
    }

    public final void f(int i10) {
        this.index = i10;
    }

    public final void g(int i10) {
        this.size = i10;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.index < this.size;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.index > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.index;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.index - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public AbstractListIterator(int i10, int i11) {
        this.index = i10;
        this.size = i11;
    }

    public final void a() {
        if (hasNext()) {
        } else {
            throw new NoSuchElementException();
        }
    }

    public final void b() {
        if (hasPrevious()) {
        } else {
            throw new NoSuchElementException();
        }
    }
}

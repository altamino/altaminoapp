package com.google.common.collect;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
abstract class a<E> extends m1<E> {
    private int position;
    private final int size;

    protected abstract E a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.position < this.size;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.position > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.position;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.position - 1;
    }

    protected a(int i10, int i11) {
        com.google.common.base.o.m(i11, i10);
        this.size = i10;
        this.position = i11;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i10 = this.position;
            this.position = i10 + 1;
            return a(i10);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i10 = this.position - 1;
            this.position = i10;
            return a(i10);
        }
        throw new NoSuchElementException();
    }
}

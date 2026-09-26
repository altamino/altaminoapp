package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
abstract class k1<F, T> implements Iterator<T> {
    final Iterator<? extends F> backingIterator;

    abstract T a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.backingIterator.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.backingIterator.remove();
    }

    k1(Iterator<? extends F> it) {
        this.backingIterator = (Iterator) com.google.common.base.o.k(it);
    }
}

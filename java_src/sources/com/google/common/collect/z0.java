package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
final class z0<E> extends f0<E> {
    static final z0<Comparable> NATURAL_EMPTY_SET = new z0<>(a0.x(), t0.c());
    final transient a0<E> elements;

    @Override // com.google.common.collect.f0
    f0<E> N(E e, boolean z6) {
        return W(0, X(e, z6));
    }

    Comparator<Object> a0() {
        return this.comparator;
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y
    public a0<E> c() {
        return this.elements;
    }

    @Override // com.google.common.collect.f0, java.util.NavigableSet
    public E ceiling(E e) {
        int iY = Y(e, true);
        if (iY == size()) {
            return null;
        }
        return this.elements.get(iY);
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return Z(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.d0, java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!i1.b(this.comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            l1<E> it2 = iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                E next2 = it.next();
                if (next2 == null || U(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.f0, java.util.NavigableSet
    public E floor(E e) {
        int iX = X(e, true) - 1;
        if (iX == -1) {
            return null;
        }
        return this.elements.get(iX);
    }

    @Override // com.google.common.collect.f0, java.util.NavigableSet
    public E higher(E e) {
        int iY = Y(e, false);
        if (iY == size()) {
            return null;
        }
        return this.elements.get(iY);
    }

    @Override // com.google.common.collect.f0, java.util.NavigableSet
    public E lower(E e) {
        int iX = X(e, false) - 1;
        if (iX == -1) {
            return null;
        }
        return this.elements.get(iX);
    }

    private int Z(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.elements, obj, a0());
    }

    @Override // com.google.common.collect.f0
    f0<E> H() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.comparator);
        return isEmpty() ? f0.K(comparatorReverseOrder) : new z0(this.elements.D(), comparatorReverseOrder);
    }

    @Override // com.google.common.collect.f0, java.util.NavigableSet
    /* JADX INFO: renamed from: I */
    public l1<E> descendingIterator() {
        return this.elements.D().iterator();
    }

    z0<E> W(int i10, int i11) {
        if (i10 == 0 && i11 == size()) {
            return this;
        }
        return i10 < i11 ? new z0<>(this.elements.subList(i10, i11), this.comparator) : f0.K(this.comparator);
    }

    int X(E e, boolean z6) {
        int iBinarySearch = Collections.binarySearch(this.elements, com.google.common.base.o.k(e), comparator());
        if (iBinarySearch >= 0) {
            return z6 ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    int Y(E e, boolean z6) {
        int iBinarySearch = Collections.binarySearch(this.elements, com.google.common.base.o.k(e), comparator());
        if (iBinarySearch >= 0) {
            return z6 ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof p0) {
            collection = ((p0) collection).o();
        }
        if (!i1.b(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        l1<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int iU = U(next2, next);
                if (iU < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iU == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iU > 0) {
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
    }

    @Override // com.google.common.collect.y
    int d(Object[] objArr, int i10) {
        return this.elements.d(objArr, i10);
    }

    @Override // com.google.common.collect.y
    Object[] e() {
        return this.elements.e();
    }

    @Override // com.google.common.collect.y
    int f() {
        return this.elements.f();
    }

    @Override // com.google.common.collect.y
    int g() {
        return this.elements.g();
    }

    @Override // com.google.common.collect.y
    boolean j() {
        return this.elements.j();
    }

    @Override // com.google.common.collect.f0, com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public l1<E> iterator() {
        return this.elements.iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.elements.size();
    }

    z0(a0<E> a0Var, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = a0Var;
    }

    @Override // com.google.common.collect.f0
    f0<E> Q(E e, boolean z6, E e2, boolean z10) {
        return T(e, z6).N(e2, z10);
    }

    @Override // com.google.common.collect.f0
    f0<E> T(E e, boolean z6) {
        return W(Y(e, z6), size());
    }

    @Override // com.google.common.collect.f0, java.util.SortedSet
    public E first() {
        if (!isEmpty()) {
            return this.elements.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.f0, java.util.SortedSet
    public E last() {
        if (!isEmpty()) {
            return this.elements.get(size() - 1);
        }
        throw new NoSuchElementException();
    }
}

package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.NavigableSet;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f0<E> extends g0<E> implements NavigableSet<E>, h1<E> {
    final transient Comparator<? super E> comparator;
    transient f0<E> descendingSet;

    public static final class a<E> extends d0.a<E> {
        private final Comparator<? super E> comparator;

        @Override // com.google.common.collect.d0.a
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public f0<E> l() {
            f0<E> f0VarE = f0.E(this.comparator, this.size, this.contents);
            this.size = f0VarE.size();
            this.forceCopy = true;
            return f0VarE;
        }

        public a(Comparator<? super E> comparator) {
            this.comparator = (Comparator) com.google.common.base.o.k(comparator);
        }

        @Override // com.google.common.collect.d0.a
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a<E> a(E e) {
            super.a(e);
            return this;
        }

        @Override // com.google.common.collect.d0.a
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public a<E> i(E... eArr) {
            super.i(eArr);
            return this;
        }

        @Override // com.google.common.collect.d0.a
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a<E> j(Iterable<? extends E> iterable) {
            super.j(iterable);
            return this;
        }
    }

    private static class b<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super E> comparator;
        final Object[] elements;

        /* JADX WARN: Multi-variable type inference failed */
        Object readResolve() {
            return new a(this.comparator).i(this.elements).l();
        }

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }
    }

    abstract f0<E> H();

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public abstract l1<E> descendingIterator();

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public f0<E> headSet(E e) {
        return headSet(e, false);
    }

    abstract f0<E> N(E e, boolean z6);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public f0<E> subSet(E e, E e2) {
        return subSet(e, true, e2, false);
    }

    abstract f0<E> Q(E e, boolean z6, E e2, boolean z10);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public f0<E> tailSet(E e) {
        return tailSet(e, true);
    }

    abstract f0<E> T(E e, boolean z6);

    @Override // java.util.NavigableSet
    public E ceiling(E e) {
        return (E) h0.d(tailSet(e, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.h1
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @Override // java.util.NavigableSet
    public E floor(E e) {
        return (E) i0.n(headSet(e, true).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    public E higher(E e) {
        return (E) h0.d(tailSet(e, false), null);
    }

    @Override // java.util.NavigableSet
    public E lower(E e) {
        return (E) i0.n(headSet(e, false).descendingIterator(), null);
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public abstract l1<E> iterator();

    /* JADX WARN: Multi-variable type inference failed */
    static <E> f0<E> E(Comparator<? super E> comparator, int i10, E... eArr) {
        if (i10 == 0) {
            return K(comparator);
        }
        s0.c(eArr, i10);
        Arrays.sort(eArr, 0, i10, comparator);
        int i11 = 1;
        for (int i12 = 1; i12 < i10; i12++) {
            a0.b.C0001b c0001b = (Object) eArr[i12];
            if (comparator.compare(c0001b, (Object) eArr[i11 - 1]) != 0) {
                eArr[i11] = c0001b;
                i11++;
            }
        }
        Arrays.fill(eArr, i11, i10, (Object) null);
        if (i11 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i11);
        }
        return new z0(a0.q(eArr, i11), comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public f0<E> descendingSet() {
        f0<E> f0Var = this.descendingSet;
        if (f0Var != null) {
            return f0Var;
        }
        f0<E> f0VarH = H();
        this.descendingSet = f0VarH;
        f0VarH.descendingSet = this;
        return f0VarH;
    }

    int U(Object obj, Object obj2) {
        return V(this.comparator, obj, obj2);
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y
    Object writeReplace() {
        return new b(this.comparator, toArray());
    }

    f0(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    public static <E> f0<E> F(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.o.k(comparator);
        if (i1.b(comparator, iterable) && (iterable instanceof f0)) {
            f0<E> f0Var = (f0) iterable;
            if (!f0Var.j()) {
                return f0Var;
            }
        }
        Object[] objArrL = h0.l(iterable);
        return E(comparator, objArrL.length, objArrL);
    }

    public static <E> f0<E> G(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return F(comparator, collection);
    }

    static <E> z0<E> K(Comparator<? super E> comparator) {
        if (t0.c().equals(comparator)) {
            return (z0<E>) z0.NATURAL_EMPTY_SET;
        }
        return new z0<>(a0.x(), comparator);
    }

    static int V(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public f0<E> headSet(E e, boolean z6) {
        return N(com.google.common.base.o.k(e), z6);
    }

    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public f0<E> subSet(E e, boolean z6, E e2, boolean z10) {
        boolean z11;
        com.google.common.base.o.k(e);
        com.google.common.base.o.k(e2);
        if (this.comparator.compare(e, e2) <= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        com.google.common.base.o.d(z11);
        return Q(e, z6, e2, z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableSet
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public f0<E> tailSet(E e, boolean z6) {
        return T(com.google.common.base.o.k(e), z6);
    }

    @Override // java.util.SortedSet
    public E first() {
        return iterator().next();
    }

    @Override // java.util.SortedSet
    public E last() {
        return descendingIterator().next();
    }
}

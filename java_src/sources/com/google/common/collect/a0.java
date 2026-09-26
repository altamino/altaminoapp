package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a0<E> extends y<E> implements List<E>, RandomAccess {
    private static final m1<Object> EMPTY_ITR = new b(w0.EMPTY, 0);

    public static final class a<E> extends y.a<E> {
        public a() {
            this(4);
        }

        public a0<E> k() {
            this.forceCopy = true;
            return a0.q(this.contents, this.size);
        }

        a(int i10) {
            super(i10);
        }

        @Override // com.google.common.collect.y.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public a<E> d(E e) {
            super.d(e);
            return this;
        }

        public a<E> i(E... eArr) {
            super.e(eArr);
            return this;
        }

        public a<E> j(Iterable<? extends E> iterable) {
            super.b(iterable);
            return this;
        }
    }

    static class b<E> extends com.google.common.collect.a<E> {
        private final a0<E> list;

        @Override // com.google.common.collect.a
        protected E a(int i10) {
            return this.list.get(i10);
        }

        b(a0<E> a0Var, int i10) {
            super(a0Var.size(), i10);
            this.list = a0Var;
        }
    }

    private static class c<E> extends a0<E> {
        private final transient a0<E> forwardList;

        @Override // com.google.common.collect.a0
        public a0<E> D() {
            return this.forwardList;
        }

        @Override // com.google.common.collect.a0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.forwardList.contains(obj);
        }

        @Override // com.google.common.collect.a0, java.util.List
        public int indexOf(Object obj) {
            int iLastIndexOf = this.forwardList.lastIndexOf(obj);
            if (iLastIndexOf >= 0) {
                return H(iLastIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.y
        boolean j() {
            return this.forwardList.j();
        }

        @Override // com.google.common.collect.a0, java.util.List
        public int lastIndexOf(Object obj) {
            int iIndexOf = this.forwardList.indexOf(obj);
            if (iIndexOf >= 0) {
                return H(iIndexOf);
            }
            return -1;
        }

        @Override // com.google.common.collect.a0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.forwardList.size();
        }

        c(a0<E> a0Var) {
            this.forwardList = a0Var;
        }

        private int H(int i10) {
            return (size() - 1) - i10;
        }

        private int I(int i10) {
            return size() - i10;
        }

        @Override // com.google.common.collect.a0, java.util.List
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public a0<E> subList(int i10, int i11) {
            com.google.common.base.o.o(i10, i11, size());
            return this.forwardList.subList(I(i11), I(i10)).D();
        }

        @Override // java.util.List
        public E get(int i10) {
            com.google.common.base.o.i(i10, size());
            return this.forwardList.get(H(i10));
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }
    }

    static class d implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        Object readResolve() {
            return a0.u(this.elements);
        }

        d(Object[] objArr) {
            this.elements = objArr;
        }
    }

    class e extends a0<E> {
        final transient int length;
        final transient int offset;

        @Override // com.google.common.collect.y
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.a0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.length;
        }

        e(int i10, int i11) {
            this.offset = i10;
            this.length = i11;
        }

        @Override // com.google.common.collect.a0, java.util.List
        /* JADX INFO: renamed from: F */
        public a0<E> subList(int i10, int i11) {
            com.google.common.base.o.o(i10, i11, this.length);
            a0 a0Var = a0.this;
            int i12 = this.offset;
            return a0Var.subList(i10 + i12, i11 + i12);
        }

        @Override // com.google.common.collect.y
        Object[] e() {
            return a0.this.e();
        }

        @Override // com.google.common.collect.y
        int f() {
            return a0.this.g() + this.offset + this.length;
        }

        @Override // com.google.common.collect.y
        int g() {
            return a0.this.g() + this.offset;
        }

        @Override // java.util.List
        public E get(int i10) {
            com.google.common.base.o.i(i10, this.length);
            return a0.this.get(i10 + this.offset);
        }

        @Override // com.google.common.collect.a0, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i10) {
            return super.listIterator(i10);
        }

        @Override // com.google.common.collect.a0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }
    }

    public static <E> a0<E> A(E e2, E e6, E e7) {
        return s(e2, e6, e7);
    }

    public static <E> a0<E> B(E e2, E e6, E e7, E e10, E e11) {
        return s(e2, e6, e7, e10, e11);
    }

    public static <E> a0<E> C(E e2, E e6, E e7, E e10, E e11, E e12, E e13) {
        return s(e2, e6, e7, e10, e11, e12, e13);
    }

    static <E> a0<E> p(Object[] objArr) {
        return q(objArr, objArr.length);
    }

    public static <E> a0<E> u(E[] eArr) {
        return eArr.length == 0 ? x() : s((Object[]) eArr.clone());
    }

    public static <E> a0<E> y(E e2) {
        return s(e2);
    }

    public static <E> a0<E> z(E e2, E e6) {
        return s(e2, e6);
    }

    @Override // com.google.common.collect.y
    @Deprecated
    public final a0<E> c() {
        return this;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public m1<E> listIterator() {
        return listIterator(0);
    }

    static <E> a0<E> q(Object[] objArr, int i10) {
        return i10 == 0 ? x() : new w0(objArr, i10);
    }

    public static <E> a<E> r() {
        return new a<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E> a0<E> t(Collection<? extends E> collection) {
        if (!(collection instanceof y)) {
            return s(collection.toArray());
        }
        a0<E> a0VarC = ((y) collection).c();
        return a0VarC.j() ? p(a0VarC.toArray()) : a0VarC;
    }

    public static <E> a0<E> x() {
        return (a0<E>) w0.EMPTY;
    }

    a0<E> G(int i10, int i11) {
        return new e(i10, i11 - i10);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return k0.d(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return k0.f(this, obj);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i10, E e2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.y
    Object writeReplace() {
        return new d(toArray());
    }

    a0() {
    }

    public static <E> a0<E> E(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        com.google.common.base.o.k(comparator);
        Object[] objArrL = h0.l(iterable);
        s0.b(objArrL);
        Arrays.sort(objArrL, comparator);
        return p(objArrL);
    }

    private static <E> a0<E> s(Object... objArr) {
        return p(s0.b(objArr));
    }

    public a0<E> D() {
        if (size() <= 1) {
            return this;
        }
        return new c(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: F */
    public a0<E> subList(int i10, int i11) {
        com.google.common.base.o.o(i10, i11, size());
        int i12 = i11 - i10;
        if (i12 == size()) {
            return this;
        }
        if (i12 == 0) {
            return x();
        }
        return G(i10, i11);
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.y
    int d(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return k0.c(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = ~(~((i10 * 31) + get(i11).hashCode()));
        }
        return i10;
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public l1<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public m1<E> listIterator(int i10) {
        com.google.common.base.o.m(i10, size());
        if (isEmpty()) {
            return (m1<E>) EMPTY_ITR;
        }
        return new b(this, i10);
    }
}

package com.google.common.collect;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes8.dex */
public abstract class d0<E> extends y<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    private transient a0<E> asList;

    public static class a<E> extends y.a<E> {
        private int hashCode;
        Object[] hashTable;

        public a() {
            super(4);
        }

        private void k(E e) {
            Objects.requireNonNull(this.hashTable);
            int length = this.hashTable.length - 1;
            int iHashCode = e.hashCode();
            int iB = x.b(iHashCode);
            while (true) {
                int i10 = iB & length;
                Object[] objArr = this.hashTable;
                Object obj = objArr[i10];
                if (obj == null) {
                    objArr[i10] = e;
                    this.hashCode += iHashCode;
                    super.d(e);
                    return;
                } else if (obj.equals(e)) {
                    return;
                } else {
                    iB = i10 + 1;
                }
            }
        }

        public a<E> i(E... eArr) {
            if (this.hashTable != null) {
                for (E e : eArr) {
                    a(e);
                }
            } else {
                super.e(eArr);
            }
            return this;
        }

        public d0<E> l() {
            d0<E> d0VarS;
            int i10 = this.size;
            if (i10 == 0) {
                return d0.x();
            }
            if (i10 == 1) {
                Object obj = this.contents[0];
                Objects.requireNonNull(obj);
                return d0.y(obj);
            }
            if (this.hashTable == null || d0.r(i10) != this.hashTable.length) {
                d0VarS = d0.s(this.size, this.contents);
                this.size = d0VarS.size();
            } else {
                Object[] objArrCopyOf = d0.D(this.size, this.contents.length) ? Arrays.copyOf(this.contents, this.size) : this.contents;
                int i11 = this.hashCode;
                Object[] objArr = this.hashTable;
                d0VarS = new y0<>(objArrCopyOf, i11, objArr, objArr.length - 1, this.size);
            }
            this.forceCopy = true;
            this.hashTable = null;
            return d0VarS;
        }

        @Override // com.google.common.collect.y.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a<E> d(E e) {
            com.google.common.base.o.k(e);
            if (this.hashTable != null && d0.r(this.size) <= this.hashTable.length) {
                k(e);
                return this;
            }
            this.hashTable = null;
            super.d(e);
            return this;
        }

        public a<E> j(Iterable<? extends E> iterable) {
            com.google.common.base.o.k(iterable);
            if (this.hashTable != null) {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            } else {
                super.b(iterable);
            }
            return this;
        }
    }

    private static class b implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        Object readResolve() {
            return d0.u(this.elements);
        }

        b(Object[] objArr) {
            this.elements = objArr;
        }
    }

    public static <E> d0<E> A(E e, E e2, E e6) {
        return s(3, e, e2, e6);
    }

    public static <E> d0<E> B(E e, E e2, E e6, E e7, E e10) {
        return s(5, e, e2, e6, e7, e10);
    }

    @SafeVarargs
    public static <E> d0<E> C(E e, E e2, E e6, E e7, E e10, E e11, E... eArr) {
        com.google.common.base.o.e(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e6;
        objArr[3] = e7;
        objArr[4] = e10;
        objArr[5] = e11;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return s(length, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean D(int i10, int i11) {
        return i10 < (i11 >> 1) + (i11 >> 2);
    }

    static int r(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= CUTOFF) {
            com.google.common.base.o.e(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * DESIRED_LOAD_FACTOR < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> d0<E> u(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            return length != 1 ? s(eArr.length, (Object[]) eArr.clone()) : y(eArr[0]);
        }
        return x();
    }

    public static <E> d0<E> z(E e, E e2) {
        return s(2, e, e2);
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public abstract l1<E> iterator();

    boolean w() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> d0<E> s(int i10, Object... objArr) {
        if (i10 == 0) {
            return x();
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return y(obj);
        }
        int iR = r(i10);
        Object[] objArr2 = new Object[iR];
        int i11 = iR - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object objA = s0.a(objArr[i14], i14);
            int iHashCode = objA.hashCode();
            int iB = x.b(iHashCode);
            while (true) {
                int i15 = iB & i11;
                Object obj2 = objArr2[i15];
                if (obj2 == null) {
                    objArr[i13] = objA;
                    objArr2[i15] = objA;
                    i12 += iHashCode;
                    i13++;
                    break;
                }
                if (obj2.equals(objA)) {
                    break;
                }
                iB++;
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return new g1(obj3);
        }
        if (r(i13) < iR / 2) {
            return s(i13, objArr);
        }
        if (D(i13, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new y0(objArr, i12, objArr2, i11, i13);
    }

    public static <E> d0<E> t(Collection<? extends E> collection) {
        if ((collection instanceof d0) && !(collection instanceof SortedSet)) {
            d0<E> d0Var = (d0) collection;
            if (!d0Var.j()) {
                return d0Var;
            }
        }
        Object[] array = collection.toArray();
        return s(array.length, array);
    }

    public static <E> d0<E> x() {
        return y0.EMPTY;
    }

    public static <E> d0<E> y(E e) {
        return new g1(e);
    }

    @Override // com.google.common.collect.y
    public a0<E> c() {
        a0<E> a0Var = this.asList;
        if (a0Var != null) {
            return a0Var;
        }
        a0<E> a0VarV = v();
        this.asList = a0VarV;
        return a0VarV;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof d0) && w() && ((d0) obj).w() && hashCode() != obj.hashCode()) {
            return false;
        }
        return f1.a(this, obj);
    }

    @Override // com.google.common.collect.y
    Object writeReplace() {
        return new b(toArray());
    }

    d0() {
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return f1.d(this);
    }

    a0<E> v() {
        return a0.p(toArray());
    }
}

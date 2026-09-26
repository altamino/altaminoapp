package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class y<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] EMPTY_ARRAY = new Object[0];

    static abstract class a<E> extends b<E> {
        Object[] contents;
        boolean forceCopy;
        int size;

        public b<E> e(E... eArr) {
            f(eArr, eArr.length);
            return this;
        }

        private void g(int i10) {
            Object[] objArr = this.contents;
            if (objArr.length < i10) {
                this.contents = Arrays.copyOf(objArr, b.c(objArr.length, i10));
                this.forceCopy = false;
            } else if (this.forceCopy) {
                this.contents = (Object[]) objArr.clone();
                this.forceCopy = false;
            }
        }

        @Override // com.google.common.collect.y.b
        public b<E> b(Iterable<? extends E> iterable) {
            if (iterable instanceof Collection) {
                Collection collection = (Collection) iterable;
                g(this.size + collection.size());
                if (collection instanceof y) {
                    this.size = ((y) collection).d(this.contents, this.size);
                    return this;
                }
            }
            super.b(iterable);
            return this;
        }

        a(int i10) {
            k.b(i10, "initialCapacity");
            this.contents = new Object[i10];
            this.size = 0;
        }

        @Override // com.google.common.collect.y.b
        public a<E> d(E e) {
            com.google.common.base.o.k(e);
            g(this.size + 1);
            Object[] objArr = this.contents;
            int i10 = this.size;
            this.size = i10 + 1;
            objArr[i10] = e;
            return this;
        }

        final void f(Object[] objArr, int i10) {
            s0.c(objArr, i10);
            g(this.size + i10);
            System.arraycopy(objArr, 0, this.contents, this.size, i10);
            this.size += i10;
        }
    }

    public static abstract class b<E> {
        static final int DEFAULT_INITIAL_CAPACITY = 4;

        /* JADX INFO: renamed from: a */
        public abstract b<E> d(E e);

        static int c(int i10, int i11) {
            if (i11 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i10 + (i10 >> 1) + 1;
            if (iHighestOneBit < i11) {
                iHighestOneBit = Integer.highestOneBit(i11 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        b() {
        }

        public b<E> b(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                d(it.next());
            }
            return this;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public abstract boolean contains(Object obj);

    Object[] e() {
        return null;
    }

    abstract boolean j();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public abstract l1<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(EMPTY_ARRAY);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    int f() {
        throw new UnsupportedOperationException();
    }

    int g() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        com.google.common.base.o.k(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] objArrE = e();
            if (objArrE != null) {
                return (T[]) u0.a(objArrE, g(), f(), tArr);
            }
            tArr = (T[]) s0.d(tArr, size);
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        d(tArr, 0);
        return tArr;
    }

    Object writeReplace() {
        return new a0.d(toArray());
    }

    y() {
    }

    public a0<E> c() {
        if (isEmpty()) {
            return a0.x();
        }
        return a0.p(toArray());
    }

    int d(Object[] objArr, int i10) {
        l1<E> it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }
}

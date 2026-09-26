package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    static class a<E> extends AbstractCollection<E> {
        final com.google.common.base.p<? super E> predicate;
        final Collection<E> unfiltered;

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return k0.i(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e) {
            com.google.common.base.o.d(this.predicate.apply(e));
            return this.unfiltered.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            h0.h(this.unfiltered, this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (l.c(this.unfiltered, obj)) {
                return this.predicate.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !h0.b(this.unfiltered, this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return i0.j(this.unfiltered.iterator(), this.predicate);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<E> it = this.unfiltered.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.predicate.apply(next) && collection.contains(next)) {
                    it.remove();
                    z6 = true;
                }
            }
            return z6;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<E> it = this.unfiltered.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.predicate.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z6 = true;
                }
            }
            return z6;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it = this.unfiltered.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.predicate.apply(it.next())) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) k0.i(iterator()).toArray(tArr);
        }

        a(Collection<E> collection, com.google.common.base.p<? super E> pVar) {
            this.unfiltered = collection;
            this.predicate = pVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                com.google.common.base.o.d(this.predicate.apply(it.next()));
            }
            return this.unfiltered.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return l.a(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (contains(obj) && this.unfiltered.remove(obj)) {
                return true;
            }
            return false;
        }
    }

    static StringBuilder b(int i10) {
        k.b(i10, "size");
        return new StringBuilder((int) Math.min(((long) i10) * 8, 1073741824L));
    }

    static boolean a(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    static boolean c(Collection<?> collection, Object obj) {
        com.google.common.base.o.k(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}

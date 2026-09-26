package com.google.common.collect;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public final class f1 {

    /* JADX INFO: Add missing generic type declarations: [E] */
    class a<E> extends e<E> {
        final /* synthetic */ Set val$set1;
        final /* synthetic */ Set val$set2;

        /* JADX INFO: renamed from: com.google.common.collect.f1$a$a, reason: collision with other inner class name */
        class C0221a extends com.google.common.collect.b<E> {
            final Iterator<E> itr;

            C0221a() {
                this.itr = a.this.val$set1.iterator();
            }

            @Override // com.google.common.collect.b
            protected E a() {
                while (this.itr.hasNext()) {
                    E next = this.itr.next();
                    if (a.this.val$set2.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.val$set1 = set;
            this.val$set2 = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public l1<E> iterator() {
            return new C0221a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.val$set1.contains(obj) && this.val$set2.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.val$set1.containsAll(collection) && this.val$set2.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.val$set2, this.val$set1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it = this.val$set1.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.val$set2.contains(it.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    private static class c<E> extends b<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.unfiltered).comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) i0.k(this.unfiltered.iterator(), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return new c(((SortedSet) this.unfiltered).headSet(e), this.predicate);
        }

        @Override // java.util.SortedSet
        public E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.unfiltered;
            while (true) {
                E e = (Object) sortedSetHeadSet.last();
                if (this.predicate.apply(e)) {
                    return e;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return new c(((SortedSet) this.unfiltered).subSet(e, e2), this.predicate);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return new c(((SortedSet) this.unfiltered).tailSet(e), this.predicate);
        }

        c(SortedSet<E> sortedSet, com.google.common.base.p<? super E> pVar) {
            super(sortedSet, pVar);
        }
    }

    public static abstract class e<E> extends AbstractSet<E> {
        /* synthetic */ e(e1 e1Var) {
            this();
        }

        private e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }
    }

    static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    static boolean j(Set<?> set, Iterator<?> it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    private static class b<E> extends l.a<E> implements Set<E> {
        b(Set<E> set, com.google.common.base.p<? super E> pVar) {
            super(set, pVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return f1.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return f1.d(this);
        }
    }

    static abstract class d<E> extends AbstractSet<E> {
        d() {
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return f1.i(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) com.google.common.base.o.k(collection));
        }
    }

    public static <E> Set<E> b(Set<E> set, com.google.common.base.p<? super E> pVar) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, pVar);
        }
        if (!(set instanceof b)) {
            return new b((Set) com.google.common.base.o.k(set), (com.google.common.base.p) com.google.common.base.o.k(pVar));
        }
        b bVar = (b) set;
        return new b((Set) bVar.unfiltered, com.google.common.base.q.b(bVar.predicate, pVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> c(SortedSet<E> sortedSet, com.google.common.base.p<? super E> pVar) {
        if (!(sortedSet instanceof b)) {
            return new c((SortedSet) com.google.common.base.o.k(sortedSet), (com.google.common.base.p) com.google.common.base.o.k(pVar));
        }
        b bVar = (b) sortedSet;
        return new c((SortedSet) bVar.unfiltered, com.google.common.base.q.b(bVar.predicate, pVar));
    }

    public static <E> e<E> e(Set<E> set, Set<?> set2) {
        com.google.common.base.o.l(set, "set1");
        com.google.common.base.o.l(set2, "set2");
        return new a(set, set2);
    }

    public static <E> HashSet<E> f() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> g(int i10) {
        return new HashSet<>(l0.a(i10));
    }

    static int d(Set<?> set) {
        int iHashCode;
        int i10 = 0;
        for (Object obj : set) {
            if (obj != null) {
                iHashCode = obj.hashCode();
            } else {
                iHashCode = 0;
            }
            i10 = ~(~(i10 + iHashCode));
        }
        return i10;
    }

    public static <E> Set<E> h() {
        return Collections.newSetFromMap(l0.h());
    }

    static boolean i(Set<?> set, Collection<?> collection) {
        com.google.common.base.o.k(collection);
        if (collection instanceof p0) {
            collection = ((p0) collection).o();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return i0.q(set.iterator(), collection);
        }
        return j(set, collection.iterator());
    }
}

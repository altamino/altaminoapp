package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends s<T> {
        final /* synthetic */ Iterable val$iterable;
        final /* synthetic */ int val$numberToSkip;

        /* JADX INFO: renamed from: com.google.common.collect.h0$a$a, reason: collision with other inner class name */
        class C0222a implements Iterator<T> {
            boolean atStart = true;
            final /* synthetic */ Iterator val$iterator;

            C0222a(a aVar, Iterator it) {
                this.val$iterator = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.val$iterator.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t5 = (T) this.val$iterator.next();
                this.atStart = false;
                return t5;
            }

            @Override // java.util.Iterator
            public void remove() {
                k.c(!this.atStart);
                this.val$iterator.remove();
            }
        }

        a(Iterable iterable, int i10) {
            this.val$iterable = iterable;
            this.val$numberToSkip = i10;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.val$iterable;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.val$numberToSkip), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            i0.b(it, this.val$numberToSkip);
            return new C0222a(this, it);
        }
    }

    private static <T> boolean i(List<T> list, com.google.common.base.p<? super T> pVar) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < list.size()) {
            T t5 = list.get(i10);
            if (!pVar.apply(t5)) {
                if (i10 > i11) {
                    try {
                        list.set(i11, t5);
                    } catch (IllegalArgumentException unused) {
                        k(list, pVar, i11, i10);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        k(list, pVar, i11, i10);
                        return true;
                    }
                }
                i11++;
            }
            i10++;
        }
        list.subList(i11, list.size()).clear();
        return i10 != i11;
    }

    public static <T> boolean a(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : i0.a(collection, ((Iterable) com.google.common.base.o.k(iterable)).iterator());
    }

    private static <E> Collection<E> c(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : k0.i(iterable.iterator());
    }

    public static <T> T e(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) i0.l(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) g(list);
    }

    public static <T> T f(Iterable<? extends T> iterable, T t5) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t5;
            }
            if (iterable instanceof List) {
                return (T) g(k0.a(iterable));
            }
        }
        return (T) i0.m(iterable.iterator(), t5);
    }

    public static <T> boolean h(Iterable<T> iterable, com.google.common.base.p<? super T> pVar) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? i((List) iterable, (com.google.common.base.p) com.google.common.base.o.k(pVar)) : i0.r(iterable.iterator(), pVar);
    }

    public static <T> boolean b(Iterable<T> iterable, com.google.common.base.p<? super T> pVar) {
        return i0.c(iterable.iterator(), pVar);
    }

    public static <T> T d(Iterable<? extends T> iterable, T t5) {
        return (T) i0.n(iterable.iterator(), t5);
    }

    private static <T> T g(List<T> list) {
        return list.get(list.size() - 1);
    }

    public static <T> Iterable<T> j(Iterable<T> iterable, int i10) {
        boolean z6;
        com.google.common.base.o.k(iterable);
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.common.base.o.e(z6, "number to skip cannot be negative");
        return new a(iterable, i10);
    }

    private static <T> void k(List<T> list, com.google.common.base.p<? super T> pVar, int i10, int i11) {
        for (int size = list.size() - 1; size > i11; size--) {
            if (pVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            list.remove(i12);
        }
    }

    static Object[] l(Iterable<?> iterable) {
        return c(iterable).toArray();
    }

    public static String m(Iterable<?> iterable) {
        return i0.t(iterable.iterator());
    }
}

package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class c<E> extends kotlin.collections.a<E> implements List<E> {

    @NotNull
    public static final a Companion = new a(null);
    private static final int maxArraySize = 2147483639;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        public final int e(int i10, int i11) {
            int i12 = i10 + (i10 >> 1);
            if (i12 - i11 < 0) {
                i12 = i11;
            }
            if (i12 - c.maxArraySize <= 0) {
                return i12;
            }
            if (i11 > c.maxArraySize) {
                return Integer.MAX_VALUE;
            }
            return c.maxArraySize;
        }

        private a() {
        }

        public final void a(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("startIndex: " + i10 + ", endIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + i10 + " > endIndex: " + i11);
        }

        public final void b(int i10, int i11) {
            if (i10 < 0 || i10 >= i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void c(int i10, int i11) {
            if (i10 < 0 || i10 > i11) {
                throw new IndexOutOfBoundsException("index: " + i10 + ", size: " + i11);
            }
        }

        public final void d(int i10, int i11, int i12) {
            if (i10 < 0 || i11 > i12) {
                throw new IndexOutOfBoundsException("fromIndex: " + i10 + ", toIndex: " + i11 + ", size: " + i12);
            }
            if (i10 <= i11) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + i10 + " > toIndex: " + i11);
        }

        public final boolean f(@NotNull Collection<?> c7, @NotNull Collection<?> other) {
            kotlin.jvm.internal.t.j(c7, "c");
            kotlin.jvm.internal.t.j(other, "other");
            if (c7.size() != other.size()) {
                return false;
            }
            Iterator<?> it = other.iterator();
            Iterator<?> it2 = c7.iterator();
            while (it2.hasNext()) {
                if (!kotlin.jvm.internal.t.e(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(@NotNull Collection<?> c7) {
            kotlin.jvm.internal.t.j(c7, "c");
            Iterator<?> it = c7.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                Object next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }
    }

    private class b implements Iterator<E>, f8.a {
        private int index;

        protected final int a() {
            return this.index;
        }

        protected final void b(int i10) {
            this.index = i10;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public b() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < c.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                c<E> cVar = c.this;
                int i10 = this.index;
                this.index = i10 + 1;
                return cVar.get(i10);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.c$c, reason: collision with other inner class name */
    private class C0423c extends c<E>.b implements ListIterator<E> {
        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public C0423c(int i10) {
            super();
            c.Companion.c(i10, c.this.size());
            b(i10);
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            if (a() > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return a();
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                c<E> cVar = c.this;
                b(a() - 1);
                return cVar.get(a());
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return a() - 1;
        }
    }

    private static final class d<E> extends c<E> implements RandomAccess {
        private int _size;
        private final int fromIndex;

        @NotNull
        private final c<E> list;

        @Override // kotlin.collections.c, kotlin.collections.a
        public int getSize() {
            return this._size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(@NotNull c<? extends E> list, int i10, int i11) {
            kotlin.jvm.internal.t.j(list, "list");
            this.list = list;
            this.fromIndex = i10;
            c.Companion.d(i10, i11, list.size());
            this._size = i11 - i10;
        }

        @Override // kotlin.collections.c, java.util.List
        public E get(int i10) {
            c.Companion.b(i10, this._size);
            return this.list.get(this.fromIndex + i10);
        }
    }

    @Override // java.util.List
    public void add(int i10, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract E get(int i10);

    @Override // kotlin.collections.a
    public abstract int getSize();

    @NotNull
    public ListIterator<E> listIterator() {
        return new C0423c(0);
    }

    @Override // java.util.List
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i10, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            return Companion.f(this, (Collection) obj);
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return Companion.g(this);
    }

    @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new b();
    }

    @NotNull
    public ListIterator<E> listIterator(int i10) {
        return new C0423c(i10);
    }

    @NotNull
    public List<E> subList(int i10, int i11) {
        return new d(this, i10, i11);
    }

    protected c() {
    }

    public int indexOf(E e) {
        Iterator<E> it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!kotlin.jvm.internal.t.e(it.next(), e)) {
                i10++;
            } else {
                return i10;
            }
        }
        return -1;
    }

    public int lastIndexOf(E e) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.t.e(listIterator.previous(), e)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }
}

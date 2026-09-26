package x7;

import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.o;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class b<E> extends kotlin.collections.f<E> implements RandomAccess, Serializable {

    @NotNull
    private static final a Companion = new a(null);

    @NotNull
    private static final b Empty;

    @NotNull
    private E[] array;

    @Nullable
    private final b<E> backing;
    private boolean isReadOnly;
    private int length;
    private int offset;

    @Nullable
    private final b<E> root;

    private static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: x7.b$b, reason: collision with other inner class name */
    private static final class C0504b<E> implements ListIterator<E>, f8.a {
        private int expectedModCount;
        private int index;
        private int lastIndex;

        @NotNull
        private final b<E> list;

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.index - 1;
        }

        public C0504b(@NotNull b<E> list, int i10) {
            t.j(list, "list");
            this.list = list;
            this.index = i10;
            this.lastIndex = -1;
            this.expectedModCount = ((AbstractList) list).modCount;
        }

        private final void a() {
            if (((AbstractList) this.list).modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < ((b) this.list).length;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            a();
            b<E> bVar = this.list;
            int i10 = this.index;
            this.index = i10 + 1;
            bVar.add(i10, e);
            this.lastIndex = -1;
            this.expectedModCount = ((AbstractList) this.list).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            a();
            if (this.index < ((b) this.list).length) {
                int i10 = this.index;
                this.index = i10 + 1;
                this.lastIndex = i10;
                return (E) ((b) this.list).array[((b) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public E previous() {
            a();
            int i10 = this.index;
            if (i10 > 0) {
                int i11 = i10 - 1;
                this.index = i11;
                this.lastIndex = i11;
                return (E) ((b) this.list).array[((b) this.list).offset + this.lastIndex];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            a();
            int i10 = this.lastIndex;
            if (i10 != -1) {
                this.list.remove(i10);
                this.index = this.lastIndex;
                this.lastIndex = -1;
                this.expectedModCount = ((AbstractList) this.list).modCount;
                return;
            }
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            a();
            int i10 = this.lastIndex;
            if (i10 != -1) {
                this.list.set(i10, e);
                return;
            }
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
    }

    private b(E[] eArr, int i10, int i11, boolean z6, b<E> bVar, b<E> bVar2) {
        this.array = eArr;
        this.offset = i10;
        this.length = i11;
        this.isReadOnly = z6;
        this.backing = bVar;
        this.root = bVar2;
        if (bVar != null) {
            ((AbstractList) this).modCount = ((AbstractList) bVar).modCount;
        }
    }

    private final void z() {
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        t();
        s();
        q(this.offset + this.length, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        t();
        s();
        int size = elements.size();
        p(this.offset + this.length, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] destination) {
        t.j(destination, "destination");
        s();
        int length = destination.length;
        int i10 = this.length;
        if (length >= i10) {
            E[] eArr = this.array;
            int i11 = this.offset;
            o.i(eArr, destination, 0, i11, i10 + i11);
            return (T[]) u.f(this.length, destination);
        }
        E[] eArr2 = this.array;
        int i12 = this.offset;
        T[] tArr = (T[]) Arrays.copyOfRange(eArr2, i12, i10 + i12, destination.getClass());
        t.i(tArr, "copyOfRange(...)");
        return tArr;
    }

    static {
        b bVar = new b(0);
        bVar.isReadOnly = true;
        Empty = bVar;
    }

    private final void B(int i10, int i11) {
        if (i11 > 0) {
            z();
        }
        b<E> bVar = this.backing;
        if (bVar != null) {
            bVar.B(i10, i11);
        } else {
            E[] eArr = this.array;
            o.i(eArr, eArr, i10, i10 + i11, this.length);
            E[] eArr2 = this.array;
            int i12 = this.length;
            c.g(eArr2, i12 - i11, i12);
        }
        this.length -= i11;
    }

    private final int C(int i10, int i11, Collection<? extends E> collection, boolean z6) {
        int iC;
        b<E> bVar = this.backing;
        if (bVar != null) {
            iC = bVar.C(i10, i11, collection, z6);
        } else {
            int i12 = 0;
            int i13 = 0;
            while (i12 < i11) {
                int i14 = i10 + i12;
                if (collection.contains(this.array[i14]) == z6) {
                    E[] eArr = this.array;
                    i12++;
                    eArr[i13 + i10] = eArr[i14];
                    i13++;
                } else {
                    i12++;
                }
            }
            int i15 = i11 - i13;
            E[] eArr2 = this.array;
            o.i(eArr2, eArr2, i10 + i13, i11 + i10, this.length);
            E[] eArr3 = this.array;
            int i16 = this.length;
            c.g(eArr3, i16 - i15, i16);
            iC = i15;
        }
        if (iC > 0) {
            z();
        }
        this.length -= iC;
        return iC;
    }

    private final void s() {
        b<E> bVar = this.root;
        if (bVar != null && ((AbstractList) bVar).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    private final boolean u(List<?> list) {
        return c.h(this.array, this.offset, this.length, list);
    }

    private final void v(int i10) {
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.array;
        if (i10 > eArr.length) {
            this.array = (E[]) c.e(this.array, kotlin.collections.c.Companion.e(eArr.length, i10));
        }
    }

    private final void w(int i10) {
        v(this.length + i10);
    }

    private final boolean y() {
        b<E> bVar;
        return this.isReadOnly || ((bVar = this.root) != null && bVar.isReadOnly);
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        s();
        kotlin.collections.c.Companion.c(i10, this.length);
        return new C0504b(this, i10);
    }

    @NotNull
    public final List<E> r() {
        if (this.backing != null) {
            throw new IllegalStateException();
        }
        t();
        this.isReadOnly = true;
        return this.length > 0 ? this : Empty;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        t();
        s();
        return C(this.offset, this.length, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        t();
        s();
        return C(this.offset, this.length, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    @NotNull
    public List<E> subList(int i10, int i11) {
        kotlin.collections.c.Companion.d(i10, i11, this.length);
        E[] eArr = this.array;
        int i12 = this.offset + i10;
        int i13 = i11 - i10;
        boolean z6 = this.isReadOnly;
        b<E> bVar = this.root;
        return new b(eArr, i12, i13, z6, this, bVar == null ? this : bVar);
    }

    public b() {
        this(10);
    }

    private final E A(int i10) {
        z();
        b<E> bVar = this.backing;
        if (bVar != null) {
            E eA = bVar.A(i10);
            this.length--;
            return eA;
        }
        E[] eArr = this.array;
        E e = eArr[i10];
        o.i(eArr, eArr, i10, i10 + 1, this.offset + this.length);
        c.f(this.array, (this.offset + this.length) - 1);
        this.length--;
        return e;
    }

    private final void p(int i10, Collection<? extends E> collection, int i11) {
        z();
        b<E> bVar = this.backing;
        if (bVar != null) {
            bVar.p(i10, collection, i11);
            this.array = this.backing.array;
            this.length += i11;
        } else {
            x(i10, i11);
            Iterator<? extends E> it = collection.iterator();
            for (int i12 = 0; i12 < i11; i12++) {
                this.array[i10 + i12] = it.next();
            }
        }
    }

    private final void q(int i10, E e) {
        z();
        b<E> bVar = this.backing;
        if (bVar != null) {
            bVar.q(i10, e);
            this.array = this.backing.array;
            this.length++;
        } else {
            x(i10, 1);
            this.array[i10] = e;
        }
    }

    private final void t() {
        if (!y()) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    private final Object writeReplace() throws NotSerializableException {
        if (y()) {
            return new h(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    private final void x(int i10, int i11) {
        w(i11);
        E[] eArr = this.array;
        o.i(eArr, eArr, i10 + i11, i10, this.offset + this.length);
        this.length += i11;
    }

    @Override // kotlin.collections.f
    public int c() {
        s();
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        t();
        s();
        B(this.offset, this.length);
    }

    @Override // kotlin.collections.f
    public E e(int i10) {
        t();
        s();
        kotlin.collections.c.Companion.b(i10, this.length);
        return A(this.offset + i10);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        s();
        if (obj != this && (!(obj instanceof List) || !u((List) obj))) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        s();
        kotlin.collections.c.Companion.b(i10, this.length);
        return this.array[this.offset + i10];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        s();
        return c.i(this.array, this.offset, this.length);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        s();
        for (int i10 = 0; i10 < this.length; i10++) {
            if (t.e(this.array[this.offset + i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        s();
        if (this.length == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        s();
        for (int i10 = this.length - 1; i10 >= 0; i10--) {
            if (t.e(this.array[this.offset + i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        t();
        s();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            remove(iIndexOf);
        }
        if (iIndexOf >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i10, E e) {
        t();
        s();
        kotlin.collections.c.Companion.b(i10, this.length);
        E[] eArr = this.array;
        int i11 = this.offset;
        E e2 = eArr[i11 + i10];
        eArr[i11 + i10] = e;
        return e2;
    }

    @Override // java.util.AbstractCollection
    @NotNull
    public String toString() {
        s();
        return c.j(this.array, this.offset, this.length, this);
    }

    public b(int i10) {
        this(c.d(i10), 0, 0, false, null, null);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, E e) {
        t();
        s();
        kotlin.collections.c.Companion.c(i10, this.length);
        q(this.offset + i10, e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        t.j(elements, "elements");
        t();
        s();
        kotlin.collections.c.Companion.c(i10, this.length);
        int size = elements.size();
        p(this.offset + i10, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        s();
        E[] eArr = this.array;
        int i10 = this.offset;
        return o.p(eArr, i10, this.length + i10);
    }
}

package w7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class j0 implements Collection<i0>, f8.a {

    @NotNull
    private final short[] storage;

    private static final class a implements Iterator<i0>, f8.a {

        @NotNull
        private final short[] array;
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull short[] array) {
            kotlin.jvm.internal.t.j(array, "array");
            this.array = array;
        }

        public short a() {
            int i10 = this.index;
            short[] sArr = this.array;
            if (i10 >= sArr.length) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            this.index = i10 + 1;
            return i0.b(sArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ i0 next() {
            return i0.a(a());
        }
    }

    public static final /* synthetic */ j0 a(short[] sArr) {
        return new j0(sArr);
    }

    @NotNull
    public static short[] e(@NotNull short[] storage) {
        kotlin.jvm.internal.t.j(storage, "storage");
        return storage;
    }

    public static boolean m(short[] sArr, Object obj) {
        return (obj instanceof j0) && kotlin.jvm.internal.t.e(sArr, ((j0) obj).x());
    }

    public static int r(short[] sArr) {
        return sArr.length;
    }

    public static int s(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    public static boolean t(short[] sArr) {
        return sArr.length == 0;
    }

    public static String w(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(i0 i0Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends i0> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m(this.storage, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return s(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return kotlin.jvm.internal.j.a(this);
    }

    public String toString() {
        return w(this.storage);
    }

    public final /* synthetic */ short[] x() {
        return this.storage;
    }

    @NotNull
    public static short[] c(int i10) {
        return e(new short[i10]);
    }

    public static boolean j(short[] sArr, @NotNull Collection<i0> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Collection<i0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof i0) || !kotlin.collections.p.G(sArr, ((i0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static final short p(short[] sArr, int i10) {
        return i0.b(sArr[i10]);
    }

    @NotNull
    public static Iterator<i0> u(short[] sArr) {
        return new a(sArr);
    }

    public static final void v(short[] sArr, int i10, short s) {
        sArr[i10] = s;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof i0) {
            return f(((i0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return j(this.storage, elements);
    }

    public boolean f(short s) {
        return g(this.storage, s);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return t(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<i0> iterator() {
        return u(this.storage);
    }

    @Override // java.util.Collection
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public int size() {
        return r(this.storage);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        return (T[]) kotlin.jvm.internal.j.b(this, array);
    }

    private /* synthetic */ j0(short[] sArr) {
        this.storage = sArr;
    }

    public static boolean g(short[] sArr, short s) {
        return kotlin.collections.p.G(sArr, s);
    }
}

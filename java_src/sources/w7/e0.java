package w7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class e0 implements Collection<d0>, f8.a {

    @NotNull
    private final int[] storage;

    private static final class a implements Iterator<d0>, f8.a {

        @NotNull
        private final int[] array;
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull int[] array) {
            kotlin.jvm.internal.t.j(array, "array");
            this.array = array;
        }

        public int a() {
            int i10 = this.index;
            int[] iArr = this.array;
            if (i10 >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            this.index = i10 + 1;
            return d0.b(iArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ d0 next() {
            return d0.a(a());
        }
    }

    public static final /* synthetic */ e0 a(int[] iArr) {
        return new e0(iArr);
    }

    @NotNull
    public static int[] e(@NotNull int[] storage) {
        kotlin.jvm.internal.t.j(storage, "storage");
        return storage;
    }

    public static boolean m(int[] iArr, Object obj) {
        return (obj instanceof e0) && kotlin.jvm.internal.t.e(iArr, ((e0) obj).x());
    }

    public static int r(int[] iArr) {
        return iArr.length;
    }

    public static int s(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean t(int[] iArr) {
        return iArr.length == 0;
    }

    public static String w(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(d0 d0Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends d0> collection) {
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

    public final /* synthetic */ int[] x() {
        return this.storage;
    }

    @NotNull
    public static int[] c(int i10) {
        return e(new int[i10]);
    }

    public static boolean j(int[] iArr, @NotNull Collection<d0> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Collection<d0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof d0) || !kotlin.collections.p.D(iArr, ((d0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static final int p(int[] iArr, int i10) {
        return d0.b(iArr[i10]);
    }

    @NotNull
    public static Iterator<d0> u(int[] iArr) {
        return new a(iArr);
    }

    public static final void v(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof d0) {
            return f(((d0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return j(this.storage, elements);
    }

    public boolean f(int i10) {
        return g(this.storage, i10);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return t(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<d0> iterator() {
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

    private /* synthetic */ e0(int[] iArr) {
        this.storage = iArr;
    }

    public static boolean g(int[] iArr, int i10) {
        return kotlin.collections.p.D(iArr, i10);
    }
}

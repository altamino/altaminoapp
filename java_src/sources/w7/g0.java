package w7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class g0 implements Collection<f0>, f8.a {

    @NotNull
    private final long[] storage;

    private static final class a implements Iterator<f0>, f8.a {

        @NotNull
        private final long[] array;
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull long[] array) {
            kotlin.jvm.internal.t.j(array, "array");
            this.array = array;
        }

        public long a() {
            int i10 = this.index;
            long[] jArr = this.array;
            if (i10 >= jArr.length) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            this.index = i10 + 1;
            return f0.b(jArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ f0 next() {
            return f0.a(a());
        }
    }

    public static final /* synthetic */ g0 a(long[] jArr) {
        return new g0(jArr);
    }

    @NotNull
    public static long[] e(@NotNull long[] storage) {
        kotlin.jvm.internal.t.j(storage, "storage");
        return storage;
    }

    public static boolean m(long[] jArr, Object obj) {
        return (obj instanceof g0) && kotlin.jvm.internal.t.e(jArr, ((g0) obj).x());
    }

    public static int r(long[] jArr) {
        return jArr.length;
    }

    public static int s(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    public static boolean t(long[] jArr) {
        return jArr.length == 0;
    }

    public static String w(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(f0 f0Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends f0> collection) {
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

    public final /* synthetic */ long[] x() {
        return this.storage;
    }

    @NotNull
    public static long[] c(int i10) {
        return e(new long[i10]);
    }

    public static boolean j(long[] jArr, @NotNull Collection<f0> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Collection<f0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof f0) || !kotlin.collections.p.E(jArr, ((f0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static final long p(long[] jArr, int i10) {
        return f0.b(jArr[i10]);
    }

    @NotNull
    public static Iterator<f0> u(long[] jArr) {
        return new a(jArr);
    }

    public static final void v(long[] jArr, int i10, long j6) {
        jArr[i10] = j6;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof f0) {
            return f(((f0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return j(this.storage, elements);
    }

    public boolean f(long j6) {
        return g(this.storage, j6);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return t(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<f0> iterator() {
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

    private /* synthetic */ g0(long[] jArr) {
        this.storage = jArr;
    }

    public static boolean g(long[] jArr, long j6) {
        return kotlin.collections.p.E(jArr, j6);
    }
}

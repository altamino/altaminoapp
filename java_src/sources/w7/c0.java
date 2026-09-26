package w7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 implements Collection<b0>, f8.a {

    @NotNull
    private final byte[] storage;

    private static final class a implements Iterator<b0>, f8.a {

        @NotNull
        private final byte[] array;
        private int index;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(@NotNull byte[] array) {
            kotlin.jvm.internal.t.j(array, "array");
            this.array = array;
        }

        public byte a() {
            int i10 = this.index;
            byte[] bArr = this.array;
            if (i10 >= bArr.length) {
                throw new NoSuchElementException(String.valueOf(this.index));
            }
            this.index = i10 + 1;
            return b0.b(bArr[i10]);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ b0 next() {
            return b0.a(a());
        }
    }

    public static final /* synthetic */ c0 a(byte[] bArr) {
        return new c0(bArr);
    }

    @NotNull
    public static byte[] e(@NotNull byte[] storage) {
        kotlin.jvm.internal.t.j(storage, "storage");
        return storage;
    }

    public static boolean m(byte[] bArr, Object obj) {
        return (obj instanceof c0) && kotlin.jvm.internal.t.e(bArr, ((c0) obj).x());
    }

    public static int r(byte[] bArr) {
        return bArr.length;
    }

    public static int s(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    public static boolean t(byte[] bArr) {
        return bArr.length == 0;
    }

    public static String w(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(b0 b0Var) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends b0> collection) {
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

    public final /* synthetic */ byte[] x() {
        return this.storage;
    }

    @NotNull
    public static byte[] c(int i10) {
        return e(new byte[i10]);
    }

    public static boolean j(byte[] bArr, @NotNull Collection<b0> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Collection<b0> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof b0) || !kotlin.collections.p.B(bArr, ((b0) obj).f())) {
                return false;
            }
        }
        return true;
    }

    public static final byte p(byte[] bArr, int i10) {
        return b0.b(bArr[i10]);
    }

    @NotNull
    public static Iterator<b0> u(byte[] bArr) {
        return new a(bArr);
    }

    public static final void v(byte[] bArr, int i10, byte b7) {
        bArr[i10] = b7;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof b0) {
            return f(((b0) obj).f());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        return j(this.storage, elements);
    }

    public boolean f(byte b7) {
        return g(this.storage, b7);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return t(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<b0> iterator() {
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

    private /* synthetic */ c0(byte[] bArr) {
        this.storage = bArr;
    }

    public static boolean g(byte[] bArr, byte b7) {
        return kotlin.collections.p.B(bArr, b7);
    }
}

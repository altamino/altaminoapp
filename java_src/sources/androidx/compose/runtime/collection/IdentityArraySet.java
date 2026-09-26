package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import f8.a;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.o;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class IdentityArraySet<T> implements Set<T>, a {
    private int size;

    @NotNull
    private Object[] values = new Object[16];

    /* JADX INFO: renamed from: androidx.compose.runtime.collection.IdentityArraySet$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<T>, a {
        private int index;
        final /* synthetic */ IdentityArraySet<T> this$0;

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        AnonymousClass1(IdentityArraySet<T> identityArraySet) {
            this.this$0 = identityArraySet;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.this$0.size();
        }

        @Override // java.util.Iterator
        @NotNull
        public T next() {
            Object[] objArrE = this.this$0.e();
            int i10 = this.index;
            this.index = i10 + 1;
            T t5 = (T) objArrE[i10];
            if (t5 != null) {
                return t5;
            }
            throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int c() {
        return this.size;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return obj != null && a(obj) >= 0;
    }

    @NotNull
    public final Object[] e() {
        return this.values;
    }

    public void g(int i10) {
        this.size = i10;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(@Nullable T t5) {
        int iA;
        if (t5 == null || (iA = a(t5)) < 0) {
            return false;
        }
        if (iA < size() - 1) {
            Object[] objArr = this.values;
            o.i(objArr, objArr, iA, iA + 1, size());
        }
        g(size() - 1);
        this.values[size()] = null;
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    private final int b(int i10, Object obj, int i11) {
        for (int i12 = i10 - 1; -1 < i12; i12--) {
            Object obj2 = this.values[i12];
            if (obj2 == obj) {
                return i12;
            }
            if (ActualJvm_jvmKt.a(obj2) != i11) {
                break;
            }
        }
        int size = i10 + 1;
        int size2 = size();
        while (size < size2) {
            Object obj3 = this.values[size];
            if (obj3 == obj) {
                return size;
            }
            if (ActualJvm_jvmKt.a(obj3) != i11) {
                return -(size + 1);
            }
            size++;
        }
        size = size();
        return -(size + 1);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(@NotNull T value) {
        int iA;
        t.j(value, "value");
        if (size() > 0) {
            iA = a(value);
            if (iA >= 0) {
                return false;
            }
        } else {
            iA = -1;
        }
        int i10 = -(iA + 1);
        int size = size();
        Object[] objArr = this.values;
        if (size == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            o.i(objArr, objArr2, i10 + 1, i10, size());
            o.m(this.values, objArr2, 0, 0, i10, 6, null);
            this.values = objArr2;
        } else {
            o.i(objArr, objArr, i10 + 1, i10, size());
        }
        this.values[i10] = value;
        g(size() + 1);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final T get(int i10) {
        T t5 = (T) this.values[i10];
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new AnonymousClass1(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    private final int a(Object obj) {
        int size = size() - 1;
        int iA = ActualJvm_jvmKt.a(obj);
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            T t5 = get(i11);
            int iA2 = ActualJvm_jvmKt.a(t5);
            if (iA2 < iA) {
                i10 = i11 + 1;
            } else if (iA2 > iA) {
                size = i11 - 1;
            } else {
                if (t5 == obj) {
                    return i11;
                }
                return b(i11, obj, iA);
            }
        }
        return -(i10 + 1);
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            this.values[i10] = null;
        }
        g(0);
    }

    public final boolean f() {
        if (size() > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }
}

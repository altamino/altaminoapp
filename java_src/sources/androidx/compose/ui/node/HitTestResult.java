package androidx.compose.ui.node;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.collections.o;
import kotlin.collections.v;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class HitTestResult<T> implements List<T>, f8.a {
    private int size;

    @NotNull
    private Object[] values = new Object[16];

    @NotNull
    private long[] distanceFromEdgeAndInLayer = new long[16];
    private int hitDepth = -1;

    private final class HitTestResultIterator implements ListIterator<T>, f8.a {
        private int index;
        private final int maxIndex;
        private final int minIndex;

        public HitTestResultIterator(int i10, int i11, int i12) {
            this.index = i10;
            this.minIndex = i11;
            this.maxIndex = i12;
        }

        @Override // java.util.ListIterator
        public void add(T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < this.maxIndex;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.index > this.minIndex;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.index - this.minIndex;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return (this.index - this.minIndex) - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public void set(T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public /* synthetic */ HitTestResultIterator(HitTestResult hitTestResult, int i10, int i11, int i12, int i13, k kVar) {
            this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? hitTestResult.size() : i12);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            Object[] objArr = ((HitTestResult) HitTestResult.this).values;
            int i10 = this.index;
            this.index = i10 + 1;
            return (T) objArr[i10];
        }

        @Override // java.util.ListIterator
        public T previous() {
            Object[] objArr = ((HitTestResult) HitTestResult.this).values;
            int i10 = this.index - 1;
            this.index = i10;
            return (T) objArr[i10];
        }
    }

    private final class SubList implements List<T>, f8.a {
        private final int maxIndex;
        private final int minIndex;

        @Override // java.util.List
        public void add(int i10, T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public boolean addAll(int i10, Collection<? extends T> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public int c() {
            return this.maxIndex - this.minIndex;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i10 = this.minIndex;
            return hitTestResult.new HitTestResultIterator(i10, i10, this.maxIndex);
        }

        @Override // java.util.List
        public T remove(int i10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public void replaceAll(UnaryOperator<T> unaryOperator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public T set(int i10, T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public void sort(Comparator<? super T> comparator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return j.a(this);
        }

        public SubList(int i10, int i11) {
            this.minIndex = i10;
            this.maxIndex = i11;
        }

        @Override // java.util.List, java.util.Collection
        public boolean add(T t5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(Collection<? extends T> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public T get(int i10) {
            return (T) ((HitTestResult) HitTestResult.this).values[i10 + this.minIndex];
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int i10 = this.minIndex;
            int i11 = this.maxIndex;
            if (i10 > i11) {
                return -1;
            }
            while (!t.e(((HitTestResult) HitTestResult.this).values[i10], obj)) {
                if (i10 == i11) {
                    return -1;
                }
                i10++;
            }
            return i10 - this.minIndex;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i10 = this.minIndex;
            return hitTestResult.new HitTestResultIterator(i10, i10, this.maxIndex);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int i10 = this.maxIndex;
            int i11 = this.minIndex;
            if (i11 > i10) {
                return -1;
            }
            while (!t.e(((HitTestResult) HitTestResult.this).values[i10], obj)) {
                if (i10 == i11) {
                    return -1;
                }
                i10--;
            }
            return i10 - this.minIndex;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i11 = this.minIndex;
            return hitTestResult.new HitTestResultIterator(i10 + i11, i11, this.maxIndex);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            HitTestResult<T> hitTestResult = HitTestResult.this;
            int i12 = this.minIndex;
            return hitTestResult.new SubList(i10 + i12, i12 + i11);
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            t.j(array, "array");
            return (T[]) j.b(this, array);
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            if (indexOf(obj) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            if (size() == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return c();
        }
    }

    @Override // java.util.List
    public void add(int i10, T t5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.hitDepth = -1;
        u();
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    public int p() {
        return this.size;
    }

    @Override // java.util.List
    public T remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<T> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public T set(int i10, T t5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super T> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    private final void j() {
        int i10 = this.hitDepth;
        Object[] objArr = this.values;
        if (i10 >= objArr.length) {
            int length = objArr.length + 16;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, length);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            this.values = objArrCopyOf;
            long[] jArrCopyOf = Arrays.copyOf(this.distanceFromEdgeAndInLayer, length);
            t.i(jArrCopyOf, "copyOf(this, newSize)");
            this.distanceFromEdgeAndInLayer = jArrCopyOf;
        }
    }

    private final long m() {
        long jA = HitTestResultKt.a(Float.POSITIVE_INFINITY, false);
        int i10 = this.hitDepth + 1;
        int iO = v.o(this);
        if (i10 <= iO) {
            while (true) {
                long jB = DistanceAndInLayer.b(this.distanceFromEdgeAndInLayer[i10]);
                if (DistanceAndInLayer.a(jB, jA) < 0) {
                    jA = jB;
                }
                if (DistanceAndInLayer.d(jA) < 0.0f && DistanceAndInLayer.f(jA)) {
                    return jA;
                }
                if (i10 != iO) {
                    i10++;
                }
            }
        }
        return jA;
    }

    private final void u() {
        int i10 = this.hitDepth + 1;
        int iO = v.o(this);
        if (i10 <= iO) {
            while (true) {
                this.values[i10] = null;
                if (i10 == iO) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        this.size = this.hitDepth + 1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public T get(int i10) {
        return (T) this.values[i10];
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return new HitTestResultIterator(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        return new HitTestResultIterator(this, i10, 0, 0, 6, null);
    }

    public final void r(T t5, boolean z6, @NotNull e8.a<l0> childHitTest) {
        t.j(childHitTest, "childHitTest");
        s(t5, -1.0f, z6, childHitTest);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void s(T t5, float f, boolean z6, @NotNull e8.a<l0> childHitTest) {
        t.j(childHitTest, "childHitTest");
        int i10 = this.hitDepth;
        this.hitDepth = i10 + 1;
        j();
        Object[] objArr = this.values;
        int i11 = this.hitDepth;
        objArr[i11] = t5;
        this.distanceFromEdgeAndInLayer[i11] = HitTestResultKt.a(f, z6);
        u();
        childHitTest.invoke();
        this.hitDepth = i10;
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        return new SubList(i10, i11);
    }

    public final boolean t(float f, boolean z6) {
        if (this.hitDepth == v.o(this)) {
            return true;
        }
        return DistanceAndInLayer.a(m(), HitTestResultKt.a(f, z6)) > 0;
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    public final void v(T t5, float f, boolean z6, @NotNull e8.a<l0> childHitTest) {
        t.j(childHitTest, "childHitTest");
        if (this.hitDepth == v.o(this)) {
            s(t5, f, z6, childHitTest);
            if (this.hitDepth + 1 == v.o(this)) {
                u();
                return;
            }
            return;
        }
        long jM = m();
        int i10 = this.hitDepth;
        this.hitDepth = v.o(this);
        s(t5, f, z6, childHitTest);
        if (this.hitDepth + 1 < v.o(this) && DistanceAndInLayer.a(jM, m()) > 0) {
            int i11 = this.hitDepth + 1;
            int i12 = i10 + 1;
            Object[] objArr = this.values;
            o.i(objArr, objArr, i12, i11, size());
            long[] jArr = this.distanceFromEdgeAndInLayer;
            o.h(jArr, jArr, i12, i11, size());
            this.hitDepth = ((size() + i10) - this.hitDepth) - 1;
        }
        u();
        this.hitDepth = i10;
    }

    public final void c() {
        this.hitDepth = size() - 1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int iO = v.o(this);
        if (iO >= 0) {
            int i10 = 0;
            while (!t.e(this.values[i10], obj)) {
                if (i10 != iO) {
                    i10++;
                } else {
                    return -1;
                }
            }
            return i10;
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        for (int iO = v.o(this); -1 < iO; iO--) {
            if (t.e(this.values[iO], obj)) {
                return iO;
            }
        }
        return -1;
    }

    public final boolean q() {
        long jM = m();
        if (DistanceAndInLayer.d(jM) < 0.0f && DistanceAndInLayer.f(jM)) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return p();
    }
}

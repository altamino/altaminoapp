package androidx.compose.runtime.collection;

import androidx.compose.runtime.internal.StabilityInferred;
import f8.a;
import f8.d;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.collections.o;
import kotlin.collections.v;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class MutableVector<T> implements RandomAccess {
    public static final int $stable = 8;

    @NotNull
    private T[] content;

    @Nullable
    private List<T> list;
    private int size;

    private static final class MutableVectorList<T> implements List<T>, d {

        @NotNull
        private final MutableVector<T> vector;

        @Override // java.util.List, java.util.Collection
        public boolean add(T t5) {
            return this.vector.b(t5);
        }

        @Override // java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
            t.j(elements, "elements");
            return this.vector.d(i10, elements);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return e(i10);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return j.a(this);
        }

        public MutableVectorList(@NotNull MutableVector<T> vector) {
            t.j(vector, "vector");
            this.vector = vector;
        }

        @Override // java.util.List
        public void add(int i10, T t5) {
            this.vector.a(i10, t5);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            t.j(elements, "elements");
            return this.vector.f(elements);
        }

        public int c() {
            return this.vector.n();
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            this.vector.h();
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            return this.vector.i(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            return this.vector.j(elements);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            return this.vector.o(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.vector.p();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            return this.vector.r(obj);
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            return new VectorListIterator(this, i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            return this.vector.s(obj);
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            return this.vector.u(elements);
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            return this.vector.x(elements);
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            t.j(array, "array");
            return (T[]) j.b(this, array);
        }

        public T e(int i10) {
            MutableVectorKt.c(this, i10);
            return this.vector.v(i10);
        }

        @Override // java.util.List
        public T get(int i10) {
            MutableVectorKt.c(this, i10);
            return this.vector.m()[i10];
        }

        @Override // java.util.List
        public T set(int i10, T t5) {
            MutableVectorKt.c(this, i10);
            return this.vector.y(i10, t5);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return c();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            MutableVectorKt.d(this, i10, i11);
            return new SubList(this, i10, i11);
        }
    }

    private static final class SubList<T> implements List<T>, d {
        private int end;

        @NotNull
        private final List<T> list;
        private final int start;

        @Override // java.util.List, java.util.Collection
        public boolean add(T t5) {
            List<T> list = this.list;
            int i10 = this.end;
            this.end = i10 + 1;
            list.add(i10, t5);
            return true;
        }

        @Override // java.util.List
        public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
            t.j(elements, "elements");
            this.list.addAll(i10 + this.start, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }

        public int c() {
            return this.end - this.start;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return this.end == this.start;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public final /* bridge */ T remove(int i10) {
            return e(i10);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return j.a(this);
        }

        public SubList(@NotNull List<T> list, int i10, int i11) {
            t.j(list, "list");
            this.list = list;
            this.start = i10;
            this.end = i11;
        }

        @Override // java.util.List
        public void add(int i10, T t5) {
            this.list.add(i10 + this.start, t5);
            this.end++;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            int i10 = this.end - 1;
            int i11 = this.start;
            if (i11 <= i10) {
                while (true) {
                    this.list.remove(i10);
                    if (i10 == i11) {
                        break;
                    } else {
                        i10--;
                    }
                }
            }
            this.end = this.start;
        }

        @Override // java.util.List, java.util.Collection
        public boolean contains(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (t.e(this.list.get(i11), obj)) {
                    return true;
                }
            }
            return false;
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
        public int indexOf(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (t.e(this.list.get(i11), obj)) {
                    return i11 - this.start;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return new VectorListIterator(this, 0);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int i10 = this.end - 1;
            int i11 = this.start;
            if (i11 > i10) {
                return -1;
            }
            while (!t.e(this.list.get(i10), obj)) {
                if (i10 == i11) {
                    return -1;
                }
                i10--;
            }
            return i10 - this.start;
        }

        @Override // java.util.List
        @NotNull
        public ListIterator<T> listIterator(int i10) {
            return new VectorListIterator(this, i10);
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            int i10 = this.end;
            for (int i11 = this.start; i11 < i10; i11++) {
                if (t.e(this.list.get(i11), obj)) {
                    this.list.remove(i11);
                    this.end--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            int i10 = this.end;
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            return i10 != this.end;
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(@NotNull Collection<? extends Object> elements) {
            t.j(elements, "elements");
            int i10 = this.end;
            int i11 = i10 - 1;
            int i12 = this.start;
            if (i12 <= i11) {
                while (true) {
                    if (!elements.contains(this.list.get(i11))) {
                        this.list.remove(i11);
                        this.end--;
                    }
                    if (i11 == i12) {
                        break;
                    }
                    i11--;
                }
            }
            return i10 != this.end;
        }

        @Override // java.util.List, java.util.Collection
        public <T> T[] toArray(T[] array) {
            t.j(array, "array");
            return (T[]) j.b(this, array);
        }

        public T e(int i10) {
            MutableVectorKt.c(this, i10);
            T tRemove = this.list.remove(i10 + this.start);
            this.end--;
            return tRemove;
        }

        @Override // java.util.List
        public T get(int i10) {
            MutableVectorKt.c(this, i10);
            return this.list.get(i10 + this.start);
        }

        @Override // java.util.List
        public T set(int i10, T t5) {
            MutableVectorKt.c(this, i10);
            return this.list.set(i10 + this.start, t5);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return c();
        }

        @Override // java.util.List
        @NotNull
        public List<T> subList(int i10, int i11) {
            MutableVectorKt.d(this, i10, i11);
            return new SubList(this, i10, i11);
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(@NotNull Collection<? extends T> elements) {
            t.j(elements, "elements");
            this.list.addAll(this.end, elements);
            this.end += elements.size();
            return elements.size() > 0;
        }
    }

    private static final class VectorListIterator<T> implements ListIterator<T>, a {
        private int index;

        @NotNull
        private final List<T> list;

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

        public VectorListIterator(@NotNull List<T> list, int i10) {
            t.j(list, "list");
            this.list = list;
            this.index = i10;
        }

        @Override // java.util.ListIterator
        public void add(T t5) {
            this.list.add(this.index, t5);
            this.index++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.index < this.list.size();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            List<T> list = this.list;
            int i10 = this.index;
            this.index = i10 + 1;
            return list.get(i10);
        }

        @Override // java.util.ListIterator
        public T previous() {
            int i10 = this.index - 1;
            this.index = i10;
            return this.list.get(i10);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            int i10 = this.index - 1;
            this.index = i10;
            this.list.remove(i10);
        }

        @Override // java.util.ListIterator
        public void set(T t5) {
            this.list.set(this.index, t5);
        }
    }

    @NotNull
    public final T[] m() {
        return this.content;
    }

    public final int n() {
        return this.size;
    }

    public final boolean p() {
        return this.size == 0;
    }

    public final boolean q() {
        return this.size != 0;
    }

    public MutableVector(@NotNull T[] content, int i10) {
        t.j(content, "content");
        this.content = content;
        this.size = i10;
    }

    public final void a(int i10, T t5) {
        k(this.size + 1);
        T[] tArr = this.content;
        int i11 = this.size;
        if (i10 != i11) {
            o.i(tArr, tArr, i10 + 1, i10, i11);
        }
        tArr[i10] = t5;
        this.size++;
    }

    public final boolean b(T t5) {
        k(this.size + 1);
        T[] tArr = this.content;
        int i10 = this.size;
        tArr[i10] = t5;
        this.size = i10 + 1;
        return true;
    }

    public final boolean c(int i10, @NotNull MutableVector<T> elements) {
        t.j(elements, "elements");
        if (elements.p()) {
            return false;
        }
        k(this.size + elements.size);
        T[] tArr = this.content;
        int i11 = this.size;
        if (i10 != i11) {
            o.i(tArr, tArr, elements.size + i10, i10, i11);
        }
        o.i(elements.content, tArr, i10, 0, elements.size);
        this.size += elements.size;
        return true;
    }

    public final boolean d(int i10, @NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        int i11 = 0;
        if (elements.isEmpty()) {
            return false;
        }
        k(this.size + elements.size());
        T[] tArr = this.content;
        if (i10 != this.size) {
            o.i(tArr, tArr, elements.size() + i10, i10, this.size);
        }
        for (T t5 : elements) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                v.w();
            }
            tArr[i11 + i10] = t5;
            i11 = i12;
        }
        this.size += elements.size();
        return true;
    }

    public final boolean e(int i10, @NotNull List<? extends T> elements) {
        t.j(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        k(this.size + elements.size());
        T[] tArr = this.content;
        if (i10 != this.size) {
            o.i(tArr, tArr, elements.size() + i10, i10, this.size);
        }
        int size = elements.size();
        for (int i11 = 0; i11 < size; i11++) {
            tArr[i10 + i11] = elements.get(i11);
        }
        this.size += elements.size();
        return true;
    }

    public final boolean f(@NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        return d(this.size, elements);
    }

    @NotNull
    public final List<T> g() {
        List<T> list = this.list;
        if (list != null) {
            return list;
        }
        MutableVectorList mutableVectorList = new MutableVectorList(this);
        this.list = mutableVectorList;
        return mutableVectorList;
    }

    public final void h() {
        T[] tArr = this.content;
        int iN = n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                this.size = 0;
                return;
            }
            tArr[iN] = null;
        }
    }

    public final boolean j(@NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            if (!i(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final void k(int i10) {
        T[] tArr = this.content;
        if (tArr.length < i10) {
            T[] tArr2 = (T[]) Arrays.copyOf(tArr, Math.max(i10, tArr.length * 2));
            t.i(tArr2, "copyOf(this, newSize)");
            this.content = tArr2;
        }
    }

    public final int o(T t5) {
        int i10 = this.size;
        if (i10 <= 0) {
            return -1;
        }
        T[] tArr = this.content;
        int i11 = 0;
        while (!t.e(t5, tArr[i11])) {
            i11++;
            if (i11 >= i10) {
                return -1;
            }
        }
        return i11;
    }

    public final int r(T t5) {
        int i10 = this.size;
        if (i10 <= 0) {
            return -1;
        }
        int i11 = i10 - 1;
        T[] tArr = this.content;
        while (!t.e(t5, tArr[i11])) {
            i11--;
            if (i11 < 0) {
                return -1;
            }
        }
        return i11;
    }

    public final boolean t(@NotNull MutableVector<T> elements) {
        t.j(elements, "elements");
        int i10 = this.size;
        int iN = elements.n() - 1;
        if (iN >= 0) {
            int i11 = 0;
            while (true) {
                s(elements.m()[i11]);
                if (i11 == iN) {
                    break;
                }
                i11++;
            }
        }
        return i10 != this.size;
    }

    public final boolean u(@NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        int i10 = this.size;
        Iterator<T> it = elements.iterator();
        while (it.hasNext()) {
            s(it.next());
        }
        return i10 != this.size;
    }

    public final T v(int i10) {
        T[] tArr = this.content;
        T t5 = tArr[i10];
        if (i10 != n() - 1) {
            o.i(tArr, tArr, i10, i10 + 1, this.size);
        }
        int i11 = this.size - 1;
        this.size = i11;
        tArr[i11] = null;
        return t5;
    }

    public final void w(int i10, int i11) {
        if (i11 > i10) {
            int i12 = this.size;
            if (i11 < i12) {
                T[] tArr = this.content;
                o.i(tArr, tArr, i10, i11, i12);
            }
            int i13 = this.size - (i11 - i10);
            int iN = n() - 1;
            if (i13 <= iN) {
                int i14 = i13;
                while (true) {
                    this.content[i14] = null;
                    if (i14 == iN) {
                        break;
                    } else {
                        i14++;
                    }
                }
            }
            this.size = i13;
        }
    }

    public final boolean x(@NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        int i10 = this.size;
        for (int iN = n() - 1; -1 < iN; iN--) {
            if (!elements.contains(m()[iN])) {
                v(iN);
            }
        }
        return i10 != this.size;
    }

    public final T y(int i10, T t5) {
        T[] tArr = this.content;
        T t10 = tArr[i10];
        tArr[i10] = t5;
        return t10;
    }

    public final void z(@NotNull Comparator<T> comparator) {
        t.j(comparator, "comparator");
        o.z(this.content, comparator, 0, this.size);
    }

    public final boolean i(T t5) {
        int iN = n() - 1;
        if (iN >= 0) {
            for (int i10 = 0; !t.e(m()[i10], t5); i10++) {
                if (i10 != iN) {
                }
            }
            return true;
        }
        return false;
    }

    public final T l() {
        if (!p()) {
            return m()[0];
        }
        throw new NoSuchElementException("MutableVector is empty.");
    }

    public final boolean s(T t5) {
        int iO = o(t5);
        if (iO >= 0) {
            v(iO);
            return true;
        }
        return false;
    }
}

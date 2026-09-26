package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class k<E> extends f<E> {
    private static final int defaultMinCapacity = 10;

    @NotNull
    private Object[] elementData;
    private int head;
    private int size;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final Object[] emptyElementData = new Object[0];

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public k(int i10) {
        Object[] objArr;
        if (i10 == 0) {
            objArr = emptyElementData;
        } else {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Illegal Capacity: " + i10);
            }
            objArr = new Object[i10];
        }
        this.elementData = objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        g(e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        q(size() + elements.size());
        j(v(this.head + size()), elements);
        return true;
    }

    @Override // kotlin.collections.f
    public int c() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        kotlin.jvm.internal.t.j(array, "array");
        if (array.length < size()) {
            array = (T[]) m.a(array, size());
        }
        int iV = v(this.head + size());
        int i10 = this.head;
        if (i10 < iV) {
            o.m(this.elementData, array, 0, i10, iV, 2, null);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            o.i(objArr, array, 0, this.head, objArr.length);
            Object[] objArr2 = this.elementData;
            o.i(objArr2, array, objArr2.length - this.head, 0, iV);
        }
        return (T[]) u.f(size(), array);
    }

    private final void m(int i10) {
        Object[] objArr = new Object[i10];
        Object[] objArr2 = this.elementData;
        o.i(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i11 = this.head;
        o.i(objArr3, objArr, length - i11, 0, i11);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int p(int i10) {
        return i10 == 0 ? p.R(this.elementData) : i10 - 1;
    }

    private final void q(int i10) {
        if (i10 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.elementData;
        if (i10 <= objArr.length) {
            return;
        }
        if (objArr == emptyElementData) {
            this.elementData = new Object[j8.o.e(i10, 10)];
        } else {
            m(c.Companion.e(objArr.length, i10));
        }
    }

    private final int s(int i10) {
        if (i10 == p.R(this.elementData)) {
            return 0;
        }
        return i10 + 1;
    }

    private final int u(int i10) {
        return i10 < 0 ? i10 + this.elementData.length : i10;
    }

    private final int v(int i10) {
        Object[] objArr = this.elementData;
        return i10 >= objArr.length ? i10 - objArr.length : i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, E e) {
        c.Companion.c(i10, size());
        if (i10 == size()) {
            g(e);
            return;
        }
        if (i10 == 0) {
            f(e);
            return;
        }
        q(size() + 1);
        int iV = v(this.head + i10);
        if (i10 < ((size() + 1) >> 1)) {
            int iP = p(iV);
            int iP2 = p(this.head);
            int i11 = this.head;
            if (iP >= i11) {
                Object[] objArr = this.elementData;
                objArr[iP2] = objArr[i11];
                o.i(objArr, objArr, i11, i11 + 1, iP + 1);
            } else {
                Object[] objArr2 = this.elementData;
                o.i(objArr2, objArr2, i11 - 1, i11, objArr2.length);
                Object[] objArr3 = this.elementData;
                objArr3[objArr3.length - 1] = objArr3[0];
                o.i(objArr3, objArr3, 0, 1, iP + 1);
            }
            this.elementData[iP] = e;
            this.head = iP2;
        } else {
            int iV2 = v(this.head + size());
            if (iV < iV2) {
                Object[] objArr4 = this.elementData;
                o.i(objArr4, objArr4, iV + 1, iV, iV2);
            } else {
                Object[] objArr5 = this.elementData;
                o.i(objArr5, objArr5, 1, 0, iV2);
                Object[] objArr6 = this.elementData;
                objArr6[0] = objArr6[objArr6.length - 1];
                o.i(objArr6, objArr6, iV + 1, iV, objArr6.length - 1);
            }
            this.elementData[iV] = e;
        }
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int iV = v(this.head + size());
        int i10 = this.head;
        if (i10 < iV) {
            o.r(this.elementData, null, i10, iV);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            o.r(objArr, null, this.head, objArr.length);
            o.r(this.elementData, null, 0, iV);
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // kotlin.collections.f
    public E e(int i10) {
        c.Companion.b(i10, size());
        if (i10 == v.o(this)) {
            return y();
        }
        if (i10 == 0) {
            return w();
        }
        int iV = v(this.head + i10);
        E e = (E) this.elementData[iV];
        if (i10 < (size() >> 1)) {
            int i11 = this.head;
            if (iV >= i11) {
                Object[] objArr = this.elementData;
                o.i(objArr, objArr, i11 + 1, i11, iV);
            } else {
                Object[] objArr2 = this.elementData;
                o.i(objArr2, objArr2, 1, 0, iV);
                Object[] objArr3 = this.elementData;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i12 = this.head;
                o.i(objArr3, objArr3, i12 + 1, i12, objArr3.length - 1);
            }
            Object[] objArr4 = this.elementData;
            int i13 = this.head;
            objArr4[i13] = null;
            this.head = s(i13);
        } else {
            int iV2 = v(this.head + v.o(this));
            if (iV <= iV2) {
                Object[] objArr5 = this.elementData;
                o.i(objArr5, objArr5, iV, iV + 1, iV2 + 1);
            } else {
                Object[] objArr6 = this.elementData;
                o.i(objArr6, objArr6, iV, iV + 1, objArr6.length);
                Object[] objArr7 = this.elementData;
                objArr7[objArr7.length - 1] = objArr7[0];
                o.i(objArr7, objArr7, 0, 1, iV2 + 1);
            }
            this.elementData[iV2] = null;
        }
        this.size = size() - 1;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        c.Companion.b(i10, size());
        return (E) this.elementData[v(this.head + i10)];
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        int i10;
        int iV = v(this.head + size());
        int length = this.head;
        if (length < iV) {
            while (length < iV) {
                if (kotlin.jvm.internal.t.e(obj, this.elementData[length])) {
                    i10 = this.head;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iV) {
            return -1;
        }
        int length2 = this.elementData.length;
        while (length < length2) {
            if (kotlin.jvm.internal.t.e(obj, this.elementData[length])) {
                i10 = this.head;
            } else {
                length++;
            }
        }
        for (int i11 = 0; i11 < iV; i11++) {
            if (kotlin.jvm.internal.t.e(obj, this.elementData[i11])) {
                length = i11 + this.elementData.length;
                i10 = this.head;
            }
        }
        return -1;
        return length - i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        int iR;
        int i10;
        int iV = v(this.head + size());
        int i11 = this.head;
        if (i11 < iV) {
            iR = iV - 1;
            if (i11 <= iR) {
                while (!kotlin.jvm.internal.t.e(obj, this.elementData[iR])) {
                    if (iR != i11) {
                        iR--;
                    }
                }
                i10 = this.head;
                return iR - i10;
            }
            return -1;
        }
        if (i11 > iV) {
            for (int i12 = iV - 1; -1 < i12; i12--) {
                if (kotlin.jvm.internal.t.e(obj, this.elementData[i12])) {
                    iR = i12 + this.elementData.length;
                    i10 = this.head;
                    return iR - i10;
                }
            }
            iR = p.R(this.elementData);
            int i13 = this.head;
            if (i13 <= iR) {
                while (!kotlin.jvm.internal.t.e(obj, this.elementData[iR])) {
                    if (iR != i13) {
                        iR--;
                    }
                }
                i10 = this.head;
                return iR - i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        int iV;
        kotlin.jvm.internal.t.j(elements, "elements");
        boolean z6 = false;
        z6 = false;
        z6 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iV2 = v(this.head + size());
            int i10 = this.head;
            if (i10 < iV2) {
                iV = i10;
                while (i10 < iV2) {
                    Object obj = this.elementData[i10];
                    if (!elements.contains(obj)) {
                        this.elementData[iV] = obj;
                        iV++;
                    } else {
                        z6 = true;
                    }
                    i10++;
                }
                o.r(this.elementData, null, iV, iV2);
            } else {
                int length = this.elementData.length;
                boolean z10 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.elementData;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (!elements.contains(obj2)) {
                        this.elementData[i11] = obj2;
                        i11++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                iV = v(i11);
                for (int i12 = 0; i12 < iV2; i12++) {
                    Object[] objArr2 = this.elementData;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (!elements.contains(obj3)) {
                        this.elementData[iV] = obj3;
                        iV = s(iV);
                    } else {
                        z10 = true;
                    }
                }
                z6 = z10;
            }
            if (z6) {
                this.size = u(iV - this.head);
            }
        }
        return z6;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        int iV;
        kotlin.jvm.internal.t.j(elements, "elements");
        boolean z6 = false;
        z6 = false;
        z6 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iV2 = v(this.head + size());
            int i10 = this.head;
            if (i10 < iV2) {
                iV = i10;
                while (i10 < iV2) {
                    Object obj = this.elementData[i10];
                    if (elements.contains(obj)) {
                        this.elementData[iV] = obj;
                        iV++;
                    } else {
                        z6 = true;
                    }
                    i10++;
                }
                o.r(this.elementData, null, iV, iV2);
            } else {
                int length = this.elementData.length;
                boolean z10 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr = this.elementData;
                    Object obj2 = objArr[i10];
                    objArr[i10] = null;
                    if (elements.contains(obj2)) {
                        this.elementData[i11] = obj2;
                        i11++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                iV = v(i11);
                for (int i12 = 0; i12 < iV2; i12++) {
                    Object[] objArr2 = this.elementData;
                    Object obj3 = objArr2[i12];
                    objArr2[i12] = null;
                    if (elements.contains(obj3)) {
                        this.elementData[iV] = obj3;
                        iV = s(iV);
                    } else {
                        z10 = true;
                    }
                }
                z6 = z10;
            }
            if (z6) {
                this.size = u(iV - this.head);
            }
        }
        return z6;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i10, E e) {
        c.Companion.b(i10, size());
        int iV = v(this.head + i10);
        Object[] objArr = this.elementData;
        E e2 = (E) objArr[iV];
        objArr[iV] = e;
        return e2;
    }

    private final void j(int i10, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.elementData.length;
        while (i10 < length && it.hasNext()) {
            this.elementData[i10] = it.next();
            i10++;
        }
        int i11 = this.head;
        for (int i12 = 0; i12 < i11 && it.hasNext(); i12++) {
            this.elementData[i12] = it.next();
        }
        this.size = size() + collection.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    public final void f(E e) {
        q(size() + 1);
        int iP = p(this.head);
        this.head = iP;
        this.elementData[iP] = e;
        this.size = size() + 1;
    }

    public final E first() {
        if (!isEmpty()) {
            return (E) this.elementData[this.head];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    public final void g(E e) {
        q(size() + 1);
        this.elementData[v(this.head + size())] = e;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final E last() {
        if (!isEmpty()) {
            return (E) this.elementData[v(this.head + v.o(this))];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E r() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[this.head];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Nullable
    public final E t() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[v(this.head + v.o(this))];
    }

    public final E w() {
        if (!isEmpty()) {
            Object[] objArr = this.elementData;
            int i10 = this.head;
            E e = (E) objArr[i10];
            objArr[i10] = null;
            this.head = s(i10);
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E x() {
        if (isEmpty()) {
            return null;
        }
        return w();
    }

    public final E y() {
        if (!isEmpty()) {
            int iV = v(this.head + v.o(this));
            Object[] objArr = this.elementData;
            E e = (E) objArr[iV];
            objArr[iV] = null;
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E z() {
        if (isEmpty()) {
            return null;
        }
        return y();
    }

    public k() {
        this.elementData = emptyElementData;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        c.Companion.c(i10, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (i10 == size()) {
            return addAll(elements);
        }
        q(size() + elements.size());
        int iV = v(this.head + size());
        int iV2 = v(this.head + i10);
        int size = elements.size();
        if (i10 < ((size() + 1) >> 1)) {
            int i11 = this.head;
            int length = i11 - size;
            if (iV2 < i11) {
                Object[] objArr = this.elementData;
                o.i(objArr, objArr, length, i11, objArr.length);
                if (size >= iV2) {
                    Object[] objArr2 = this.elementData;
                    o.i(objArr2, objArr2, objArr2.length - size, 0, iV2);
                } else {
                    Object[] objArr3 = this.elementData;
                    o.i(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.elementData;
                    o.i(objArr4, objArr4, 0, size, iV2);
                }
            } else if (length >= 0) {
                Object[] objArr5 = this.elementData;
                o.i(objArr5, objArr5, length, i11, iV2);
            } else {
                Object[] objArr6 = this.elementData;
                length += objArr6.length;
                int i12 = iV2 - i11;
                int length2 = objArr6.length - length;
                if (length2 >= i12) {
                    o.i(objArr6, objArr6, length, i11, iV2);
                } else {
                    o.i(objArr6, objArr6, length, i11, i11 + length2);
                    Object[] objArr7 = this.elementData;
                    o.i(objArr7, objArr7, 0, this.head + length2, iV2);
                }
            }
            this.head = length;
            j(u(iV2 - size), elements);
        } else {
            int i13 = iV2 + size;
            if (iV2 >= iV) {
                Object[] objArr8 = this.elementData;
                o.i(objArr8, objArr8, size, 0, iV);
                Object[] objArr9 = this.elementData;
                if (i13 >= objArr9.length) {
                    o.i(objArr9, objArr9, i13 - objArr9.length, iV2, objArr9.length);
                } else {
                    o.i(objArr9, objArr9, 0, objArr9.length - size, objArr9.length);
                    Object[] objArr10 = this.elementData;
                    o.i(objArr10, objArr10, i13, iV2, objArr10.length - size);
                }
            } else {
                int i14 = size + iV;
                Object[] objArr11 = this.elementData;
                if (i14 <= objArr11.length) {
                    o.i(objArr11, objArr11, i13, iV2, iV);
                } else if (i13 >= objArr11.length) {
                    o.i(objArr11, objArr11, i13 - objArr11.length, iV2, iV);
                } else {
                    int length3 = iV - (i14 - objArr11.length);
                    o.i(objArr11, objArr11, 0, length3, iV);
                    Object[] objArr12 = this.elementData;
                    o.i(objArr12, objArr12, i13, iV2, length3);
                }
            }
            j(iV2, elements);
        }
        return true;
    }

    public k(@NotNull Collection<? extends E> elements) {
        kotlin.jvm.internal.t.j(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        this.elementData = array;
        this.size = array.length;
        if (array.length == 0) {
            this.elementData = emptyElementData;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}

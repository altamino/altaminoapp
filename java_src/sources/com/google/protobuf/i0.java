package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes10.dex */
final class i0<E> extends a<E> implements RandomAccess {
    private static final i0<Object> EMPTY_LIST;
    private E[] array;
    private int size;

    i0() {
        this(new Object[10], 0);
    }

    public static <E> i0<E> emptyList() {
        return (i0<E>) EMPTY_LIST;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        ensureIsMutable();
        int i10 = this.size;
        E[] eArr = this.array;
        if (i10 == eArr.length) {
            this.array = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.array;
        int i11 = this.size;
        this.size = i11 + 1;
        eArr2[i11] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        i0<Object> i0Var = new i0<>(new Object[0], 0);
        EMPTY_LIST = i0Var;
        i0Var.makeImmutable();
    }

    private i0(E[] eArr, int i10) {
        this.array = eArr;
        this.size = i10;
    }

    private static <E> E[] createArray(int i10) {
        return (E[]) new Object[i10];
    }

    private void ensureIndexInRange(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
        }
    }

    private String makeOutOfBoundsExceptionMessage(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    public i0<E> mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new i0<>(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        ensureIndexInRange(i10);
        return this.array[i10];
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public E remove(int i10) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        E[] eArr = this.array;
        E e = eArr[i10];
        int i11 = this.size;
        if (i10 < i11 - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (i11 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public E set(int i10, E e) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        E[] eArr = this.array;
        E e2 = eArr[i10];
        eArr[i10] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public void add(int i10, E e) {
        int i11;
        ensureIsMutable();
        if (i10 >= 0 && i10 <= (i11 = this.size)) {
            E[] eArr = this.array;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) createArray(((i11 * 3) / 2) + 1);
                System.arraycopy(this.array, 0, eArr2, 0, i10);
                System.arraycopy(this.array, i10, eArr2, i10 + 1, this.size - i10);
                this.array = eArr2;
            }
            this.array[i10] = e;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
    }
}

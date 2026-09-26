package com.google.common.collect;

import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
class w0<E> extends a0<E> {
    static final a0<Object> EMPTY = new w0(new Object[0], 0);
    final transient Object[] array;
    private final transient int size;

    @Override // com.google.common.collect.y
    Object[] e() {
        return this.array;
    }

    @Override // com.google.common.collect.y
    int f() {
        return this.size;
    }

    @Override // com.google.common.collect.y
    int g() {
        return 0;
    }

    @Override // com.google.common.collect.y
    boolean j() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.a0, com.google.common.collect.y
    int d(Object[] objArr, int i10) {
        System.arraycopy(this.array, 0, objArr, i10, this.size);
        return i10 + this.size;
    }

    @Override // java.util.List
    public E get(int i10) {
        com.google.common.base.o.i(i10, this.size);
        E e = (E) this.array[i10];
        Objects.requireNonNull(e);
        return e;
    }

    w0(Object[] objArr, int i10) {
        this.array = objArr;
        this.size = i10;
    }
}

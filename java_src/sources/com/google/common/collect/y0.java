package com.google.common.collect;

/* JADX INFO: loaded from: classes9.dex */
final class y0<E> extends d0<E> {
    static final y0<Object> EMPTY;
    private static final Object[] EMPTY_ARRAY;
    final transient Object[] elements;
    private final transient int hashCode;
    private final transient int mask;
    private final transient int size;
    final transient Object[] table;

    static {
        Object[] objArr = new Object[0];
        EMPTY_ARRAY = objArr;
        EMPTY = new y0<>(objArr, 0, objArr, 0, 0);
    }

    @Override // com.google.common.collect.y
    Object[] e() {
        return this.elements;
    }

    @Override // com.google.common.collect.y
    int f() {
        return this.size;
    }

    @Override // com.google.common.collect.y
    int g() {
        return 0;
    }

    @Override // com.google.common.collect.d0, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.hashCode;
    }

    @Override // com.google.common.collect.y
    boolean j() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.d0
    boolean w() {
        return true;
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        Object[] objArr = this.table;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iC = x.c(obj);
        while (true) {
            int i10 = iC & this.mask;
            Object obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iC = i10 + 1;
        }
    }

    @Override // com.google.common.collect.y
    int d(Object[] objArr, int i10) {
        System.arraycopy(this.elements, 0, objArr, i10, this.size);
        return i10 + this.size;
    }

    @Override // com.google.common.collect.d0
    a0<E> v() {
        return a0.q(this.elements, this.size);
    }

    y0(Object[] objArr, int i10, Object[] objArr2, int i11, int i12) {
        this.elements = objArr;
        this.hashCode = i10;
        this.table = objArr2;
        this.mask = i11;
        this.size = i12;
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public l1<E> iterator() {
        return c().iterator();
    }
}

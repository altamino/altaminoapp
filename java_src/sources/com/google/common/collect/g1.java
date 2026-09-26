package com.google.common.collect;

/* JADX INFO: loaded from: classes9.dex */
final class g1<E> extends d0<E> {
    final transient E element;

    @Override // com.google.common.collect.y
    boolean j() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y
    public a0<E> c() {
        return a0.y(this.element);
    }

    @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return this.element.equals(obj);
    }

    @Override // com.google.common.collect.y
    int d(Object[] objArr, int i10) {
        objArr[i10] = this.element;
        return i10 + 1;
    }

    @Override // com.google.common.collect.d0, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.element.hashCode();
    }

    @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: m */
    public l1<E> iterator() {
        return i0.s(this.element);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String string = this.element.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2);
        sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        sb.append(string);
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    g1(E e) {
        this.element = (E) com.google.common.base.o.k(e);
    }
}

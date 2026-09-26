package kotlin.collections;

import java.util.AbstractList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public abstract class f<E> extends AbstractList<E> implements List<E>, f8.d {
    public abstract int c();

    public abstract E e(int i10);

    protected f() {
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i10) {
        return e(i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return c();
    }
}

package com.google.common.collect;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes9.dex */
public abstract class m1<E> extends l1<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e) {
        throw new UnsupportedOperationException();
    }

    protected m1() {
    }
}

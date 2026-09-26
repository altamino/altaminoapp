package com.google.common.collect;

import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
public abstract class l1<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    protected l1() {
    }
}

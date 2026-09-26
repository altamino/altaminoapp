package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public final class r<E> extends w<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;
    final int maxSize;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.t
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Queue<E> f() {
        return this.delegate;
    }

    public static <E> r<E> q(int i10) {
        return new r<>(i10);
    }

    private r(int i10) {
        boolean z6;
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.common.base.o.f(z6, "maxSize (%s) must >= 0", i10);
        this.delegate = new ArrayDeque(i10);
        this.maxSize = i10;
    }

    @Override // java.util.Collection, java.util.Queue
    public boolean add(E e) {
        com.google.common.base.o.k(e);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e);
        return true;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size >= this.maxSize) {
            clear();
            return h0.a(this, h0.j(collection, size - this.maxSize));
        }
        return j(collection);
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        return add(e);
    }

    @Override // com.google.common.collect.t, java.util.Collection
    public Object[] toArray() {
        return super.toArray();
    }
}

package com.google.common.collect;

import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public abstract class w<E> extends t<E> implements Queue<E> {
    protected abstract Queue<E> p();

    protected w() {
    }

    @Override // java.util.Queue
    public E element() {
        return p().element();
    }

    @Override // java.util.Queue
    public E peek() {
        return p().peek();
    }

    @Override // java.util.Queue
    public E poll() {
        return p().poll();
    }

    @Override // java.util.Queue
    public E remove() {
        return p().remove();
    }
}

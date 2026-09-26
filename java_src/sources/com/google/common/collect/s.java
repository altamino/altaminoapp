package com.google.common.collect;

/* JADX INFO: loaded from: classes.dex */
public abstract class s<E> implements Iterable<E> {
    private final com.google.common.base.l<Iterable<E>> iterableDelegate = com.google.common.base.l.a();

    private Iterable<E> c() {
        return this.iterableDelegate.e(this);
    }

    protected s() {
    }

    public String toString() {
        return h0.m(c());
    }
}

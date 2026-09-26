package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public abstract class t0<T> implements Comparator<T> {
    static final int LEFT_IS_GREATER = 1;
    static final int RIGHT_IS_GREATER = -1;

    @Override // java.util.Comparator
    public abstract int compare(T t5, T t10);

    public static <T> t0<T> a(Comparator<T> comparator) {
        return comparator instanceof t0 ? (t0) comparator : new o(comparator);
    }

    public static <C extends Comparable> t0<C> c() {
        return q0.INSTANCE;
    }

    public <F> t0<F> e(com.google.common.base.g<F, ? extends T> gVar) {
        return new j(gVar, this);
    }

    public <S extends T> t0<S> f() {
        return new b1(this);
    }

    protected t0() {
    }

    public <E extends T> a0<E> b(Iterable<E> iterable) {
        return a0.E(this, iterable);
    }

    <T2 extends T> t0<Map.Entry<T2, ?>> d() {
        return (t0<Map.Entry<T2, ?>>) e(l0.e());
    }
}

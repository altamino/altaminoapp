package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
final class q0 extends t0<Comparable<?>> implements Serializable {
    static final q0 INSTANCE = new q0();
    private static final long serialVersionUID = 0;
    private transient t0<Comparable<?>> nullsFirst;
    private transient t0<Comparable<?>> nullsLast;

    private Object readResolve() {
        return INSTANCE;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.common.collect.t0
    public <S extends Comparable<?>> t0<S> f() {
        return a1.INSTANCE;
    }

    private q0() {
    }

    @Override // com.google.common.collect.t0, java.util.Comparator
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        com.google.common.base.o.k(comparable);
        com.google.common.base.o.k(comparable2);
        return comparable.compareTo(comparable2);
    }
}

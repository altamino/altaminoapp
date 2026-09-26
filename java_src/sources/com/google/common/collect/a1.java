package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
final class a1 extends t0<Comparable<?>> implements Serializable {
    static final a1 INSTANCE = new a1();
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    private a1() {
    }

    @Override // com.google.common.collect.t0
    public <S extends Comparable<?>> t0<S> f() {
        return t0.c();
    }

    @Override // com.google.common.collect.t0, java.util.Comparator
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        com.google.common.base.o.k(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }
}

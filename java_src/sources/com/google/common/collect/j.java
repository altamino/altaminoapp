package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
final class j<F, T> extends t0<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final com.google.common.base.g<F, ? extends T> function;
    final t0<T> ordering;

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.function.equals(jVar.function) && this.ordering.equals(jVar.ordering);
    }

    public int hashCode() {
        return com.google.common.base.k.b(this.function, this.ordering);
    }

    @Override // com.google.common.collect.t0, java.util.Comparator
    public int compare(F f, F f6) {
        return this.ordering.compare(this.function.apply(f), this.function.apply(f6));
    }

    public String toString() {
        String strValueOf = String.valueOf(this.ordering);
        String strValueOf2 = String.valueOf(this.function);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 13 + strValueOf2.length());
        sb.append(strValueOf);
        sb.append(".onResultOf(");
        sb.append(strValueOf2);
        sb.append(")");
        return sb.toString();
    }

    j(com.google.common.base.g<F, ? extends T> gVar, t0<T> t0Var) {
        this.function = (com.google.common.base.g) com.google.common.base.o.k(gVar);
        this.ordering = (t0) com.google.common.base.o.k(t0Var);
    }
}

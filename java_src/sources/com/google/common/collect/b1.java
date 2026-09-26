package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes9.dex */
final class b1<T> extends t0<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final t0<? super T> forwardOrder;

    @Override // com.google.common.collect.t0
    public <S extends T> t0<S> f() {
        return this.forwardOrder;
    }

    @Override // com.google.common.collect.t0, java.util.Comparator
    public int compare(T t5, T t10) {
        return this.forwardOrder.compare(t10, t5);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b1) {
            return this.forwardOrder.equals(((b1) obj).forwardOrder);
        }
        return false;
    }

    public int hashCode() {
        return -this.forwardOrder.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.forwardOrder);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 10);
        sb.append(strValueOf);
        sb.append(".reverse()");
        return sb.toString();
    }

    b1(t0<? super T> t0Var) {
        this.forwardOrder = (t0) com.google.common.base.o.k(t0Var);
    }
}

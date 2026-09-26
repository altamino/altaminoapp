package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
final class o<T> extends t0<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator<T> comparator;

    @Override // com.google.common.collect.t0, java.util.Comparator
    public int compare(T t5, T t10) {
        return this.comparator.compare(t5, t10);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            return this.comparator.equals(((o) obj).comparator);
        }
        return false;
    }

    public int hashCode() {
        return this.comparator.hashCode();
    }

    public String toString() {
        return this.comparator.toString();
    }

    o(Comparator<T> comparator) {
        this.comparator = (Comparator) com.google.common.base.o.k(comparator);
    }
}

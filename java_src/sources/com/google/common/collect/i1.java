package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes9.dex */
final class i1 {
    public static <E> Comparator<? super E> a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        if (comparator == null) {
            return t0.c();
        }
        return comparator;
    }

    public static boolean b(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        com.google.common.base.o.k(comparator);
        com.google.common.base.o.k(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else if (iterable instanceof h1) {
            comparator2 = ((h1) iterable).comparator();
        } else {
            return false;
        }
        return comparator.equals(comparator2);
    }
}

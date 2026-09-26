package com.google.common.collect;

import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface m0<K, V> {
    Collection<Map.Entry<K, V>> a();

    Map<K, Collection<V>> b();

    boolean c(Object obj, Object obj2);

    void clear();

    Collection<V> get(K k);

    boolean isEmpty();

    boolean put(K k, V v5);

    boolean remove(Object obj, Object obj2);

    int size();

    Collection<V> values();
}

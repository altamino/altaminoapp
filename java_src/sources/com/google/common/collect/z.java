package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
class z<K, V> extends e<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final K key;
    final V value;

    @Override // com.google.common.collect.e, java.util.Map.Entry
    public final K getKey() {
        return this.key;
    }

    @Override // com.google.common.collect.e, java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v5) {
        throw new UnsupportedOperationException();
    }

    z(K k, V v5) {
        this.key = k;
        this.value = v5;
    }
}

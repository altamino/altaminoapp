package com.bumptech.glide.util;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes8.dex */
public final class b<K, V> extends ArrayMap<K, V> {
    private int hashCode;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        this.hashCode = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap
    public void m(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.hashCode = 0;
        super.m(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V n(int i10) {
        this.hashCode = 0;
        return (V) super.n(i10);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V o(int i10, V v5) {
        this.hashCode = 0;
        return (V) super.o(i10, v5);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k, V v5) {
        this.hashCode = 0;
        return (V) super.put(k, v5);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = super.hashCode();
        }
        return this.hashCode;
    }
}

package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class u<K, V> extends v implements Map<K, V> {
    protected abstract Map<K, V> f();

    protected u() {
    }

    @Override // java.util.Map
    public void clear() {
        f().clear();
    }

    public boolean containsKey(Object obj) {
        return f().containsKey(obj);
    }

    public Set<Map.Entry<K, V>> entrySet() {
        return f().entrySet();
    }

    public V get(Object obj) {
        return f().get(obj);
    }

    public boolean isEmpty() {
        return f().isEmpty();
    }

    protected boolean j(Object obj) {
        return l0.b(this, obj);
    }

    public Set<K> keySet() {
        return f().keySet();
    }

    protected boolean p(Object obj) {
        return l0.c(this, obj);
    }

    @Override // java.util.Map
    public V put(K k, V v5) {
        return f().put(k, v5);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        f().putAll(map);
    }

    protected int q() {
        return f1.d(entrySet());
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return f().remove(obj);
    }

    public int size() {
        return f().size();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return f().values();
    }
}

package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class c<K, V> extends d<K, V> implements j0<K, V> {
    private static final long serialVersionUID = 6588350623831699109L;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.d
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public abstract List<V> t();

    @Override // com.google.common.collect.d
    <E> Collection<E> A(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.d
    Collection<V> B(K k, Collection<V> collection) {
        return C(k, (List) collection, null);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.m0
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    protected c(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public Map<K, Collection<V>> b() {
        return super.b();
    }

    @Override // com.google.common.collect.f
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.f, com.google.common.collect.m0
    public boolean put(K k, V v5) {
        return super.put(k, v5);
    }
}

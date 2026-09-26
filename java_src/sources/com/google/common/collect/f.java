package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class f<K, V> implements m0<K, V> {
    private transient Map<K, Collection<V>> asMap;
    private transient Collection<Map.Entry<K, V>> entries;
    private transient Set<K> keySet;
    private transient p0<K> keys;
    private transient Collection<V> values;

    class a extends o0.b<K, V> {
        @Override // com.google.common.collect.o0.b
        m0<K, V> c() {
            return f.this;
        }

        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return f.this.i();
        }
    }

    class c extends AbstractCollection<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            f.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return f.this.d(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return f.this.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return f.this.size();
        }
    }

    abstract Map<K, Collection<V>> e();

    abstract Collection<Map.Entry<K, V>> f();

    abstract Set<K> g();

    abstract Collection<V> h();

    abstract Iterator<Map.Entry<K, V>> i();

    class b extends f<K, V>.a implements Set<Map.Entry<K, V>> {
        b(f fVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return f1.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return f1.d(this);
        }
    }

    @Override // com.google.common.collect.m0
    public Collection<Map.Entry<K, V>> a() {
        Collection<Map.Entry<K, V>> collection = this.entries;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionF = f();
        this.entries = collectionF;
        return collectionF;
    }

    @Override // com.google.common.collect.m0
    public Map<K, Collection<V>> b() {
        Map<K, Collection<V>> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapE = e();
        this.asMap = mapE;
        return mapE;
    }

    public Set<K> j() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        Set<K> setG = g();
        this.keySet = setG;
        return setG;
    }

    @Override // com.google.common.collect.m0
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionH = h();
        this.values = collectionH;
        return collectionH;
    }

    f() {
    }

    @Override // com.google.common.collect.m0
    public boolean c(Object obj, Object obj2) {
        Collection<V> collection = b().get(obj);
        if (collection != null && collection.contains(obj2)) {
            return true;
        }
        return false;
    }

    public boolean d(Object obj) {
        Iterator<Collection<V>> it = b().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        return o0.a(this, obj);
    }

    public int hashCode() {
        return b().hashCode();
    }

    @Override // com.google.common.collect.m0
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    Iterator<V> k() {
        return l0.n(a().iterator());
    }

    @Override // com.google.common.collect.m0
    public boolean put(K k, V v5) {
        return get(k).add(v5);
    }

    @Override // com.google.common.collect.m0
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = b().get(obj);
        if (collection != null && collection.remove(obj2)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return b().toString();
    }
}

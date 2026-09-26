package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public abstract class c0<K, V> extends i<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final transient b0<K, ? extends y<V>> map;
    final transient int size;

    class a extends l1<Map.Entry<K, V>> {
        final Iterator<? extends Map.Entry<K, ? extends y<V>>> asMapItr;
        K currentKey = null;
        Iterator<V> valueItr = i0.g();

        a() {
            this.asMapItr = c0.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!this.valueItr.hasNext()) {
                Map.Entry<K, ? extends y<V>> next = this.asMapItr.next();
                this.currentKey = next.getKey();
                this.valueItr = next.getValue().iterator();
            }
            K k = this.currentKey;
            Objects.requireNonNull(k);
            return l0.d(k, this.valueItr.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.valueItr.hasNext() || this.asMapItr.hasNext();
        }
    }

    class b extends l1<V> {
        Iterator<? extends y<V>> valueCollectionItr;
        Iterator<V> valueItr = i0.g();

        b() {
            this.valueCollectionItr = c0.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.valueItr.hasNext() || this.valueCollectionItr.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            if (!this.valueItr.hasNext()) {
                this.valueItr = this.valueCollectionItr.next().iterator();
            }
            return this.valueItr.next();
        }
    }

    public static class c<K, V> {
        final Map<K, Collection<V>> builderMap = u0.d();
        Comparator<? super K> keyComparator;
        Comparator<? super V> valueComparator;
    }

    private static class d<K, V> extends y<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final c0<K, V> multimap;

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.c(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: m */
        public l1<Map.Entry<K, V>> iterator() {
            return this.multimap.i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }

        d(c0<K, V> c0Var) {
            this.multimap = c0Var;
        }
    }

    static class e {
        static final c1.b<c0> MAP_FIELD_SETTER = c1.a(c0.class, "map");
        static final c1.b<c0> SIZE_FIELD_SETTER = c1.a(c0.class, "size");
    }

    private static final class f<K, V> extends y<V> {
        private static final long serialVersionUID = 0;
        private final transient c0<K, V> multimap;

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.multimap.d(obj);
        }

        @Override // com.google.common.collect.y
        int d(Object[] objArr, int i10) {
            l1<? extends y<V>> it = this.multimap.map.values().iterator();
            while (it.hasNext()) {
                i10 = it.next().d(objArr, i10);
            }
            return i10;
        }

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: m */
        public l1<V> iterator() {
            return this.multimap.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }

        f(c0<K, V> c0Var) {
            this.multimap = c0Var;
        }
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b0<K, Collection<V>> b() {
        return this.map;
    }

    @Override // com.google.common.collect.m0
    public abstract y<V> q(K k);

    @Override // com.google.common.collect.m0
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.m0
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.f
    public boolean d(Object obj) {
        return obj != null && super.d(obj);
    }

    @Override // com.google.common.collect.f
    Map<K, Collection<V>> e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.f
    Set<K> g() {
        throw new AssertionError("unreachable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.f
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public y<Map.Entry<K, V>> f() {
        return new d(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.f
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public y<V> h() {
        return new f(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.f
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public l1<Map.Entry<K, V>> i() {
        return new a();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    @Deprecated
    public final boolean put(K k, V v5) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.f
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public l1<V> k() {
        return new b();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    c0(b0<K, ? extends y<V>> b0Var, int i10) {
        this.map = b0Var;
        this.size = i10;
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public /* bridge */ /* synthetic */ boolean c(Object obj, Object obj2) {
        return super.c(obj, obj2);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public y<Map.Entry<K, V>> o() {
        return (y) super.o();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public y<V> values() {
        return (y) super.values();
    }

    @Override // com.google.common.collect.f
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}

package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
abstract class d<K, V> extends com.google.common.collect.f<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    private class c extends l0.g<K, Collection<V>> {
        final transient Map<K, Collection<V>> submap;

        class a extends l0.d<K, Collection<V>> {
            @Override // com.google.common.collect.l0.d
            Map<K, Collection<V>> c() {
                return c.this;
            }

            a() {
            }

            @Override // com.google.common.collect.l0.d, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return com.google.common.collect.l.c(c.this.submap.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return c.this.new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                d.this.y(entry.getKey());
                return true;
            }
        }

        class b implements Iterator<Map.Entry<K, Collection<V>>> {
            Collection<V> collection;
            final Iterator<Map.Entry<K, Collection<V>>> delegateIterator;

            b() {
                this.delegateIterator = c.this.submap.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.delegateIterator.next();
                this.collection = next.getValue();
                return c.this.i(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.delegateIterator.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.o.q(this.collection != null, "no calls to next() since the last call to remove()");
                this.delegateIterator.remove();
                d.q(d.this, this.collection.size());
                this.collection.clear();
                this.collection = null;
            }
        }

        c(Map<K, Collection<V>> map) {
            this.submap = map;
        }

        @Override // com.google.common.collect.l0.g
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.submap == d.this.map) {
                d.this.clear();
            } else {
                i0.d(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return l0.i(this.submap, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.submap.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) l0.j(this.submap, obj);
            if (collection == null) {
                return null;
            }
            return d.this.B(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> collectionRemove = this.submap.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionT = d.this.t();
            collectionT.addAll(collectionRemove);
            d.q(d.this, collectionRemove.size());
            collectionRemove.clear();
            return collectionT;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.submap.hashCode();
        }

        @Override // com.google.common.collect.l0.g, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return d.this.j();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.submap.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.submap.toString();
        }

        Map.Entry<K, Collection<V>> i(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return l0.d(key, d.this.B(key, entry.getValue()));
        }
    }

    /* JADX INFO: renamed from: com.google.common.collect.d$d, reason: collision with other inner class name */
    private abstract class AbstractC0220d<T> implements Iterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> keyIterator;
        K key = null;
        Collection<V> collection = null;
        Iterator<V> valueIterator = i0.i();

        abstract T a(K k, V v5);

        AbstractC0220d() {
            this.keyIterator = d.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.keyIterator.hasNext() || this.valueIterator.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.valueIterator.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.keyIterator.next();
                this.key = next.getKey();
                Collection<V> value = next.getValue();
                this.collection = value;
                this.valueIterator = value.iterator();
            }
            return a(r0.a(this.key), this.valueIterator.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.valueIterator.remove();
            Collection<V> collection = this.collection;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.keyIterator.remove();
            }
            d.o(d.this);
        }
    }

    private class e extends l0.e<K, Collection<V>> {

        class a implements Iterator<K> {
            Map.Entry<K, Collection<V>> entry;
            final /* synthetic */ Iterator val$entryIterator;

            a(Iterator it) {
                this.val$entryIterator = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.val$entryIterator.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.val$entryIterator.next();
                this.entry = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.o.q(this.entry != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.entry.getValue();
                this.val$entryIterator.remove();
                d.q(d.this, value.size());
                value.clear();
                this.entry = null;
            }
        }

        e(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || c().keySet().equals(obj);
        }

        @Override // com.google.common.collect.l0.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            i0.d(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return c().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return c().keySet().hashCode();
        }

        @Override // com.google.common.collect.l0.e, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(c().entrySet().iterator());
        }

        @Override // com.google.common.collect.l0.e, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Collection<V> collectionRemove = c().remove(obj);
            if (collectionRemove != null) {
                int size = collectionRemove.size();
                collectionRemove.clear();
                d.q(d.this, size);
                if (size > 0) {
                    return true;
                }
            }
            return false;
        }
    }

    class f extends d<K, V>.i implements NavigableMap<K, Collection<V>> {
        @Override // com.google.common.collect.d.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // com.google.common.collect.d.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> subMap(K k, K k6) {
            return subMap(k, true, k6, false);
        }

        @Override // com.google.common.collect.d.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new f(l().descendingMap());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z6) {
            return new f(l().headMap(k, z6));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d.i
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> j() {
            return new g(l());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z6, K k6, boolean z10) {
            return new f(l().subMap(k, z6, k6, z10));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z6) {
            return new f(l().tailMap(k, z6));
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = l().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return i(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return l().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = l().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return i(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = l().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return i(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return l().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = l().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return i(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return l().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = l().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return i(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = l().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return i(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return l().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return k();
        }

        @Override // com.google.common.collect.d.i, com.google.common.collect.d.c, com.google.common.collect.l0.g, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        Map.Entry<K, Collection<V>> p(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> collectionT = d.this.t();
            collectionT.addAll(next.getValue());
            it.remove();
            return l0.d(next.getKey(), d.this.A(collectionT));
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return p(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return p(descendingMap().entrySet().iterator());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d.i
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> l() {
            return (NavigableMap) super.l();
        }
    }

    class g extends d<K, V>.j implements NavigableSet<K> {
        @Override // com.google.common.collect.d.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // com.google.common.collect.d.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> subSet(K k, K k6) {
            return subSet(k, true, k6, false);
        }

        @Override // com.google.common.collect.d.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        g(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new g(d().descendingMap());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z6) {
            return new g(d().headMap(k, z6));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z6, K k6, boolean z10) {
            return new g(d().subMap(k, z6, k6, z10));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z6) {
            return new g(d().tailMap(k, z6));
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return d().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d.j
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> d() {
            return (NavigableMap) super.d();
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return d().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return d().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return d().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) i0.p(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) i0.p(descendingIterator());
        }
    }

    private class i extends d<K, V>.c implements SortedMap<K, Collection<V>> {
        SortedSet<K> sortedKeySet;

        i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new i(l().headMap(k));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.l0.g
        public SortedSet<K> j() {
            return new j(l());
        }

        @Override // com.google.common.collect.d.c, com.google.common.collect.l0.g, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: k */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.sortedKeySet;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetJ = j();
            this.sortedKeySet = sortedSetJ;
            return sortedSetJ;
        }

        SortedMap<K, Collection<V>> l() {
            return (SortedMap) this.submap;
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k6) {
            return new i(l().subMap(k, k6));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new i(l().tailMap(k));
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return l().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return l().firstKey();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return l().lastKey();
        }
    }

    private class j extends d<K, V>.e implements SortedSet<K> {
        j(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public SortedSet<K> headSet(K k) {
            return new j(d().headMap(k));
        }

        public SortedSet<K> subSet(K k, K k6) {
            return new j(d().subMap(k, k6));
        }

        public SortedSet<K> tailSet(K k) {
            return new j(d().tailMap(k));
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return d().comparator();
        }

        SortedMap<K, Collection<V>> d() {
            return (SortedMap) super.c();
        }

        @Override // java.util.SortedSet
        public K first() {
            return d().firstKey();
        }

        @Override // java.util.SortedSet
        public K last() {
            return d().lastKey();
        }
    }

    class k extends AbstractCollection<V> {
        final d<K, V>.k ancestor;
        final Collection<V> ancestorDelegate;
        Collection<V> delegate;
        final K key;

        class a implements Iterator<V> {
            final Iterator<V> delegateIterator;
            final Collection<V> originalDelegate;

            a() {
                Collection<V> collection = k.this.delegate;
                this.originalDelegate = collection;
                this.delegateIterator = d.x(collection);
            }

            void b() {
                k.this.g();
                if (k.this.delegate != this.originalDelegate) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                this.delegateIterator.remove();
                d.o(d.this);
                k.this.j();
            }

            Iterator<V> a() {
                b();
                return this.delegateIterator;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.delegateIterator.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                b();
                return this.delegateIterator.next();
            }

            a(Iterator<V> it) {
                this.originalDelegate = k.this.delegate;
                this.delegateIterator = it;
            }
        }

        d<K, V>.k d() {
            return this.ancestor;
        }

        Collection<V> e() {
            return this.delegate;
        }

        K f() {
            return this.key;
        }

        k(K k, Collection<V> collection, d<K, V>.k kVar) {
            this.key = k;
            this.delegate = collection;
            this.ancestor = kVar;
            this.ancestorDelegate = kVar == null ? null : kVar.e();
        }

        void c() {
            d<K, V>.k kVar = this.ancestor;
            if (kVar != null) {
                kVar.c();
            } else {
                d.this.map.put(this.key, this.delegate);
            }
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            g();
            return this.delegate.equals(obj);
        }

        void g() {
            Collection<V> collection;
            d<K, V>.k kVar = this.ancestor;
            if (kVar != null) {
                kVar.g();
                if (this.ancestor.e() != this.ancestorDelegate) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.delegate.isEmpty() || (collection = (Collection) d.this.map.get(this.key)) == null) {
                    return;
                }
                this.delegate = collection;
            }
        }

        void j() {
            d<K, V>.k kVar = this.ancestor;
            if (kVar != null) {
                kVar.j();
            } else if (this.delegate.isEmpty()) {
                d.this.map.remove(this.key);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v5) {
            g();
            boolean zIsEmpty = this.delegate.isEmpty();
            boolean zAdd = this.delegate.add(v5);
            if (zAdd) {
                d.n(d.this);
                if (zIsEmpty) {
                    c();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.delegate.addAll(collection);
            if (zAddAll) {
                d.p(d.this, this.delegate.size() - size);
                if (size == 0) {
                    c();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.delegate.clear();
            d.q(d.this, size);
            j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            g();
            return this.delegate.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            g();
            return this.delegate.containsAll(collection);
        }

        @Override // java.util.Collection
        public int hashCode() {
            g();
            return this.delegate.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            g();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            g();
            boolean zRemove = this.delegate.remove(obj);
            if (zRemove) {
                d.o(d.this);
                j();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.delegate.removeAll(collection);
            if (zRemoveAll) {
                d.p(d.this, this.delegate.size() - size);
                j();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            com.google.common.base.o.k(collection);
            int size = size();
            boolean zRetainAll = this.delegate.retainAll(collection);
            if (zRetainAll) {
                d.p(d.this, this.delegate.size() - size);
                j();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            g();
            return this.delegate.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            g();
            return this.delegate.toString();
        }
    }

    class l extends d<K, V>.k implements List<V> {

        private class a extends d<K, V>.k.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i10) {
                super(l.this.m().listIterator(i10));
            }

            @Override // java.util.ListIterator
            public void add(V v5) {
                boolean zIsEmpty = l.this.isEmpty();
                c().add(v5);
                d.n(d.this);
                if (zIsEmpty) {
                    l.this.c();
                }
            }

            private ListIterator<V> c() {
                return (ListIterator) a();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v5) {
                c().set(v5);
            }
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            g();
            return new a();
        }

        l(K k, List<V> list, d<K, V>.k kVar) {
            super(k, list, kVar);
        }

        @Override // java.util.List
        public void add(int i10, V v5) {
            g();
            boolean zIsEmpty = e().isEmpty();
            m().add(i10, v5);
            d.n(d.this);
            if (zIsEmpty) {
                c();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i10, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = m().addAll(i10, collection);
            if (zAddAll) {
                d.p(d.this, e().size() - size);
                if (size == 0) {
                    c();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public V get(int i10) {
            g();
            return m().get(i10);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            g();
            return m().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            g();
            return m().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i10) {
            g();
            return new a(i10);
        }

        List<V> m() {
            return (List) e();
        }

        @Override // java.util.List
        public V remove(int i10) {
            g();
            V vRemove = m().remove(i10);
            d.o(d.this);
            j();
            return vRemove;
        }

        @Override // java.util.List
        public V set(int i10, V v5) {
            g();
            return m().set(i10, v5);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i10, int i11) {
            k kVarD;
            g();
            d dVar = d.this;
            Object objF = f();
            List<V> listSubList = m().subList(i10, i11);
            if (d() == null) {
                kVarD = this;
            } else {
                kVarD = d();
            }
            return dVar.C(objF, listSubList, kVarD);
        }
    }

    Map<K, Collection<V>> s() {
        return this.map;
    }

    @Override // com.google.common.collect.m0
    public int size() {
        return this.totalSize;
    }

    abstract Collection<V> t();

    class a extends d<K, V>.AbstractC0220d<V> {
        @Override // com.google.common.collect.d.AbstractC0220d
        V a(K k, V v5) {
            return v5;
        }

        a(d dVar) {
            super();
        }
    }

    class b extends d<K, V>.AbstractC0220d<Map.Entry<K, V>> {
        b(d dVar) {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d.AbstractC0220d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> a(K k, V v5) {
            return l0.d(k, v5);
        }
    }

    private class h extends d<K, V>.l implements RandomAccess {
        h(d dVar, K k, List<V> list, d<K, V>.k kVar) {
            super(k, list, kVar);
        }
    }

    static /* synthetic */ int n(d dVar) {
        int i10 = dVar.totalSize;
        dVar.totalSize = i10 + 1;
        return i10;
    }

    static /* synthetic */ int o(d dVar) {
        int i10 = dVar.totalSize;
        dVar.totalSize = i10 - 1;
        return i10;
    }

    static /* synthetic */ int p(d dVar, int i10) {
        int i11 = dVar.totalSize + i10;
        dVar.totalSize = i11;
        return i11;
    }

    static /* synthetic */ int q(d dVar, int i10) {
        int i11 = dVar.totalSize - i10;
        dVar.totalSize = i11;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> x(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(Object obj) {
        Collection collection = (Collection) l0.k(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    Collection<V> B(K k6, Collection<V> collection) {
        return new k(k6, collection, null);
    }

    final List<V> C(K k6, List<V> list, d<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(this, k6, list, kVar) : new l(k6, list, kVar);
    }

    @Override // com.google.common.collect.m0
    public void clear() {
        Iterator<Collection<V>> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // com.google.common.collect.f
    Map<K, Collection<V>> e() {
        return new c(this.map);
    }

    @Override // com.google.common.collect.f
    Collection<Map.Entry<K, V>> f() {
        return this instanceof d1 ? new com.google.common.collect.f.b(this) : new com.google.common.collect.f.a();
    }

    @Override // com.google.common.collect.f
    Set<K> g() {
        return new e(this.map);
    }

    @Override // com.google.common.collect.m0
    public Collection<V> get(K k6) {
        Collection<V> collectionU = this.map.get(k6);
        if (collectionU == null) {
            collectionU = u(k6);
        }
        return B(k6, collectionU);
    }

    @Override // com.google.common.collect.f
    Collection<V> h() {
        return new com.google.common.collect.f.c();
    }

    @Override // com.google.common.collect.f
    Iterator<Map.Entry<K, V>> i() {
        return new b(this);
    }

    @Override // com.google.common.collect.f
    Iterator<V> k() {
        return new a(this);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public boolean put(K k6, V v5) {
        Collection<V> collection = this.map.get(k6);
        if (collection != null) {
            if (!collection.add(v5)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection<V> collectionU = u(k6);
        if (!collectionU.add(v5)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(k6, collectionU);
        return true;
    }

    final Map<K, Collection<V>> v() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new i((SortedMap) this.map) : new c(this.map);
    }

    final Set<K> w() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new j((SortedMap) this.map) : new e(this.map);
    }

    final void z(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            com.google.common.base.o.d(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    protected d(Map<K, Collection<V>> map) {
        com.google.common.base.o.d(map.isEmpty());
        this.map = map;
    }

    <E> Collection<E> A(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public Collection<Map.Entry<K, V>> a() {
        return super.a();
    }

    Collection<V> u(K k6) {
        return t();
    }

    @Override // com.google.common.collect.f, com.google.common.collect.m0
    public Collection<V> values() {
        return super.values();
    }
}

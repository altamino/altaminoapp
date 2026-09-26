package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class l0 {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class c implements com.google.common.base.g<Map.Entry<?, ?>, Object> {
        public static final c KEY = new a("KEY", 0);
        public static final c VALUE = new b("VALUE", 1);
        private static final /* synthetic */ c[] $VALUES = a();

        private c(String str, int i10) {
            super(str, i10);
        }

        private static /* synthetic */ c[] a() {
            return new c[]{KEY, VALUE};
        }

        final enum a extends c {
            a(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.google.common.base.g
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        final enum b extends c {
            b(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.google.common.base.g
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        /* synthetic */ c(String str, int i10, a aVar) {
            this(str, i10);
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    static abstract class g<K, V> extends AbstractMap<K, V> {
        private transient Set<Map.Entry<K, V>> entrySet;
        private transient Set<K> keySet;
        private transient Collection<V> values;

        abstract Set<Map.Entry<K, V>> a();

        /* JADX INFO: renamed from: e */
        Set<K> j() {
            return new e(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setA = a();
            this.entrySet = setA;
            return setA;
        }

        Collection<V> f() {
            return new f(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.keySet;
            if (set != null) {
                return set;
            }
            Set<K> setJ = j();
            this.keySet = setJ;
            return setJ;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.values;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionF = f();
            this.values = collectionF;
            return collectionF;
        }

        g() {
        }
    }

    static int a(int i10) {
        if (i10 < 3) {
            k.b(i10, "expectedSize");
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class a<K, V> extends k1<Map.Entry<K, V>, K> {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class b<K, V> extends k1<Map.Entry<K, V>, V> {
        b(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    static abstract class d<K, V> extends f1.d<Map.Entry<K, V>> {
        abstract Map<K, V> c();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public abstract boolean contains(Object obj);

        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return c().isEmpty();
        }

        @Override // com.google.common.collect.f1.d, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.o.k(collection));
            } catch (UnsupportedOperationException unused) {
                return f1.j(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.f1.d, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.o.k(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetG = f1.g(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSetG.add(((Map.Entry) obj).getKey());
                    }
                }
                return c().keySet().retainAll(hashSetG);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c().size();
        }
    }

    static class e<K, V> extends f1.d<K> {
        final Map<K, V> map;

        Map<K, V> c() {
            return this.map;
        }

        e(Map<K, V> map) {
            this.map = (Map) com.google.common.base.o.k(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return c().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return c().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return l0.f(c().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                c().remove(obj);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c().size();
        }
    }

    static class f<K, V> extends AbstractCollection<V> {
        final Map<K, V> map;

        final Map<K, V> c() {
            return this.map;
        }

        f(Map<K, V> map) {
            this.map = (Map) com.google.common.base.o.k(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return c().containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return c().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return l0.n(c().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : c().entrySet()) {
                    if (com.google.common.base.k.a(obj, entry.getValue())) {
                        c().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) com.google.common.base.o.k(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetF = f1.f();
                for (Map.Entry<K, V> entry : c().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetF.add(entry.getKey());
                    }
                }
                return c().keySet().removeAll(hashSetF);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) com.google.common.base.o.k(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetF = f1.f();
                for (Map.Entry<K, V> entry : c().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetF.add(entry.getKey());
                    }
                }
                return c().keySet().retainAll(hashSetF);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return c().size();
        }
    }

    static boolean c(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static <K, V> Map.Entry<K, V> d(K k, V v5) {
        return new z(k, v5);
    }

    static <K> com.google.common.base.g<Map.Entry<K, ?>, K> e() {
        return c.KEY;
    }

    static <K, V> Iterator<K> f(Iterator<Map.Entry<K, V>> it) {
        return new a(it);
    }

    public static <K, V> HashMap<K, V> g(int i10) {
        return new HashMap<>(a(i10));
    }

    public static <K, V> IdentityHashMap<K, V> h() {
        return new IdentityHashMap<>();
    }

    static <V> com.google.common.base.g<Map.Entry<?, V>, V> m() {
        return c.VALUE;
    }

    static <K, V> Iterator<V> n(Iterator<Map.Entry<K, V>> it) {
        return new b(it);
    }

    static boolean b(Map<?, ?> map, Object obj) {
        return i0.e(n(map.entrySet().iterator()), obj);
    }

    static boolean i(Map<?, ?> map, Object obj) {
        com.google.common.base.o.k(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static <V> V j(Map<?, V> map, Object obj) {
        com.google.common.base.o.k(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static <V> V k(Map<?, V> map, Object obj) {
        com.google.common.base.o.k(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static String l(Map<?, ?> map) {
        StringBuilder sbB = l.b(map.size());
        sbB.append(kotlinx.serialization.json.internal.b.BEGIN_OBJ);
        boolean z6 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z6) {
                sbB.append(", ");
            }
            sbB.append(entry.getKey());
            sbB.append('=');
            sbB.append(entry.getValue());
            z6 = false;
        }
        sbB.append(kotlinx.serialization.json.internal.b.END_OBJ);
        return sbB.toString();
    }
}

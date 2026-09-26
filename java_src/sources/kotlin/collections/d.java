package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d<K, V> implements Map<K, V>, f8.a {

    @NotNull
    public static final a Companion = new a(null);

    @Nullable
    private volatile Set<? extends K> _keys;

    @Nullable
    private volatile Collection<? extends V> _values;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends i<K> {
        final /* synthetic */ d<K, V> this$0;

        public static final class a implements Iterator<K>, f8.a {
            final /* synthetic */ Iterator<Map.Entry<K, V>> $entryIterator;

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }

            /* JADX WARN: Multi-variable type inference failed */
            a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.$entryIterator = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.$entryIterator.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                return this.$entryIterator.next().getKey();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(d<K, ? extends V> dVar) {
            this.this$0 = dVar;
        }

        @Override // kotlin.collections.a, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.this$0.containsKey(obj);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return this.this$0.size();
        }

        @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
        @NotNull
        public Iterator<K> iterator() {
            return new a(this.this$0.entrySet().iterator());
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.l<Map.Entry<? extends K, ? extends V>, CharSequence> {
        final /* synthetic */ d<K, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(d<K, ? extends V> dVar) {
            super(1);
            this.this$0 = dVar;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(@NotNull Map.Entry<? extends K, ? extends V> it) {
            kotlin.jvm.internal.t.j(it, "it");
            return this.this$0.m(it);
        }
    }

    /* JADX INFO: renamed from: kotlin.collections.d$d, reason: collision with other inner class name */
    public static final class C0424d extends kotlin.collections.a<V> {
        final /* synthetic */ d<K, V> this$0;

        /* JADX INFO: renamed from: kotlin.collections.d$d$a */
        public static final class a implements Iterator<V>, f8.a {
            final /* synthetic */ Iterator<Map.Entry<K, V>> $entryIterator;

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }

            /* JADX WARN: Multi-variable type inference failed */
            a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
                this.$entryIterator = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.$entryIterator.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.$entryIterator.next().getValue();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        C0424d(d<K, ? extends V> dVar) {
            this.this$0 = dVar;
        }

        @Override // kotlin.collections.a, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.this$0.containsValue(obj);
        }

        @Override // kotlin.collections.a
        public int getSize() {
            return this.this$0.size();
        }

        @Override // kotlin.collections.a, java.util.Collection, java.lang.Iterable, java.util.List
        @NotNull
        public Iterator<V> iterator() {
            return new a(this.this$0.entrySet().iterator());
        }
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean e(@Nullable Map.Entry<?, ?> entry) {
        if (entry == null) {
            return false;
        }
        Object key = entry.getKey();
        Object value = entry.getValue();
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        V v5 = get(key);
        if (!kotlin.jvm.internal.t.e(value, v5)) {
            return false;
        }
        if (v5 != null) {
            return true;
        }
        kotlin.jvm.internal.t.h(this, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.containsKey, *>");
        return containsKey(key);
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        Set<Map.Entry<K, V>> setEntrySet = map.entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return true;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (!e((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract Set f();

    @Override // java.util.Map
    public V put(K k, V v5) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    private final String l(Object obj) {
        return obj == this ? "(this Map)" : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String m(Map.Entry<? extends K, ? extends V> entry) {
        return l(entry.getKey()) + '=' + l(entry.getValue());
    }

    @NotNull
    public Set<K> g() {
        if (this._keys == null) {
            this._keys = new b(this);
        }
        Set<? extends K> set = this._keys;
        kotlin.jvm.internal.t.g(set);
        return set;
    }

    @NotNull
    public Collection<V> j() {
        if (this._values == null) {
            this._values = new C0424d(this);
        }
        Collection<? extends V> collection = this._values;
        kotlin.jvm.internal.t.g(collection);
        return collection;
    }

    protected d() {
    }

    private final Map.Entry<K, V> k(K k) {
        Object next;
        Iterator<T> it = entrySet().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (kotlin.jvm.internal.t.e(((Map.Entry) next).getKey(), k)) {
                return (Map.Entry) next;
            }
        }
        next = null;
        return (Map.Entry) next;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (k(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> setEntrySet = entrySet();
        if ((setEntrySet instanceof Collection) && setEntrySet.isEmpty()) {
            return false;
        }
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.t.e(((Map.Entry) it.next()).getValue(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        Map.Entry<K, V> entryK = k(obj);
        if (entryK != null) {
            return entryK.getValue();
        }
        return null;
    }

    public int h() {
        return entrySet().size();
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return g();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return h();
    }

    @NotNull
    public String toString() {
        return d0.t0(entrySet(), ", ", "{", "}", 0, null, new c(this), 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return j();
    }
}

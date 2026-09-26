package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes8.dex */
public abstract class b0<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    private transient d0<Map.Entry<K, V>> entrySet;
    private transient d0<K> keySet;
    private transient e0<K, V> multimapView;
    private transient y<V> values;

    public static class a<K, V> {
        Object[] alternatingKeysAndValues;
        C0219a duplicateKey;
        boolean entriesUsed;
        int size;
        Comparator<? super V> valueComparator;

        /* JADX INFO: renamed from: com.google.common.collect.b0$a$a, reason: collision with other inner class name */
        static final class C0219a {
            private final Object key;
            private final Object value1;
            private final Object value2;

            IllegalArgumentException a() {
                String strValueOf = String.valueOf(this.key);
                String strValueOf2 = String.valueOf(this.value1);
                String strValueOf3 = String.valueOf(this.key);
                String strValueOf4 = String.valueOf(this.value2);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 39 + strValueOf2.length() + strValueOf3.length() + strValueOf4.length());
                sb.append("Multiple entries with same key: ");
                sb.append(strValueOf);
                sb.append("=");
                sb.append(strValueOf2);
                sb.append(" and ");
                sb.append(strValueOf3);
                sb.append("=");
                sb.append(strValueOf4);
                return new IllegalArgumentException(sb.toString());
            }

            C0219a(Object obj, Object obj2, Object obj3) {
                this.key = obj;
                this.value1 = obj2;
                this.value2 = obj3;
            }
        }

        public a() {
            this(4);
        }

        public b0<K, V> c() {
            return b(true);
        }

        a(int i10) {
            this.alternatingKeysAndValues = new Object[i10 * 2];
            this.size = 0;
            this.entriesUsed = false;
        }

        private b0<K, V> b(boolean z6) {
            Object[] objArrE;
            C0219a c0219a;
            C0219a c0219a2;
            if (z6 && (c0219a2 = this.duplicateKey) != null) {
                throw c0219a2.a();
            }
            int length = this.size;
            if (this.valueComparator == null) {
                objArrE = this.alternatingKeysAndValues;
            } else {
                if (this.entriesUsed) {
                    this.alternatingKeysAndValues = Arrays.copyOf(this.alternatingKeysAndValues, length * 2);
                }
                objArrE = this.alternatingKeysAndValues;
                if (!z6) {
                    objArrE = e(objArrE, this.size);
                    if (objArrE.length < this.alternatingKeysAndValues.length) {
                        length = objArrE.length >>> 1;
                    }
                }
                i(objArrE, length, this.valueComparator);
            }
            this.entriesUsed = true;
            x0 x0VarO = x0.o(length, objArrE, this);
            if (!z6 || (c0219a = this.duplicateKey) == null) {
                return x0VarO;
            }
            throw c0219a.a();
        }

        private void d(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.alternatingKeysAndValues;
            if (i11 > objArr.length) {
                this.alternatingKeysAndValues = Arrays.copyOf(objArr, y.b.c(objArr.length, i11));
                this.entriesUsed = false;
            }
        }

        private Object[] e(Object[] objArr, int i10) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                Object obj = objArr[i11 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i11);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i10 - bitSet.cardinality()) * 2];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10 * 2) {
                if (bitSet.get(i12 >>> 1)) {
                    i12 += 2;
                } else {
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    Object obj2 = objArr[i12];
                    Objects.requireNonNull(obj2);
                    objArr2[i13] = obj2;
                    i13 += 2;
                    i12 += 2;
                    Object obj3 = objArr[i15];
                    Objects.requireNonNull(obj3);
                    objArr2[i14] = obj3;
                }
            }
            return objArr2;
        }

        static <V> void i(Object[] objArr, int i10, Comparator<? super V> comparator) {
            Map.Entry[] entryArr = new Map.Entry[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = i11 * 2;
                Object obj = objArr[i12];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i12 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i11] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i10, t0.a(comparator).e(l0.m()));
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * 2;
                objArr[i14] = entryArr[i13].getKey();
                objArr[i14 + 1] = entryArr[i13].getValue();
            }
        }

        public a<K, V> f(K k, V v5) {
            d(this.size + 1);
            k.a(k, v5);
            Object[] objArr = this.alternatingKeysAndValues;
            int i10 = this.size;
            objArr[i10 * 2] = k;
            objArr[(i10 * 2) + 1] = v5;
            this.size = i10 + 1;
            return this;
        }

        public a<K, V> h(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                d(this.size + ((Collection) iterable).size());
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        public b0<K, V> a() {
            return c();
        }

        public a<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            return f(entry.getKey(), entry.getValue());
        }
    }

    static class b<K, V> implements Serializable {
        private static final boolean USE_LEGACY_SERIALIZATION = true;
        private static final long serialVersionUID = 0;
        private final Object keys;
        private final Object values;

        /* JADX WARN: Multi-variable type inference failed */
        final Object a() {
            Object[] objArr = (Object[]) this.keys;
            Object[] objArr2 = (Object[]) this.values;
            a<K, V> aVarB = b(objArr.length);
            for (int i10 = 0; i10 < objArr.length; i10++) {
                aVarB.f(objArr[i10], objArr2[i10]);
            }
            return aVarB.c();
        }

        a<K, V> b(int i10) {
            return new a<>(i10);
        }

        final Object readResolve() {
            Object obj = this.keys;
            if (!(obj instanceof d0)) {
                return a();
            }
            d0 d0Var = (d0) obj;
            y yVar = (y) this.values;
            a aVar = (a<K, V>) b(d0Var.size());
            l1 it = d0Var.iterator();
            l1 it2 = yVar.iterator();
            while (it.hasNext()) {
                aVar.f(it.next(), it2.next());
            }
            return aVar.c();
        }

        b(b0<K, V> b0Var) {
            Object[] objArr = new Object[b0Var.size()];
            Object[] objArr2 = new Object[b0Var.size()];
            l1<Map.Entry<K, V>> it = b0Var.entrySet().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i10] = next.getKey();
                objArr2[i10] = next.getValue();
                i10++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }
    }

    abstract d0<Map.Entry<K, V>> g();

    @Override // java.util.Map
    public abstract V get(Object obj);

    abstract d0<K> h();

    abstract y<V> i();

    abstract boolean k();

    public static <K, V> a<K, V> a() {
        return new a<>();
    }

    public static <K, V> b0<K, V> e(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        a aVar = new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        aVar.h(iterable);
        return aVar.a();
    }

    public static <K, V> b0<K, V> f(Map<? extends K, ? extends V> map) {
        if ((map instanceof b0) && !(map instanceof SortedMap)) {
            b0<K, V> b0Var = (b0) map;
            if (!b0Var.k()) {
                return b0Var;
            }
        }
        return e(map.entrySet());
    }

    public static <K, V> b0<K, V> m() {
        return (b0<K, V>) x0.EMPTY;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public d0<Map.Entry<K, V>> entrySet() {
        d0<Map.Entry<K, V>> d0Var = this.entrySet;
        if (d0Var != null) {
            return d0Var;
        }
        d0<Map.Entry<K, V>> d0VarG = g();
        this.entrySet = d0VarG;
        return d0VarG;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public d0<K> keySet() {
        d0<K> d0Var = this.keySet;
        if (d0Var != null) {
            return d0Var;
        }
        d0<K> d0VarH = h();
        this.keySet = d0VarH;
        return d0VarH;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public y<V> values() {
        y<V> yVar = this.values;
        if (yVar != null) {
            return yVar;
        }
        y<V> yVarI = i();
        this.values = yVarI;
        return yVarI;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v5) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    Object writeReplace() {
        return new b(this);
    }

    b0() {
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return l0.c(this, obj);
    }

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v5) {
        V v6 = get(obj);
        if (v6 != null) {
            return v6;
        }
        return v5;
    }

    @Override // java.util.Map
    public int hashCode() {
        return f1.d(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return l0.l(this);
    }
}

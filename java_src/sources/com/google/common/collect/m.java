package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class m<K, V> extends AbstractMap<K, V> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;
    private static final Object NOT_FOUND = new Object();
    transient int[] entries;
    private transient Set<Map.Entry<K, V>> entrySetView;
    private transient Set<K> keySetView;
    transient Object[] keys;
    private transient int metadata;
    private transient int size;
    private transient Object table;
    transient Object[] values;
    private transient Collection<V> valuesView;

    class a extends m<K, V>.e<K> {
        a() {
            super(m.this, null);
        }

        @Override // com.google.common.collect.m.e
        K b(int i10) {
            return (K) m.this.K(i10);
        }
    }

    class b extends m<K, V>.e<Map.Entry<K, V>> {
        b() {
            super(m.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> b(int i10) {
            return new g(i10);
        }
    }

    class c extends m<K, V>.e<V> {
        c() {
            super(m.this, null);
        }

        @Override // com.google.common.collect.m.e
        V b(int i10) {
            return (V) m.this.a0(i10);
        }
    }

    class d extends AbstractSet<Map.Entry<K, V>> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> mapA = m.this.A();
            if (mapA != null) {
                return mapA.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iH = m.this.H(entry.getKey());
            return iH != -1 && com.google.common.base.k.a(m.this.a0(iH), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return m.this.C();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapA = m.this.A();
            if (mapA != null) {
                return mapA.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (m.this.N()) {
                return false;
            }
            int iF = m.this.F();
            int iF2 = n.f(entry.getKey(), entry.getValue(), iF, m.this.R(), m.this.P(), m.this.Q(), m.this.S());
            if (iF2 == -1) {
                return false;
            }
            m.this.M(iF2, iF);
            m.h(m.this);
            m.this.G();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m.this.size();
        }
    }

    private abstract class e<T> implements Iterator<T> {
        int currentIndex;
        int expectedMetadata;
        int indexToRemove;

        private e() {
            this.expectedMetadata = m.this.metadata;
            this.currentIndex = m.this.D();
            this.indexToRemove = -1;
        }

        abstract T b(int i10);

        void c() {
            this.expectedMetadata += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentIndex >= 0;
        }

        private void a() {
            if (m.this.metadata != this.expectedMetadata) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public T next() {
            a();
            if (hasNext()) {
                int i10 = this.currentIndex;
                this.indexToRemove = i10;
                T tB = b(i10);
                this.currentIndex = m.this.E(this.currentIndex);
                return tB;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            boolean z6;
            a();
            if (this.indexToRemove >= 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            k.c(z6);
            c();
            m mVar = m.this;
            mVar.remove(mVar.K(this.indexToRemove));
            this.currentIndex = m.this.r(this.currentIndex, this.indexToRemove);
            this.indexToRemove = -1;
        }

        /* synthetic */ e(m mVar, a aVar) {
            this();
        }
    }

    class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return m.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return m.this.L();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapA = m.this.A();
            if (mapA != null) {
                return mapA.keySet().remove(obj);
            }
            return m.this.O(obj) != m.NOT_FOUND;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return m.this.size();
        }
    }

    final class g extends com.google.common.collect.e<K, V> {
        private final K key;
        private int lastKnownIndex;

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        g(int i10) {
            this.key = (K) m.this.K(i10);
            this.lastKnownIndex = i10;
        }

        private void a() {
            int i10 = this.lastKnownIndex;
            if (i10 == -1 || i10 >= m.this.size() || !com.google.common.base.k.a(this.key, m.this.K(this.lastKnownIndex))) {
                this.lastKnownIndex = m.this.H(this.key);
            }
        }

        @Override // com.google.common.collect.e, java.util.Map.Entry
        public V getValue() {
            Map<K, V> mapA = m.this.A();
            if (mapA != null) {
                return (V) r0.a(mapA.get(this.key));
            }
            a();
            int i10 = this.lastKnownIndex;
            return i10 == -1 ? (V) r0.b() : (V) m.this.a0(i10);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            Map<K, V> mapA = m.this.A();
            if (mapA != null) {
                return (V) r0.a(mapA.put(this.key, v5));
            }
            a();
            int i10 = this.lastKnownIndex;
            if (i10 == -1) {
                m.this.put(this.key, v5);
                return (V) r0.b();
            }
            V v6 = (V) m.this.a0(i10);
            m.this.Z(this.lastKnownIndex, v5);
            return v6;
        }
    }

    class h extends AbstractCollection<V> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            m.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return m.this.b0();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return m.this.size();
        }
    }

    m() {
        I(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int F() {
        return (1 << (this.metadata & 31)) - 1;
    }

    int E(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.size) {
            return i11;
        }
        return -1;
    }

    void G() {
        this.metadata += 32;
    }

    void I(int i10) {
        com.google.common.base.o.e(i10 >= 0, "Expected size must be >= 0");
        this.metadata = com.google.common.primitives.e.f(i10, 1, kotlinx.coroutines.internal.v.MAX_CAPACITY_MASK);
    }

    void J(int i10, K k, V v5, int i11, int i12) {
        W(i10, n.d(i11, 0, i12));
        Y(i10, k);
        Z(i10, v5);
    }

    boolean N() {
        return this.table == null;
    }

    void q(int i10) {
    }

    int r(int i10, int i11) {
        return i10 - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] P() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] Q() {
        Object[] objArr = this.keys;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object R() {
        Object obj = this.table;
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] S() {
        Object[] objArr = this.values;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    static /* synthetic */ int h(m mVar) {
        int i10 = mVar.size;
        mVar.size = i10 - 1;
        return i10;
    }

    public static <K, V> m<K, V> u() {
        return new m<>();
    }

    public static <K, V> m<K, V> z(int i10) {
        return new m<>(i10);
    }

    Map<K, V> A() {
        Object obj = this.table;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySetView;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setV = v();
        this.entrySetView = setV;
        return setV;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySetView;
        if (set != null) {
            return set;
        }
        Set<K> setX = x();
        this.keySetView = setX;
        return setX;
    }

    Set<Map.Entry<K, V>> v() {
        return new d();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionY = y();
        this.valuesView = collectionY;
        return collectionY;
    }

    Map<K, V> w(int i10) {
        return new LinkedHashMap(i10, 1.0f);
    }

    Set<K> x() {
        return new f();
    }

    Collection<V> y() {
        return new h();
    }

    m(int i10) {
        I(i10);
    }

    private int B(int i10) {
        return P()[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int H(Object obj) {
        if (N()) {
            return -1;
        }
        int iC = x.c(obj);
        int iF = F();
        int iH = n.h(R(), iC & iF);
        if (iH == 0) {
            return -1;
        }
        int iB = n.b(iC, iF);
        do {
            int i10 = iH - 1;
            int iB2 = B(i10);
            if (n.b(iB2, iF) == iB && com.google.common.base.k.a(obj, K(i10))) {
                return i10;
            }
            iH = n.c(iB2, iF);
        } while (iH != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K K(int i10) {
        return (K) Q()[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object O(Object obj) {
        if (N()) {
            return NOT_FOUND;
        }
        int iF = F();
        int iF2 = n.f(obj, null, iF, R(), P(), Q(), null);
        if (iF2 == -1) {
            return NOT_FOUND;
        }
        V vA0 = a0(iF2);
        M(iF2, iF);
        this.size--;
        G();
        return vA0;
    }

    private void U(int i10) {
        int iMin;
        int length = P().length;
        if (i10 > length && (iMin = Math.min(kotlinx.coroutines.internal.v.MAX_CAPACITY_MASK, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            T(iMin);
        }
    }

    private int V(int i10, int i11, int i12, int i13) {
        Object objA = n.a(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            n.i(objA, i12 & i14, i13 + 1);
        }
        Object objR = R();
        int[] iArrP = P();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iH = n.h(objR, i15);
            while (iH != 0) {
                int i16 = iH - 1;
                int i17 = iArrP[i16];
                int iB = n.b(i17, i10) | i15;
                int i18 = iB & i14;
                int iH2 = n.h(objA, i18);
                n.i(objA, i18, iH);
                iArrP[i16] = n.d(iB, iH2, i14);
                iH = n.c(i17, i10);
            }
        }
        this.table = objA;
        X(i14);
        return i14;
    }

    private void W(int i10, int i11) {
        P()[i10] = i11;
    }

    private void X(int i10) {
        this.metadata = n.d(this.metadata, 32 - Integer.numberOfLeadingZeros(i10), 31);
    }

    private void Y(int i10, K k) {
        Q()[i10] = k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i10, V v5) {
        S()[i10] = v5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V a0(int i10) {
        return (V) S()[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i10 = objectInputStream.readInt();
        if (i10 >= 0) {
            I(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                put(objectInputStream.readObject(), objectInputStream.readObject());
            }
            return;
        }
        StringBuilder sb = new StringBuilder(25);
        sb.append("Invalid size: ");
        sb.append(i10);
        throw new InvalidObjectException(sb.toString());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itC = C();
        while (itC.hasNext()) {
            Map.Entry<K, V> next = itC.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    Iterator<Map.Entry<K, V>> C() {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.entrySet().iterator();
        }
        return new b();
    }

    int D() {
        if (isEmpty()) {
            return -1;
        }
        return 0;
    }

    Iterator<K> L() {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.keySet().iterator();
        }
        return new a();
    }

    void M(int i10, int i11) {
        Object objR = R();
        int[] iArrP = P();
        Object[] objArrQ = Q();
        Object[] objArrS = S();
        int size = size();
        int i12 = size - 1;
        if (i10 < i12) {
            Object obj = objArrQ[i12];
            objArrQ[i10] = obj;
            objArrS[i10] = objArrS[i12];
            objArrQ[i12] = null;
            objArrS[i12] = null;
            iArrP[i10] = iArrP[i12];
            iArrP[i12] = 0;
            int iC = x.c(obj) & i11;
            int iH = n.h(objR, iC);
            if (iH == size) {
                n.i(objR, iC, i10 + 1);
                return;
            }
            while (true) {
                int i13 = iH - 1;
                int i14 = iArrP[i13];
                int iC2 = n.c(i14, i11);
                if (iC2 == size) {
                    iArrP[i13] = n.d(i14, i10 + 1, i11);
                    return;
                }
                iH = iC2;
            }
        } else {
            objArrQ[i10] = null;
            objArrS[i10] = null;
            iArrP[i10] = 0;
        }
    }

    void T(int i10) {
        this.entries = Arrays.copyOf(P(), i10);
        this.keys = Arrays.copyOf(Q(), i10);
        this.values = Arrays.copyOf(S(), i10);
    }

    Iterator<V> b0() {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.values().iterator();
        }
        return new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (N()) {
            return;
        }
        G();
        Map<K, V> mapA = A();
        if (mapA != null) {
            this.metadata = com.google.common.primitives.e.f(size(), 3, kotlinx.coroutines.internal.v.MAX_CAPACITY_MASK);
            mapA.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(Q(), 0, this.size, (Object) null);
        Arrays.fill(S(), 0, this.size, (Object) null);
        n.g(R());
        Arrays.fill(P(), 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.containsKey(obj);
        }
        if (H(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.size; i10++) {
            if (com.google.common.base.k.a(obj, a0(i10))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.get(obj);
        }
        int iH = H(obj);
        if (iH == -1) {
            return null;
        }
        q(iH);
        return a0(iH);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v5) {
        int iV;
        int i10;
        if (N()) {
            s();
        }
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.put(k, v5);
        }
        int[] iArrP = P();
        Object[] objArrQ = Q();
        Object[] objArrS = S();
        int i11 = this.size;
        int i12 = i11 + 1;
        int iC = x.c(k);
        int iF = F();
        int i13 = iC & iF;
        int iH = n.h(R(), i13);
        if (iH == 0) {
            if (i12 > iF) {
                iV = V(iF, n.e(iF), iC, i11);
                i10 = iV;
            } else {
                n.i(R(), i13, i12);
                i10 = iF;
            }
        } else {
            int iB = n.b(iC, iF);
            int i14 = 0;
            while (true) {
                int i15 = iH - 1;
                int i16 = iArrP[i15];
                if (n.b(i16, iF) == iB && com.google.common.base.k.a(k, objArrQ[i15])) {
                    V v6 = (V) objArrS[i15];
                    objArrS[i15] = v5;
                    q(i15);
                    return v6;
                }
                int iC2 = n.c(i16, iF);
                i14++;
                if (iC2 == 0) {
                    if (i14 >= 9) {
                        return t().put(k, v5);
                    }
                    if (i12 > iF) {
                        iV = V(iF, n.e(iF), iC, i11);
                        i10 = iV;
                    } else {
                        iArrP[i15] = n.d(i16, i12, iF);
                        i10 = iF;
                    }
                } else {
                    iH = iC2;
                }
            }
        }
        U(i12);
        J(i11, k, v5, iC, i10);
        this.size = i12;
        G();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.remove(obj);
        }
        V v5 = (V) O(obj);
        if (v5 == NOT_FOUND) {
            return null;
        }
        return v5;
    }

    int s() {
        com.google.common.base.o.q(N(), "Arrays already allocated");
        int i10 = this.metadata;
        int iJ = n.j(i10);
        this.table = n.a(iJ);
        X(iJ - 1);
        this.entries = new int[i10];
        this.keys = new Object[i10];
        this.values = new Object[i10];
        return i10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> mapA = A();
        if (mapA != null) {
            return mapA.size();
        }
        return this.size;
    }

    Map<K, V> t() {
        Map<K, V> mapW = w(F() + 1);
        int iD = D();
        while (iD >= 0) {
            mapW.put(K(iD), a0(iD));
            iD = E(iD);
        }
        this.table = mapW;
        this.entries = null;
        this.keys = null;
        this.values = null;
        G();
        return mapW;
    }
}

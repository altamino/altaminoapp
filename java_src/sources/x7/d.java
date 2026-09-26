package x7;

import j8.o;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.collections.m0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class d<K, V> implements Map<K, V>, Serializable, f8.e {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final d Empty;
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;

    @Nullable
    private x7.e<K, V> entriesView;

    @NotNull
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;

    @NotNull
    private K[] keysArray;

    @Nullable
    private x7.f<K> keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;

    @NotNull
    private int[] presenceArray;
    private int size;

    @Nullable
    private V[] valuesArray;

    @Nullable
    private g<V> valuesView;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int c(int i10) {
            return Integer.highestOneBit(o.e(i10, 1) * 3);
        }

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int d(int i10) {
            return Integer.numberOfLeadingZeros(i10) + 1;
        }

        @NotNull
        public final d e() {
            return d.Empty;
        }
    }

    public static final class b<K, V> extends C0505d<K, V> implements Iterator<Map.Entry<K, V>>, f8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull d<K, V> map) {
            super(map);
            t.j(map, "map");
        }

        public final void k(@NotNull StringBuilder sb) {
            t.j(sb, "sb");
            if (b() >= ((d) e()).length) {
                throw new NoSuchElementException();
            }
            int iB = b();
            g(iB + 1);
            h(iB);
            Object obj = ((d) e()).keysArray[c()];
            if (obj == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = ((d) e()).valuesArray;
            t.g(objArr);
            Object obj2 = objArr[c()];
            if (obj2 == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            f();
        }

        @Override // java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public c<K, V> next() {
            a();
            if (b() < ((d) e()).length) {
                int iB = b();
                g(iB + 1);
                h(iB);
                c<K, V> cVar = new c<>(e(), c());
                f();
                return cVar;
            }
            throw new NoSuchElementException();
        }

        public final int l() {
            int iHashCode;
            if (b() < ((d) e()).length) {
                int iB = b();
                g(iB + 1);
                h(iB);
                Object obj = ((d) e()).keysArray[c()];
                int iHashCode2 = 0;
                if (obj != null) {
                    iHashCode = obj.hashCode();
                } else {
                    iHashCode = 0;
                }
                Object[] objArr = ((d) e()).valuesArray;
                t.g(objArr);
                Object obj2 = objArr[c()];
                if (obj2 != null) {
                    iHashCode2 = obj2.hashCode();
                }
                int i10 = iHashCode ^ iHashCode2;
                f();
                return i10;
            }
            throw new NoSuchElementException();
        }
    }

    public static final class c<K, V> implements Map.Entry<K, V>, f8.e.a {
        private final int index;

        @NotNull
        private final d<K, V> map;

        public c(@NotNull d<K, V> map, int i10) {
            t.j(map, "map");
            this.map = map;
            this.index = i10;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (t.e(entry.getKey(), getKey()) && t.e(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((d) this.map).keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((d) this.map).valuesArray;
            t.g(objArr);
            return (V) objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            this.map.q();
            Object[] objArrO = this.map.o();
            int i10 = this.index;
            V v6 = (V) objArrO[i10];
            objArrO[i10] = v5;
            return v6;
        }

        @NotNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int iHashCode;
            K key = getKey();
            int iHashCode2 = 0;
            if (key != null) {
                iHashCode = key.hashCode();
            } else {
                iHashCode = 0;
            }
            V value = getValue();
            if (value != null) {
                iHashCode2 = value.hashCode();
            }
            return iHashCode ^ iHashCode2;
        }
    }

    /* JADX INFO: renamed from: x7.d$d, reason: collision with other inner class name */
    public static class C0505d<K, V> {
        private int expectedModCount;
        private int index;
        private int lastIndex;

        @NotNull
        private final d<K, V> map;

        public final int b() {
            return this.index;
        }

        public final int c() {
            return this.lastIndex;
        }

        @NotNull
        public final d<K, V> e() {
            return this.map;
        }

        public final void g(int i10) {
            this.index = i10;
        }

        public final void h(int i10) {
            this.lastIndex = i10;
        }

        public C0505d(@NotNull d<K, V> map) {
            t.j(map, "map");
            this.map = map;
            this.lastIndex = -1;
            this.expectedModCount = ((d) map).modCount;
            f();
        }

        public final void a() {
            if (((d) this.map).modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        public final void f() {
            while (this.index < ((d) this.map).length) {
                int[] iArr = ((d) this.map).presenceArray;
                int i10 = this.index;
                if (iArr[i10] >= 0) {
                    return;
                } else {
                    this.index = i10 + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.index < ((d) this.map).length;
        }

        public final void remove() {
            a();
            if (this.lastIndex != -1) {
                this.map.q();
                this.map.R(this.lastIndex);
                this.lastIndex = -1;
                this.expectedModCount = ((d) this.map).modCount;
                return;
            }
            throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
        }
    }

    public static final class e<K, V> extends C0505d<K, V> implements Iterator<K>, f8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull d<K, V> map) {
            super(map);
            t.j(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            a();
            if (b() < ((d) e()).length) {
                int iB = b();
                g(iB + 1);
                h(iB);
                K k = (K) ((d) e()).keysArray[c()];
                f();
                return k;
            }
            throw new NoSuchElementException();
        }
    }

    public static final class f<K, V> extends C0505d<K, V> implements Iterator<V>, f8.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull d<K, V> map) {
            super(map);
            t.j(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            a();
            if (b() < ((d) e()).length) {
                int iB = b();
                g(iB + 1);
                h(iB);
                Object[] objArr = ((d) e()).valuesArray;
                t.g(objArr);
                V v5 = (V) objArr[c()];
                f();
                return v5;
            }
            throw new NoSuchElementException();
        }
    }

    private d(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i10, int i11) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i10;
        this.length = i11;
        this.hashShift = Companion.d(C());
    }

    private final void M() {
        this.modCount++;
    }

    public int E() {
        return this.size;
    }

    public final boolean H() {
        return this.isReadOnly;
    }

    static {
        d dVar = new d(0);
        dVar.isReadOnly = true;
        Empty = dVar;
    }

    private final int C() {
        return this.hashArray.length;
    }

    private final int G(K k) {
        return ((k != null ? k.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean L(int i10) {
        int iG = G(this.keysArray[i10]);
        int i11 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[iG] == 0) {
                iArr[iG] = i10 + 1;
                this.presenceArray[i10] = iG;
                return true;
            }
            i11--;
            if (i11 < 0) {
                return false;
            }
            iG = iG == 0 ? C() - 1 : iG - 1;
        }
    }

    private final void P(int i10) {
        int iJ = o.j(this.maxProbeDistance * 2, C() / 2);
        int i11 = 0;
        int i12 = i10;
        do {
            i10 = i10 == 0 ? C() - 1 : i10 - 1;
            i11++;
            if (i11 > this.maxProbeDistance) {
                this.hashArray[i12] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i13 = iArr[i10];
            if (i13 == 0) {
                iArr[i12] = 0;
                return;
            }
            if (i13 < 0) {
                iArr[i12] = -1;
            } else {
                int i14 = i13 - 1;
                if (((G(this.keysArray[i14]) - i10) & (C() - 1)) >= i11) {
                    this.hashArray[i12] = i13;
                    this.presenceArray[i14] = i12;
                }
                iJ--;
            }
            i12 = i10;
            i11 = 0;
            iJ--;
        } while (iJ >= 0);
        this.hashArray[i12] = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R(int i10) {
        x7.c.f(this.keysArray, i10);
        P(this.presenceArray[i10]);
        this.presenceArray[i10] = -1;
        this.size = size() - 1;
        M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] o() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) x7.c.d(A());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final void r() {
        int i10;
        V[] vArr = this.valuesArray;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.length;
            if (i11 >= i10) {
                break;
            }
            if (this.presenceArray[i11] >= 0) {
                K[] kArr = this.keysArray;
                kArr[i12] = kArr[i11];
                if (vArr != null) {
                    vArr[i12] = vArr[i11];
                }
                i12++;
            }
            i11++;
        }
        x7.c.g(this.keysArray, i12, i10);
        if (vArr != null) {
            x7.c.g(vArr, i12, this.length);
        }
        this.length = i12;
    }

    private final void v(int i10) {
        if (i10 < 0) {
            throw new OutOfMemoryError();
        }
        if (i10 > A()) {
            int iE = kotlin.collections.c.Companion.e(A(), i10);
            this.keysArray = (K[]) x7.c.e(this.keysArray, iE);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) x7.c.e(vArr, iE) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.presenceArray, iE);
            t.i(iArrCopyOf, "copyOf(...)");
            this.presenceArray = iArrCopyOf;
            int iC = Companion.c(iE);
            if (iC > C()) {
                N(iC);
            }
        }
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new i(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    private final int z(V v5) {
        int i10 = this.length;
        while (true) {
            i10--;
            if (i10 < 0) {
                return -1;
            }
            if (this.presenceArray[i10] >= 0) {
                V[] vArr = this.valuesArray;
                t.g(vArr);
                if (t.e(vArr[i10], v5)) {
                    return i10;
                }
            }
        }
    }

    public final int A() {
        return this.keysArray.length;
    }

    @NotNull
    public Set<Map.Entry<K, V>> B() {
        x7.e<K, V> eVar = this.entriesView;
        if (eVar != null) {
            return eVar;
        }
        x7.e<K, V> eVar2 = new x7.e<>(this);
        this.entriesView = eVar2;
        return eVar2;
    }

    @NotNull
    public Set<K> D() {
        x7.f<K> fVar = this.keysView;
        if (fVar != null) {
            return fVar;
        }
        x7.f<K> fVar2 = new x7.f<>(this);
        this.keysView = fVar2;
        return fVar2;
    }

    @NotNull
    public Collection<V> F() {
        g<V> gVar = this.valuesView;
        if (gVar != null) {
            return gVar;
        }
        g<V> gVar2 = new g<>(this);
        this.valuesView = gVar2;
        return gVar2;
    }

    @NotNull
    public final e<K, V> I() {
        return new e<>(this);
    }

    public final boolean O(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        t.j(entry, "entry");
        q();
        int iY = y(entry.getKey());
        if (iY < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        t.g(vArr);
        if (!t.e(vArr[iY], entry.getValue())) {
            return false;
        }
        R(iY);
        return true;
    }

    @NotNull
    public final f<K, V> U() {
        return new f<>(this);
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return obj == this || ((obj instanceof Map) && u((Map) obj));
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        t.j(from, "from");
        q();
        J(from.entrySet());
    }

    public final void q() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean s(@NotNull Collection<?> m) {
        t.j(m, "m");
        for (Object obj : m) {
            if (obj != null) {
                try {
                    if (!t((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean t(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        t.j(entry, "entry");
        int iY = y(entry.getKey());
        if (iY < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        t.g(vArr);
        return t.e(vArr[iY], entry.getValue());
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        b<K, V> bVarX = x();
        int i10 = 0;
        while (bVarX.hasNext()) {
            if (i10 > 0) {
                sb.append(", ");
            }
            bVarX.k(sb);
            i10++;
        }
        sb.append("}");
        String string = sb.toString();
        t.i(string, "toString(...)");
        return string;
    }

    @NotNull
    public final b<K, V> x() {
        return new b<>(this);
    }

    public d() {
        this(8);
    }

    private final boolean J(Collection<? extends Map.Entry<? extends K, ? extends V>> collection) {
        boolean z6 = false;
        if (collection.isEmpty()) {
            return false;
        }
        w(collection.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = collection.iterator();
        while (it.hasNext()) {
            if (K(it.next())) {
                z6 = true;
            }
        }
        return z6;
    }

    private final boolean K(Map.Entry<? extends K, ? extends V> entry) {
        int iM = m(entry.getKey());
        V[] vArrO = o();
        if (iM >= 0) {
            vArrO[iM] = entry.getValue();
            return true;
        }
        int i10 = (-iM) - 1;
        if (!t.e(entry.getValue(), vArrO[i10])) {
            vArrO[i10] = entry.getValue();
            return true;
        }
        return false;
    }

    private final void N(int i10) {
        M();
        if (this.length > size()) {
            r();
        }
        int i11 = 0;
        if (i10 == C()) {
            kotlin.collections.o.q(this.hashArray, 0, 0, C());
        } else {
            this.hashArray = new int[i10];
            this.hashShift = Companion.d(i10);
        }
        while (i11 < this.length) {
            int i12 = i11 + 1;
            if (L(i11)) {
                i11 = i12;
            } else {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
        }
    }

    private final boolean T(int i10) {
        int iA = A();
        int i11 = this.length;
        int i12 = iA - i11;
        int size = i11 - size();
        if (i12 < i10 && i12 + size >= i10 && size >= A() / 4) {
            return true;
        }
        return false;
    }

    private final boolean u(Map<?, ?> map) {
        if (size() == map.size() && s(map.entrySet())) {
            return true;
        }
        return false;
    }

    private final void w(int i10) {
        if (T(i10)) {
            N(C());
        } else {
            v(this.length + i10);
        }
    }

    private final int y(K k) {
        int iG = G(k);
        int i10 = this.maxProbeDistance;
        while (true) {
            int i11 = this.hashArray[iG];
            if (i11 == 0) {
                return -1;
            }
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (t.e(this.keysArray[i12], k)) {
                    return i12;
                }
            }
            i10--;
            if (i10 < 0) {
                return -1;
            }
            int i13 = iG - 1;
            if (iG == 0) {
                iG = C() - 1;
            } else {
                iG = i13;
            }
        }
    }

    public final int Q(K k) {
        q();
        int iY = y(k);
        if (iY < 0) {
            return -1;
        }
        R(iY);
        return iY;
    }

    public final boolean S(V v5) {
        q();
        int iZ = z(v5);
        if (iZ < 0) {
            return false;
        }
        R(iZ);
        return true;
    }

    @Override // java.util.Map
    public void clear() {
        q();
        m0 it = new j8.i(0, this.length - 1).iterator();
        while (it.hasNext()) {
            int iNextInt = it.nextInt();
            int[] iArr = this.presenceArray;
            int i10 = iArr[iNextInt];
            if (i10 >= 0) {
                this.hashArray[i10] = 0;
                iArr[iNextInt] = -1;
            }
        }
        x7.c.g(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            x7.c.g(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        M();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (y(obj) >= 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        if (z(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return B();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        int iY = y(obj);
        if (iY < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        t.g(vArr);
        return vArr[iY];
    }

    @Override // java.util.Map
    public int hashCode() {
        b<K, V> bVarX = x();
        int iL = 0;
        while (bVarX.hasNext()) {
            iL += bVarX.l();
        }
        return iL;
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
        return D();
    }

    public final int m(K k) {
        q();
        while (true) {
            int iG = G(k);
            int iJ = o.j(this.maxProbeDistance * 2, C() / 2);
            int i10 = 0;
            while (true) {
                int i11 = this.hashArray[iG];
                if (i11 <= 0) {
                    if (this.length >= A()) {
                        w(1);
                        break;
                    }
                    int i12 = this.length;
                    int i13 = i12 + 1;
                    this.length = i13;
                    this.keysArray[i12] = k;
                    this.presenceArray[i12] = iG;
                    this.hashArray[iG] = i13;
                    this.size = size() + 1;
                    M();
                    if (i10 > this.maxProbeDistance) {
                        this.maxProbeDistance = i10;
                    }
                    return i12;
                }
                if (t.e(this.keysArray[i11 - 1], k)) {
                    return -i11;
                }
                i10++;
                if (i10 > iJ) {
                    N(C() * 2);
                    break;
                }
                int i14 = iG - 1;
                if (iG == 0) {
                    iG = C() - 1;
                } else {
                    iG = i14;
                }
            }
        }
    }

    @NotNull
    public final Map<K, V> p() {
        q();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        d dVar = Empty;
        t.h(dVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return dVar;
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k, V v5) {
        q();
        int iM = m(k);
        V[] vArrO = o();
        if (iM < 0) {
            int i10 = (-iM) - 1;
            V v6 = vArrO[i10];
            vArrO[i10] = v5;
            return v6;
        }
        vArrO[iM] = v5;
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        int iQ = Q(obj);
        if (iQ < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        t.g(vArr);
        V v5 = vArr[iQ];
        x7.c.f(vArr, iQ);
        return v5;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return E();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return F();
    }

    public d(int i10) {
        this(x7.c.d(i10), null, new int[i10], new int[Companion.c(i10)], 2, 0);
    }
}

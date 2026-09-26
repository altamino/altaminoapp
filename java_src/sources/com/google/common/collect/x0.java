package com.google.common.collect;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
final class x0<K, V> extends b0<K, V> {
    private static final byte ABSENT = -1;
    private static final int BYTE_MASK = 255;
    private static final int BYTE_MAX_SIZE = 128;
    static final b0<Object, Object> EMPTY = new x0(null, new Object[0], 0);
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_MAX_SIZE = 32768;
    private static final long serialVersionUID = 0;
    final transient Object[] alternatingKeysAndValues;
    private final transient Object hashTable;
    private final transient int size;

    static class a<K, V> extends d0<Map.Entry<K, V>> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int keyOffset;
        private final transient b0<K, V> map;
        private final transient int size;

        /* JADX INFO: renamed from: com.google.common.collect.x0$a$a, reason: collision with other inner class name */
        class C0223a extends a0<Map.Entry<K, V>> {
            @Override // com.google.common.collect.y
            public boolean j() {
                return true;
            }

            C0223a() {
            }

            @Override // java.util.List
            /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> get(int i10) {
                com.google.common.base.o.i(i10, a.this.size);
                int i11 = i10 * 2;
                Object obj = a.this.alternatingKeysAndValues[a.this.keyOffset + i11];
                Objects.requireNonNull(obj);
                Object obj2 = a.this.alternatingKeysAndValues[i11 + (a.this.keyOffset ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.size;
            }
        }

        @Override // com.google.common.collect.y
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.size;
        }

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.map.get(key));
        }

        @Override // com.google.common.collect.d0
        a0<Map.Entry<K, V>> v() {
            return new C0223a();
        }

        a(b0<K, V> b0Var, Object[] objArr, int i10, int i11) {
            this.map = b0Var;
            this.alternatingKeysAndValues = objArr;
            this.keyOffset = i10;
            this.size = i11;
        }

        @Override // com.google.common.collect.y
        int d(Object[] objArr, int i10) {
            return c().d(objArr, i10);
        }

        @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: m */
        public l1<Map.Entry<K, V>> iterator() {
            return c().iterator();
        }
    }

    static final class b<K> extends d0<K> {
        private final transient a0<K> list;
        private final transient b0<K, ?> map;

        @Override // com.google.common.collect.d0, com.google.common.collect.y
        public a0<K> c() {
            return this.list;
        }

        @Override // com.google.common.collect.y
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.map.get(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }

        b(b0<K, ?> b0Var, a0<K> a0Var) {
            this.map = b0Var;
            this.list = a0Var;
        }

        @Override // com.google.common.collect.y
        int d(Object[] objArr, int i10) {
            return c().d(objArr, i10);
        }

        @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: m */
        public l1<K> iterator() {
            return c().iterator();
        }
    }

    static final class c extends a0<Object> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int offset;
        private final transient int size;

        @Override // com.google.common.collect.y
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }

        @Override // java.util.List
        public Object get(int i10) {
            com.google.common.base.o.i(i10, this.size);
            Object obj = this.alternatingKeysAndValues[(i10 * 2) + this.offset];
            Objects.requireNonNull(obj);
            return obj;
        }

        c(Object[] objArr, int i10, int i11) {
            this.alternatingKeysAndValues = objArr;
            this.offset = i10;
            this.size = i11;
        }
    }

    static Object q(Object obj, Object[] objArr, int i10, int i11, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i10 == 1) {
            Object obj3 = objArr[i11];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i11 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iB = x.b(obj2.hashCode());
            while (true) {
                int i12 = iB & length;
                int i13 = bArr[i12] & 255;
                if (i13 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i13])) {
                    return objArr[i13 ^ 1];
                }
                iB = i12 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iB2 = x.b(obj2.hashCode());
            while (true) {
                int i14 = iB2 & length2;
                int i15 = sArr[i14] & w7.i0.MAX_VALUE;
                if (i15 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i15])) {
                    return objArr[i15 ^ 1];
                }
                iB2 = i14 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iB3 = x.b(obj2.hashCode());
            while (true) {
                int i16 = iB3 & length3;
                int i17 = iArr[i16];
                if (i17 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i17])) {
                    return objArr[i17 ^ 1];
                }
                iB3 = i16 + 1;
            }
        }
    }

    @Override // com.google.common.collect.b0
    boolean k() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.size;
    }

    static <K, V> x0<K, V> o(int i10, Object[] objArr, b0.a<K, V> aVar) {
        if (i10 == 0) {
            return (x0) EMPTY;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            k.a(obj, obj2);
            return new x0<>(null, objArr, 1);
        }
        com.google.common.base.o.m(i10, objArr.length >> 1);
        Object objP = p(objArr, i10, d0.r(i10), 0);
        if (objP instanceof Object[]) {
            Object[] objArr2 = (Object[]) objP;
            b0.a.C0219a c0219a = (b0.a.C0219a) objArr2[2];
            if (aVar == null) {
                throw c0219a.a();
            }
            aVar.duplicateKey = c0219a;
            Object obj3 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, iIntValue * 2);
            objP = obj3;
            i10 = iIntValue;
        }
        return new x0<>(objP, objArr, i10);
    }

    private static Object p(Object[] objArr, int i10, int i11, int i12) {
        b0.a.C0219a c0219a = null;
        if (i10 == 1) {
            Object obj = objArr[i12];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i12 ^ 1];
            Objects.requireNonNull(obj2);
            k.a(obj, obj2);
            return null;
        }
        int i13 = i11 - 1;
        int i14 = -1;
        if (i11 <= 128) {
            byte[] bArr = new byte[i11];
            Arrays.fill(bArr, (byte) -1);
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = (i16 * 2) + i12;
                int i18 = (i15 * 2) + i12;
                Object obj3 = objArr[i17];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i17 ^ 1];
                Objects.requireNonNull(obj4);
                k.a(obj3, obj4);
                int iB = x.b(obj3.hashCode());
                while (true) {
                    int i19 = iB & i13;
                    int i20 = bArr[i19] & 255;
                    if (i20 == 255) {
                        bArr[i19] = (byte) i18;
                        if (i15 < i16) {
                            objArr[i18] = obj3;
                            objArr[i18 ^ 1] = obj4;
                        }
                        i15++;
                        break;
                    }
                    if (obj3.equals(objArr[i20])) {
                        int i21 = i20 ^ 1;
                        Object obj5 = objArr[i21];
                        Objects.requireNonNull(obj5);
                        c0219a = new b0.a.C0219a(obj3, obj4, obj5);
                        objArr[i21] = obj4;
                        break;
                    }
                    iB = i19 + 1;
                }
            }
            return i15 == i10 ? bArr : new Object[]{bArr, Integer.valueOf(i15), c0219a};
        }
        if (i11 <= 32768) {
            short[] sArr = new short[i11];
            Arrays.fill(sArr, (short) -1);
            int i22 = 0;
            for (int i23 = 0; i23 < i10; i23++) {
                int i24 = (i23 * 2) + i12;
                int i25 = (i22 * 2) + i12;
                Object obj6 = objArr[i24];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i24 ^ 1];
                Objects.requireNonNull(obj7);
                k.a(obj6, obj7);
                int iB2 = x.b(obj6.hashCode());
                while (true) {
                    int i26 = iB2 & i13;
                    int i27 = sArr[i26] & w7.i0.MAX_VALUE;
                    if (i27 == 65535) {
                        sArr[i26] = (short) i25;
                        if (i22 < i23) {
                            objArr[i25] = obj6;
                            objArr[i25 ^ 1] = obj7;
                        }
                        i22++;
                        break;
                    }
                    if (obj6.equals(objArr[i27])) {
                        int i28 = i27 ^ 1;
                        Object obj8 = objArr[i28];
                        Objects.requireNonNull(obj8);
                        c0219a = new b0.a.C0219a(obj6, obj7, obj8);
                        objArr[i28] = obj7;
                        break;
                    }
                    iB2 = i26 + 1;
                }
            }
            return i22 == i10 ? sArr : new Object[]{sArr, Integer.valueOf(i22), c0219a};
        }
        int[] iArr = new int[i11];
        Arrays.fill(iArr, -1);
        int i29 = 0;
        int i30 = 0;
        while (i29 < i10) {
            int i31 = (i29 * 2) + i12;
            int i32 = (i30 * 2) + i12;
            Object obj9 = objArr[i31];
            Objects.requireNonNull(obj9);
            Object obj10 = objArr[i31 ^ 1];
            Objects.requireNonNull(obj10);
            k.a(obj9, obj10);
            int iB3 = x.b(obj9.hashCode());
            while (true) {
                int i33 = iB3 & i13;
                int i34 = iArr[i33];
                if (i34 == i14) {
                    iArr[i33] = i32;
                    if (i30 < i29) {
                        objArr[i32] = obj9;
                        objArr[i32 ^ 1] = obj10;
                    }
                    i30++;
                    break;
                }
                if (obj9.equals(objArr[i34])) {
                    int i35 = i34 ^ 1;
                    Object obj11 = objArr[i35];
                    Objects.requireNonNull(obj11);
                    c0219a = new b0.a.C0219a(obj9, obj10, obj11);
                    objArr[i35] = obj10;
                    break;
                }
                iB3 = i33 + 1;
                i14 = -1;
            }
            i29++;
            i14 = -1;
        }
        return i30 == i10 ? iArr : new Object[]{iArr, Integer.valueOf(i30), c0219a};
    }

    @Override // com.google.common.collect.b0
    d0<Map.Entry<K, V>> g() {
        return new a(this, this.alternatingKeysAndValues, 0, this.size);
    }

    @Override // com.google.common.collect.b0, java.util.Map
    public V get(Object obj) {
        V v5 = (V) q(this.hashTable, this.alternatingKeysAndValues, this.size, 0, obj);
        if (v5 == null) {
            return null;
        }
        return v5;
    }

    @Override // com.google.common.collect.b0
    d0<K> h() {
        return new b(this, new c(this.alternatingKeysAndValues, 0, this.size));
    }

    @Override // com.google.common.collect.b0
    y<V> i() {
        return new c(this.alternatingKeysAndValues, 1, this.size);
    }

    private x0(Object obj, Object[] objArr, int i10) {
        this.hashTable = obj;
        this.alternatingKeysAndValues = objArr;
        this.size = i10;
    }
}

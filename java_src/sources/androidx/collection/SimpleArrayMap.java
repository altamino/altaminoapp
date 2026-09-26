package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes4.dex */
public class SimpleArrayMap<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean CONCURRENT_MODIFICATION_EXCEPTIONS = true;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";

    @Nullable
    static Object[] mBaseCache;
    static int mBaseCacheSize;

    @Nullable
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    public SimpleArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    private static void g(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (mTwiceBaseCacheSize < 10) {
                        objArr[0] = mTwiceBaseCache;
                        objArr[1] = iArr;
                        for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                            objArr[i11] = null;
                        }
                        mTwiceBaseCache = objArr;
                        mTwiceBaseCacheSize++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (mBaseCacheSize < 10) {
                        objArr[0] = mBaseCache;
                        objArr[1] = iArr;
                        for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        mBaseCache = objArr;
                        mBaseCacheSize++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                if (size() != simpleArrayMap.size()) {
                    return false;
                }
                for (int i10 = 0; i10 < this.mSize; i10++) {
                    K kL = l(i10);
                    V vP = p(i10);
                    Object obj2 = simpleArrayMap.get(kL);
                    if (vP == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(kL)) {
                            return false;
                        }
                    } else if (!vP.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (size() != map.size()) {
                    return false;
                }
                for (int i11 = 0; i11 < this.mSize; i11++) {
                    K kL2 = l(i11);
                    V vP2 = p(i11);
                    Object obj3 = map.get(kL2);
                    if (vP2 == null) {
                        if (obj3 != null || !map.containsKey(kL2)) {
                            return false;
                        }
                    } else if (!vP2.equals(obj3)) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
        }
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Nullable
    public V remove(Object obj) {
        int i10 = i(obj);
        if (i10 >= 0) {
            return n(i10);
        }
        return null;
    }

    @Nullable
    public V replace(K k, V v5) {
        int i10 = i(k);
        if (i10 >= 0) {
            return o(i10, v5);
        }
        return null;
    }

    public int size() {
        return this.mSize;
    }

    private void a(int i10) {
        if (i10 == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    Object[] objArr = mTwiceBaseCache;
                    if (objArr != null) {
                        this.mArray = objArr;
                        mTwiceBaseCache = (Object[]) objArr[0];
                        this.mHashes = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        mTwiceBaseCacheSize--;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (i10 == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    Object[] objArr2 = mBaseCache;
                    if (objArr2 != null) {
                        this.mArray = objArr2;
                        mBaseCache = (Object[]) objArr2[0];
                        this.mHashes = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        mBaseCacheSize--;
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.mHashes = new int[i10];
        this.mArray = new Object[i10 << 1];
    }

    public void clear() {
        int i10 = this.mSize;
        if (i10 > 0) {
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            g(iArr, objArr, i10);
        }
        if (this.mSize > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public void f(int i10) {
        int i11 = this.mSize;
        int[] iArr = this.mHashes;
        if (iArr.length < i10) {
            Object[] objArr = this.mArray;
            a(i10);
            if (this.mSize > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i11);
                System.arraycopy(objArr, 0, this.mArray, 0, i11 << 1);
            }
            g(iArr, objArr, i11);
        }
        if (this.mSize != i11) {
            throw new ConcurrentModificationException();
        }
    }

    int h(Object obj, int i10) {
        int i11 = this.mSize;
        if (i11 == 0) {
            return -1;
        }
        int iE = e(this.mHashes, i11, i10);
        if (iE < 0 || obj.equals(this.mArray[iE << 1])) {
            return iE;
        }
        int i12 = iE + 1;
        while (i12 < i11 && this.mHashes[i12] == i10) {
            if (obj.equals(this.mArray[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iE - 1; i13 >= 0 && this.mHashes[i13] == i10; i13--) {
            if (obj.equals(this.mArray[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public int hashCode() {
        int[] iArr = this.mHashes;
        Object[] objArr = this.mArray;
        int i10 = this.mSize;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public int i(@Nullable Object obj) {
        return obj == null ? j() : h(obj, obj.hashCode());
    }

    int j() {
        int i10 = this.mSize;
        if (i10 == 0) {
            return -1;
        }
        int iE = e(this.mHashes, i10, 0);
        if (iE < 0 || this.mArray[iE << 1] == null) {
            return iE;
        }
        int i11 = iE + 1;
        while (i11 < i10 && this.mHashes[i11] == 0) {
            if (this.mArray[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iE - 1; i12 >= 0 && this.mHashes[i12] == 0; i12--) {
            if (this.mArray[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    int k(Object obj) {
        int i10 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public K l(int i10) {
        return (K) this.mArray[i10 << 1];
    }

    public void m(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i10 = simpleArrayMap.mSize;
        f(this.mSize + i10);
        if (this.mSize != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(simpleArrayMap.l(i11), simpleArrayMap.p(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(simpleArrayMap.mHashes, 0, this.mHashes, 0, i10);
            System.arraycopy(simpleArrayMap.mArray, 0, this.mArray, 0, i10 << 1);
            this.mSize = i10;
        }
    }

    public V n(int i10) {
        Object[] objArr = this.mArray;
        int i11 = i10 << 1;
        V v5 = (V) objArr[i11 + 1];
        int i12 = this.mSize;
        if (i12 <= 1) {
            clear();
        } else {
            int i13 = i12 - 1;
            int[] iArr = this.mHashes;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i13) {
                    int i14 = i10 + 1;
                    int i15 = i13 - i10;
                    System.arraycopy(iArr, i14, iArr, i10, i15);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i14 << 1, objArr2, i11, i15 << 1);
                }
                Object[] objArr3 = this.mArray;
                int i16 = i13 << 1;
                objArr3[i16] = null;
                objArr3[i16 + 1] = null;
            } else {
                a(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i10);
                    System.arraycopy(objArr, 0, this.mArray, 0, i11);
                }
                if (i10 < i13) {
                    int i17 = i10 + 1;
                    int i18 = i13 - i10;
                    System.arraycopy(iArr, i17, this.mHashes, i10, i18);
                    System.arraycopy(objArr, i17 << 1, this.mArray, i11, i18 << 1);
                }
            }
            if (i12 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            this.mSize = i13;
        }
        return v5;
    }

    public V o(int i10, V v5) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.mArray;
        V v6 = (V) objArr[i11];
        objArr[i11] = v5;
        return v6;
    }

    public V p(int i10) {
        return (V) this.mArray[(i10 << 1) + 1];
    }

    @Nullable
    public V put(K k, V v5) {
        int i10;
        int iH;
        int i11 = this.mSize;
        if (k == null) {
            iH = j();
            i10 = 0;
        } else {
            int iHashCode = k.hashCode();
            i10 = iHashCode;
            iH = h(k, iHashCode);
        }
        if (iH >= 0) {
            int i12 = (iH << 1) + 1;
            Object[] objArr = this.mArray;
            V v6 = (V) objArr[i12];
            objArr[i12] = v5;
            return v6;
        }
        int i13 = ~iH;
        int[] iArr = this.mHashes;
        if (i11 >= iArr.length) {
            int i14 = 8;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i14 = 4;
            }
            Object[] objArr2 = this.mArray;
            a(i14);
            if (i11 != this.mSize) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.mArray, 0, objArr2.length);
            }
            g(iArr, objArr2, i11);
        }
        if (i13 < i11) {
            int[] iArr3 = this.mHashes;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.mArray;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.mSize - i13) << 1);
        }
        int i16 = this.mSize;
        if (i11 == i16) {
            int[] iArr4 = this.mHashes;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.mArray;
                int i17 = i13 << 1;
                objArr4[i17] = k;
                objArr4[i17 + 1] = v5;
                this.mSize = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    private static int e(int[] iArr, int i10, int i11) {
        try {
            return ContainerHelpers.a(iArr, i10, i11);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        if (i(obj) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        if (k(obj) >= 0) {
            return true;
        }
        return false;
    }

    public V getOrDefault(Object obj, V v5) {
        int i10 = i(obj);
        if (i10 >= 0) {
            return (V) this.mArray[(i10 << 1) + 1];
        }
        return v5;
    }

    @Nullable
    public V putIfAbsent(K k, V v5) {
        V v6 = get(k);
        if (v6 == null) {
            return put(k, v5);
        }
        return v6;
    }

    public boolean remove(Object obj, Object obj2) {
        int i10 = i(obj);
        if (i10 < 0) {
            return false;
        }
        V vP = p(i10);
        if (obj2 != vP && (obj2 == null || !obj2.equals(vP))) {
            return false;
        }
        n(i10);
        return true;
    }

    public boolean replace(K k, V v5, V v6) {
        int i10 = i(k);
        if (i10 < 0) {
            return false;
        }
        V vP = p(i10);
        if (vP != v5 && (v5 == null || !v5.equals(vP))) {
            return false;
        }
        o(i10, v6);
        return true;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append(b.BEGIN_OBJ);
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            K kL = l(i10);
            if (kL != this) {
                sb.append(kL);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vP = p(i10);
            if (vP != this) {
                sb.append(vP);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(b.END_OBJ);
        return sb.toString();
    }

    public SimpleArrayMap(int i10) {
        if (i10 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            a(i10);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            m(simpleArrayMap);
        }
    }
}

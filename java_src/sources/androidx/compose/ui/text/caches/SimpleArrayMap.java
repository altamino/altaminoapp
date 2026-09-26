package androidx.compose.ui.text.caches;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.collections.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class SimpleArrayMap<K, V> {
    private int _size;

    @NotNull
    private int[] hashes;

    @NotNull
    private Object[] keyValues;

    public SimpleArrayMap() {
        this(0, 1, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                int i10 = this._size;
                if (i10 != simpleArrayMap._size) {
                    return false;
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    K kH = h(i11);
                    V vK = k(i11);
                    Object objC = simpleArrayMap.c(kH);
                    if (vK == null) {
                        if (objC != null || !simpleArrayMap.a(kH)) {
                            return false;
                        }
                    } else if (!t.e(vK, objC)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this._size != ((Map) obj).size()) {
                return false;
            }
            int i12 = this._size;
            for (int i13 = 0; i13 < i12; i13++) {
                K kH2 = h(i13);
                V vK2 = k(i13);
                Object obj2 = ((Map) obj).get(kH2);
                if (vK2 == null) {
                    if (obj2 != null || !((Map) obj).containsKey(kH2)) {
                        return false;
                    }
                } else if (!t.e(vK2, obj2)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final boolean g() {
        return this._size <= 0;
    }

    public SimpleArrayMap(int i10) {
        if (i10 == 0) {
            this.hashes = ContainerHelpersKt.EMPTY_INTS;
            this.keyValues = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            this.hashes = new int[i10];
            this.keyValues = new Object[i10 << 1];
        }
        this._size = 0;
    }

    public final void b(int i10) {
        int i11 = this._size;
        int[] iArr = this.hashes;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i10);
            t.i(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.keyValues, i10 << 1);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            this.keyValues = objArrCopyOf;
        }
        if (this._size != i11) {
            throw new ConcurrentModificationException();
        }
    }

    protected final int d(@NotNull Object key, int i10) {
        t.j(key, "key");
        int i11 = this._size;
        if (i11 == 0) {
            return -1;
        }
        int iA = ContainerHelpersKt.a(this.hashes, i11, i10);
        if (iA < 0 || t.e(key, this.keyValues[iA << 1])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.hashes[i12] == i10) {
            if (t.e(key, this.keyValues[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.hashes[i13] == i10; i13--) {
            if (t.e(key, this.keyValues[i13 << 1])) {
                return i13;
            }
        }
        return ~i12;
    }

    public final int e(@Nullable Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    protected final int f() {
        int i10 = this._size;
        if (i10 == 0) {
            return -1;
        }
        int iA = ContainerHelpersKt.a(this.hashes, i10, 0);
        if (iA < 0 || this.keyValues[iA << 1] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.hashes[i11] == 0) {
            if (this.keyValues[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.hashes[i12] == 0; i12--) {
            if (this.keyValues[i12 << 1] == null) {
                return i12;
            }
        }
        return ~i11;
    }

    public final K h(int i10) {
        return (K) this.keyValues[i10 << 1];
    }

    public int hashCode() {
        int[] iArr = this.hashes;
        Object[] objArr = this.keyValues;
        int i10 = this._size;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    @Nullable
    public final V i(K k, V v5) {
        int iHashCode;
        int iD;
        int i10 = this._size;
        if (k == null) {
            iD = f();
            iHashCode = 0;
        } else {
            iHashCode = k.hashCode();
            iD = d(k, iHashCode);
        }
        if (iD >= 0) {
            int i11 = (iD << 1) + 1;
            Object[] objArr = this.keyValues;
            V v6 = (V) objArr[i11];
            objArr[i11] = v5;
            return v6;
        }
        int i12 = ~iD;
        int[] iArr = this.hashes;
        if (i10 >= iArr.length) {
            int i13 = 8;
            if (i10 >= 8) {
                i13 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i13 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
            t.i(iArrCopyOf, "copyOf(this, newSize)");
            this.hashes = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.keyValues, i13 << 1);
            t.i(objArrCopyOf, "copyOf(this, newSize)");
            this.keyValues = objArrCopyOf;
            if (i10 != this._size) {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i10) {
            int[] iArr2 = this.hashes;
            int i14 = i12 + 1;
            o.g(iArr2, iArr2, i14, i12, i10);
            Object[] objArr2 = this.keyValues;
            o.i(objArr2, objArr2, i14 << 1, i12 << 1, this._size << 1);
        }
        int i15 = this._size;
        if (i10 == i15) {
            int[] iArr3 = this.hashes;
            if (i12 < iArr3.length) {
                iArr3[i12] = iHashCode;
                Object[] objArr3 = this.keyValues;
                int i16 = i12 << 1;
                objArr3[i16] = k;
                objArr3[i16 + 1] = v5;
                this._size = i15 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final void j(@NotNull SimpleArrayMap<? extends K, ? extends V> array) {
        t.j(array, "array");
        int i10 = array._size;
        b(this._size + i10);
        if (this._size != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                i(array.h(i11), array.k(i11));
            }
        } else if (i10 > 0) {
            o.g(array.hashes, this.hashes, 0, 0, i10);
            o.i(array.keyValues, this.keyValues, 0, 0, i10 << 1);
            this._size = i10;
        }
    }

    public final V k(int i10) {
        return (V) this.keyValues[(i10 << 1) + 1];
    }

    public final boolean a(K k) {
        if (e(k) >= 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final V c(K k) {
        int iE = e(k);
        if (iE >= 0) {
            return (V) this.keyValues[(iE << 1) + 1];
        }
        return null;
    }

    @NotNull
    public String toString() {
        if (g()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this._size * 28);
        sb.append(b.BEGIN_OBJ);
        int i10 = this._size;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            K kH = h(i11);
            if (kH != this) {
                sb.append(kH);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vK = k(i11);
            if (vK != this) {
                sb.append(vK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(b.END_OBJ);
        String string = sb.toString();
        t.i(string, "buffer.toString()");
        return string;
    }

    public /* synthetic */ SimpleArrayMap(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 0 : i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(@Nullable SimpleArrayMap<K, V> simpleArrayMap) {
        this(0, 1, null);
        if (simpleArrayMap != 0) {
            j(simpleArrayMap);
        }
    }
}

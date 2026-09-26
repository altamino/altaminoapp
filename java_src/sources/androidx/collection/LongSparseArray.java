package androidx.collection;

import androidx.annotation.Nullable;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes4.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    @Nullable
    public E h(long j6) {
        return i(j6, null);
    }

    public LongSparseArray(int i10) {
        this.mGarbage = false;
        if (i10 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int iF = ContainerHelpers.f(i10);
            this.mKeys = new long[iF];
            this.mValues = new Object[iF];
        }
    }

    private void g() {
        int i10 = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != DELETED) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.mGarbage = false;
        this.mSize = i11;
    }

    public void b(long j6, E e) {
        int i10 = this.mSize;
        if (i10 != 0 && j6 <= this.mKeys[i10 - 1]) {
            m(j6, e);
            return;
        }
        if (this.mGarbage && i10 >= this.mKeys.length) {
            g();
        }
        int i11 = this.mSize;
        if (i11 >= this.mKeys.length) {
            int iF = ContainerHelpers.f(i11 + 1);
            long[] jArr = new long[iF];
            Object[] objArr = new Object[iF];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[i11] = j6;
        this.mValues[i11] = e;
        this.mSize = i11 + 1;
    }

    public void c() {
        int i10 = this.mSize;
        Object[] objArr = this.mValues;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public E i(long j6, E e) {
        E e2;
        int iB = ContainerHelpers.b(this.mKeys, this.mSize, j6);
        return (iB < 0 || (e2 = (E) this.mValues[iB]) == DELETED) ? e : e2;
    }

    public int j(long j6) {
        if (this.mGarbage) {
            g();
        }
        return ContainerHelpers.b(this.mKeys, this.mSize, j6);
    }

    public long l(int i10) {
        if (this.mGarbage) {
            g();
        }
        return this.mKeys[i10];
    }

    public void m(long j6, E e) {
        int iB = ContainerHelpers.b(this.mKeys, this.mSize, j6);
        if (iB >= 0) {
            this.mValues[iB] = e;
            return;
        }
        int i10 = ~iB;
        int i11 = this.mSize;
        if (i10 < i11) {
            Object[] objArr = this.mValues;
            if (objArr[i10] == DELETED) {
                this.mKeys[i10] = j6;
                objArr[i10] = e;
                return;
            }
        }
        if (this.mGarbage && i11 >= this.mKeys.length) {
            g();
            i10 = ~ContainerHelpers.b(this.mKeys, this.mSize, j6);
        }
        int i12 = this.mSize;
        if (i12 >= this.mKeys.length) {
            int iF = ContainerHelpers.f(i12 + 1);
            long[] jArr = new long[iF];
            Object[] objArr2 = new Object[iF];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int i13 = this.mSize;
        if (i13 - i10 != 0) {
            long[] jArr3 = this.mKeys;
            int i14 = i10 + 1;
            System.arraycopy(jArr3, i10, jArr3, i14, i13 - i10);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i10, objArr4, i14, this.mSize - i10);
        }
        this.mKeys[i10] = j6;
        this.mValues[i10] = e;
        this.mSize++;
    }

    public void n(long j6) {
        int iB = ContainerHelpers.b(this.mKeys, this.mSize, j6);
        if (iB >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[iB];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public void o(int i10) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i10];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i10] = obj2;
            this.mGarbage = true;
        }
    }

    public int p() {
        if (this.mGarbage) {
            g();
        }
        return this.mSize;
    }

    public E q(int i10) {
        if (this.mGarbage) {
            g();
        }
        return (E) this.mValues[i10];
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean f(long j6) {
        if (j(j6) >= 0) {
            return true;
        }
        return false;
    }

    public boolean k() {
        if (p() == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        if (p() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append(b.BEGIN_OBJ);
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(l(i10));
            sb.append('=');
            E eQ = q(i10);
            if (eQ != this) {
                sb.append(eQ);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(b.END_OBJ);
        return sb.toString();
    }
}

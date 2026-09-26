package androidx.collection;

import androidx.annotation.Nullable;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    @Nullable
    public E j(int i10) {
        return k(i10, null);
    }

    public SparseArrayCompat(int i10) {
        this.mGarbage = false;
        if (i10 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int iE = ContainerHelpers.e(i10);
            this.mKeys = new int[iE];
            this.mValues = new Object[iE];
        }
    }

    private void i() {
        int i10 = this.mSize;
        int[] iArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != DELETED) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.mGarbage = false;
        this.mSize = i11;
    }

    public void b(int i10, E e) {
        int i11 = this.mSize;
        if (i11 != 0 && i10 <= this.mKeys[i11 - 1]) {
            o(i10, e);
            return;
        }
        if (this.mGarbage && i11 >= this.mKeys.length) {
            i();
        }
        int i12 = this.mSize;
        if (i12 >= this.mKeys.length) {
            int iE = ContainerHelpers.e(i12 + 1);
            int[] iArr = new int[iE];
            Object[] objArr = new Object[iE];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = iArr;
            this.mValues = objArr;
        }
        this.mKeys[i12] = i10;
        this.mValues[i12] = e;
        this.mSize = i12 + 1;
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

    public E k(int i10, E e) {
        E e2;
        int iA = ContainerHelpers.a(this.mKeys, this.mSize, i10);
        return (iA < 0 || (e2 = (E) this.mValues[iA]) == DELETED) ? e : e2;
    }

    public int l(int i10) {
        if (this.mGarbage) {
            i();
        }
        return ContainerHelpers.a(this.mKeys, this.mSize, i10);
    }

    public int m(E e) {
        if (this.mGarbage) {
            i();
        }
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (this.mValues[i10] == e) {
                return i10;
            }
        }
        return -1;
    }

    public int n(int i10) {
        if (this.mGarbage) {
            i();
        }
        return this.mKeys[i10];
    }

    public void o(int i10, E e) {
        int iA = ContainerHelpers.a(this.mKeys, this.mSize, i10);
        if (iA >= 0) {
            this.mValues[iA] = e;
            return;
        }
        int i11 = ~iA;
        int i12 = this.mSize;
        if (i11 < i12) {
            Object[] objArr = this.mValues;
            if (objArr[i11] == DELETED) {
                this.mKeys[i11] = i10;
                objArr[i11] = e;
                return;
            }
        }
        if (this.mGarbage && i12 >= this.mKeys.length) {
            i();
            i11 = ~ContainerHelpers.a(this.mKeys, this.mSize, i10);
        }
        int i13 = this.mSize;
        if (i13 >= this.mKeys.length) {
            int iE = ContainerHelpers.e(i13 + 1);
            int[] iArr = new int[iE];
            Object[] objArr2 = new Object[iE];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = iArr;
            this.mValues = objArr2;
        }
        int i14 = this.mSize;
        if (i14 - i11 != 0) {
            int[] iArr3 = this.mKeys;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i11, objArr4, i15, this.mSize - i11);
        }
        this.mKeys[i11] = i10;
        this.mValues[i11] = e;
        this.mSize++;
    }

    public void p(int i10) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i10];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i10] = obj2;
            this.mGarbage = true;
        }
    }

    public int r() {
        if (this.mGarbage) {
            i();
        }
        return this.mSize;
    }

    public E s(int i10) {
        if (this.mGarbage) {
            i();
        }
        return (E) this.mValues[i10];
    }

    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public boolean f(int i10) {
        if (l(i10) >= 0) {
            return true;
        }
        return false;
    }

    public boolean g(E e) {
        if (m(e) >= 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public E q(int i10, E e) {
        int iL = l(i10);
        if (iL >= 0) {
            Object[] objArr = this.mValues;
            E e2 = (E) objArr[iL];
            objArr[iL] = e;
            return e2;
        }
        return null;
    }

    public String toString() {
        if (r() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.mSize * 28);
        sb.append(b.BEGIN_OBJ);
        for (int i10 = 0; i10 < this.mSize; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(n(i10));
            sb.append('=');
            E eS = s(i10);
            if (eS != this) {
                sb.append(eS);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append(b.END_OBJ);
        return sb.toString();
    }
}

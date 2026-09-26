package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes11.dex */
public class g {
    private static final int DEFAULT_CAPACITY = 10;
    static final f[] EMPTY_ELEMENTS = new f[0];
    private boolean copyOnWrite;
    private int elementCount;
    private f[] elements;

    public g() {
        this(10);
    }

    static f[] b(f[] fVarArr) {
        return fVarArr.length < 1 ? EMPTY_ELEMENTS : (f[]) fVarArr.clone();
    }

    private void e(int i10) {
        f[] fVarArr = new f[Math.max(this.elements.length, i10 + (i10 >> 1))];
        System.arraycopy(this.elements, 0, fVarArr, 0, this.elementCount);
        this.elements = fVarArr;
        this.copyOnWrite = false;
    }

    public void a(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        int length = this.elements.length;
        int i10 = this.elementCount + 1;
        if (this.copyOnWrite | (i10 > length)) {
            e(i10);
        }
        this.elements[this.elementCount] = fVar;
        this.elementCount = i10;
    }

    f[] c() {
        int i10 = this.elementCount;
        if (i10 == 0) {
            return EMPTY_ELEMENTS;
        }
        f[] fVarArr = new f[i10];
        System.arraycopy(this.elements, 0, fVarArr, 0, i10);
        return fVarArr;
    }

    public f d(int i10) {
        if (i10 < this.elementCount) {
            return this.elements[i10];
        }
        throw new ArrayIndexOutOfBoundsException(i10 + " >= " + this.elementCount);
    }

    public int f() {
        return this.elementCount;
    }

    f[] g() {
        int i10 = this.elementCount;
        if (i10 == 0) {
            return EMPTY_ELEMENTS;
        }
        f[] fVarArr = this.elements;
        if (fVarArr.length == i10) {
            this.copyOnWrite = true;
            return fVarArr;
        }
        f[] fVarArr2 = new f[i10];
        System.arraycopy(fVarArr, 0, fVarArr2, 0, i10);
        return fVarArr2;
    }

    public g(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("'initialCapacity' must not be negative");
        }
        this.elements = i10 == 0 ? EMPTY_ELEMENTS : new f[i10];
        this.elementCount = 0;
        this.copyOnWrite = false;
    }
}

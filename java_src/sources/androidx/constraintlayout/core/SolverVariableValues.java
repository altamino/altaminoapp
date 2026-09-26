package androidx.constraintlayout.core;

import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    private final int NONE = -1;
    private int SIZE = 16;
    private int HASH_SIZE = 16;
    int[] keys = new int[16];
    int[] nextKeys = new int[16];
    int[] variables = new int[16];
    float[] values = new float[16];
    int[] previous = new int[16];
    int[] next = new int[16];
    int mCount = 0;
    int head = -1;

    private int m() {
        for (int i10 = 0; i10 < this.SIZE; i10++) {
            if (this.variables[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    private void k(SolverVariable solverVariable, int i10) {
        int[] iArr;
        int i11 = solverVariable.id % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.nextKeys;
                int i13 = iArr[i12];
                if (i13 == -1) {
                    break;
                } else {
                    i12 = i13;
                }
            }
            iArr[i12] = i10;
        }
        this.nextKeys[i10] = -1;
    }

    private void l(int i10, SolverVariable solverVariable, float f) {
        this.variables[i10] = solverVariable.id;
        this.values[i10] = f;
        this.previous[i10] = -1;
        this.next[i10] = -1;
        solverVariable.a(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    private void n() {
        int i10 = this.SIZE * 2;
        this.variables = Arrays.copyOf(this.variables, i10);
        this.values = Arrays.copyOf(this.values, i10);
        this.previous = Arrays.copyOf(this.previous, i10);
        this.next = Arrays.copyOf(this.next, i10);
        this.nextKeys = Arrays.copyOf(this.nextKeys, i10);
        for (int i11 = this.SIZE; i11 < i10; i11++) {
            this.variables[i11] = -1;
            this.nextKeys[i11] = -1;
        }
        this.SIZE = i10;
    }

    private void q(SolverVariable solverVariable) {
        int[] iArr;
        int i10;
        int i11 = solverVariable.id;
        int i12 = i11 % this.HASH_SIZE;
        int[] iArr2 = this.keys;
        int i13 = iArr2[i12];
        if (i13 == -1) {
            return;
        }
        if (this.variables[i13] == i11) {
            int[] iArr3 = this.nextKeys;
            iArr2[i12] = iArr3[i13];
            iArr3[i13] = -1;
            return;
        }
        while (true) {
            iArr = this.nextKeys;
            i10 = iArr[i13];
            if (i10 == -1 || this.variables[i10] == i11) {
                break;
            } else {
                i13 = i10;
            }
        }
        if (i10 == -1 || this.variables[i10] != i11) {
            return;
        }
        iArr[i13] = iArr[i10];
        iArr[i10] = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable b(int i10) {
        int i11 = this.mCount;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.head;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.mCache.mIndexedVariables[this.variables[i12]];
            }
            i12 = this.next[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void c(SolverVariable solverVariable, float f) {
        float f6 = epsilon;
        if (f > (-f6) && f < f6) {
            h(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            l(0, solverVariable, f);
            k(solverVariable, 0);
            this.head = 0;
            return;
        }
        int iO = o(solverVariable);
        if (iO != -1) {
            this.values[iO] = f;
            return;
        }
        if (this.mCount + 1 >= this.SIZE) {
            n();
        }
        int i10 = this.mCount;
        int i11 = this.head;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.variables[i11];
            int i15 = solverVariable.id;
            if (i14 == i15) {
                this.values[i11] = f;
                return;
            }
            if (i14 < i15) {
                i12 = i11;
            }
            i11 = this.next[i11];
            if (i11 == -1) {
                break;
            }
        }
        p(i12, solverVariable, f);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void clear() {
        int i10 = this.mCount;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable solverVariableB = b(i11);
            if (solverVariableB != null) {
                solverVariableB.d(this.mRow);
            }
        }
        for (int i12 = 0; i12 < this.SIZE; i12++) {
            this.variables[i12] = -1;
            this.nextKeys[i12] = -1;
        }
        for (int i13 = 0; i13 < this.HASH_SIZE; i13++) {
            this.keys[i13] = -1;
        }
        this.mCount = 0;
        this.head = -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void e(float f) {
        int i10 = this.mCount;
        int i11 = this.head;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.values;
            fArr[i11] = fArr[i11] / f;
            i11 = this.next[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void f(SolverVariable solverVariable, float f, boolean z6) {
        float f6 = epsilon;
        if (f <= (-f6) || f >= f6) {
            int iO = o(solverVariable);
            if (iO == -1) {
                c(solverVariable, f);
                return;
            }
            float[] fArr = this.values;
            float f7 = fArr[iO] + f;
            fArr[iO] = f7;
            float f10 = epsilon;
            if (f7 <= (-f10) || f7 >= f10) {
                return;
            }
            fArr[iO] = 0.0f;
            h(solverVariable, z6);
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void g() {
        int i10 = this.mCount;
        int i11 = this.head;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.values;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.next[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float i(ArrayRow arrayRow, boolean z6) {
        float fD = d(arrayRow.variable);
        h(arrayRow.variable, z6);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i10 = 0;
        int i11 = 0;
        while (i10 < currentSize) {
            int i12 = solverVariableValues.variables[i11];
            if (i12 != -1) {
                f(this.mCache.mIndexedVariables[i12], solverVariableValues.values[i11] * fD, z6);
                i10++;
            }
            i11++;
        }
        return fD;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float j(int i10) {
        int i11 = this.mCount;
        int i12 = this.head;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.values[i12];
            }
            i12 = this.next[i12];
            if (i12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    public int o(SolverVariable solverVariable) {
        if (this.mCount != 0 && solverVariable != null) {
            int i10 = solverVariable.id;
            int i11 = this.keys[i10 % this.HASH_SIZE];
            if (i11 == -1) {
                return -1;
            }
            if (this.variables[i11] == i10) {
                return i11;
            }
            do {
                i11 = this.nextKeys[i11];
                if (i11 == -1) {
                    break;
                }
            } while (this.variables[i11] != i10);
            if (i11 != -1 && this.variables[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i10 = this.mCount;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable solverVariableB = b(i11);
            if (solverVariableB != null) {
                String str2 = str + solverVariableB + " = " + j(i11) + " ";
                int iO = o(solverVariableB);
                String str3 = str2 + "[p: ";
                String str4 = (this.previous[iO] != -1 ? str3 + this.mCache.mIndexedVariables[this.variables[this.previous[iO]]] : str3 + "none") + ", n: ";
                str = (this.next[iO] != -1 ? str4 + this.mCache.mIndexedVariables[this.variables[this.next[iO]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }

    SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    private void p(int i10, SolverVariable solverVariable, float f) {
        int iM = m();
        l(iM, solverVariable, f);
        if (i10 != -1) {
            this.previous[iM] = i10;
            int[] iArr = this.next;
            iArr[iM] = iArr[i10];
            iArr[i10] = iM;
        } else {
            this.previous[iM] = -1;
            if (this.mCount > 0) {
                this.next[iM] = this.head;
                this.head = iM;
            } else {
                this.next[iM] = -1;
            }
        }
        int i11 = this.next[iM];
        if (i11 != -1) {
            this.previous[i11] = iM;
        }
        k(solverVariable, iM);
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean a(SolverVariable solverVariable) {
        if (o(solverVariable) != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float d(SolverVariable solverVariable) {
        int iO = o(solverVariable);
        if (iO != -1) {
            return this.values[iO];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float h(SolverVariable solverVariable, boolean z6) {
        int iO = o(solverVariable);
        if (iO == -1) {
            return 0.0f;
        }
        q(solverVariable);
        float f = this.values[iO];
        if (this.head == iO) {
            this.head = this.next[iO];
        }
        this.variables[iO] = -1;
        int[] iArr = this.previous;
        int i10 = iArr[iO];
        if (i10 != -1) {
            int[] iArr2 = this.next;
            iArr2[i10] = iArr2[iO];
        }
        int i11 = this.next[iO];
        if (i11 != -1) {
            iArr[i11] = iArr[iO];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z6) {
            solverVariable.d(this.mRow);
        }
        return f;
    }
}

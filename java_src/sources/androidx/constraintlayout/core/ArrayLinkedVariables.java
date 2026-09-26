package androidx.constraintlayout.core;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    static final int NONE = -1;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[8];
    private int[] mArrayNextIndices = new int[8];
    private float[] mArrayValues = new float[8];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void c(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            h(solverVariable, true);
            return;
        }
        int i10 = this.mHead;
        if (i10 == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f;
            this.mArrayIndices[0] = solverVariable.id;
            this.mArrayNextIndices[0] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.a(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int i11 = this.mLast + 1;
            this.mLast = i11;
            int[] iArr = this.mArrayIndices;
            if (i11 >= iArr.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.currentSize; i13++) {
            int i14 = this.mArrayIndices[i10];
            int i15 = solverVariable.id;
            if (i14 == i15) {
                this.mArrayValues[i10] = f;
                return;
            }
            if (i14 < i15) {
                i12 = i10;
            }
            i10 = this.mArrayNextIndices[i10];
        }
        int length = this.mLast;
        int i16 = length + 1;
        if (this.mDidFillOnce) {
            int[] iArr2 = this.mArrayIndices;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i16;
        }
        int[] iArr3 = this.mArrayIndices;
        if (length >= iArr3.length && this.currentSize < iArr3.length) {
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.mArrayIndices;
                if (i17 >= iArr4.length) {
                    break;
                }
                if (iArr4[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr5 = this.mArrayIndices;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i18 = this.ROW_SIZE * 2;
            this.ROW_SIZE = i18;
            this.mDidFillOnce = false;
            this.mLast = length - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, i18);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[length] = solverVariable.id;
        this.mArrayValues[length] = f;
        if (i12 != -1) {
            int[] iArr6 = this.mArrayNextIndices;
            iArr6[length] = iArr6[i12];
            iArr6[i12] = length;
        } else {
            this.mArrayNextIndices[length] = this.mHead;
            this.mHead = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.a(this.mRow);
        int i19 = this.currentSize + 1;
        this.currentSize = i19;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        int[] iArr7 = this.mArrayIndices;
        if (i19 >= iArr7.length) {
            this.mDidFillOnce = true;
        }
        if (this.mLast >= iArr7.length) {
            this.mDidFillOnce = true;
            this.mLast = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.currentSize;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean a(SolverVariable solverVariable) {
        int i10 = this.mHead;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            if (this.mArrayIndices[i10] == solverVariable.id) {
                return true;
            }
            i10 = this.mArrayNextIndices[i10];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable b(int i10) {
        int i11 = this.mHead;
        for (int i12 = 0; i11 != -1 && i12 < this.currentSize; i12++) {
            if (i12 == i10) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i11]];
            }
            i11 = this.mArrayNextIndices[i11];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i10]];
            if (solverVariable != null) {
                solverVariable.d(this.mRow);
            }
            i10 = this.mArrayNextIndices[i10];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float d(SolverVariable solverVariable) {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            if (this.mArrayIndices[i10] == solverVariable.id) {
                return this.mArrayValues[i10];
            }
            i10 = this.mArrayNextIndices[i10];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void e(float f) {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            float[] fArr = this.mArrayValues;
            fArr[i10] = fArr[i10] / f;
            i10 = this.mArrayNextIndices[i10];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void f(SolverVariable solverVariable, float f, boolean z6) {
        float f6 = epsilon;
        if (f <= (-f6) || f >= f6) {
            int i10 = this.mHead;
            if (i10 == -1) {
                this.mHead = 0;
                this.mArrayValues[0] = f;
                this.mArrayIndices[0] = solverVariable.id;
                this.mArrayNextIndices[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.a(this.mRow);
                this.currentSize++;
                if (this.mDidFillOnce) {
                    return;
                }
                int i11 = this.mLast + 1;
                this.mLast = i11;
                int[] iArr = this.mArrayIndices;
                if (i11 >= iArr.length) {
                    this.mDidFillOnce = true;
                    this.mLast = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.currentSize; i13++) {
                int i14 = this.mArrayIndices[i10];
                int i15 = solverVariable.id;
                if (i14 == i15) {
                    float[] fArr = this.mArrayValues;
                    float f7 = fArr[i10] + f;
                    float f10 = epsilon;
                    if (f7 > (-f10) && f7 < f10) {
                        f7 = 0.0f;
                    }
                    fArr[i10] = f7;
                    if (f7 == 0.0f) {
                        if (i10 == this.mHead) {
                            this.mHead = this.mArrayNextIndices[i10];
                        } else {
                            int[] iArr2 = this.mArrayNextIndices;
                            iArr2[i12] = iArr2[i10];
                        }
                        if (z6) {
                            solverVariable.d(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i10;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                if (i14 < i15) {
                    i12 = i10;
                }
                i10 = this.mArrayNextIndices[i10];
            }
            int length = this.mLast;
            int i16 = length + 1;
            if (this.mDidFillOnce) {
                int[] iArr3 = this.mArrayIndices;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i16;
            }
            int[] iArr4 = this.mArrayIndices;
            if (length >= iArr4.length && this.currentSize < iArr4.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr5 = this.mArrayIndices;
                    if (i17 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr6 = this.mArrayIndices;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i18 = this.ROW_SIZE * 2;
                this.ROW_SIZE = i18;
                this.mDidFillOnce = false;
                this.mLast = length - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, i18);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[length] = solverVariable.id;
            this.mArrayValues[length] = f;
            if (i12 != -1) {
                int[] iArr7 = this.mArrayNextIndices;
                iArr7[length] = iArr7[i12];
                iArr7[i12] = length;
            } else {
                this.mArrayNextIndices[length] = this.mHead;
                this.mHead = length;
            }
            solverVariable.usageInRowCount++;
            solverVariable.a(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            int i19 = this.mLast;
            int[] iArr8 = this.mArrayIndices;
            if (i19 >= iArr8.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void g() {
        int i10 = this.mHead;
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            float[] fArr = this.mArrayValues;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.mArrayNextIndices[i10];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float h(SolverVariable solverVariable, boolean z6) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        int i10 = this.mHead;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.currentSize) {
            if (this.mArrayIndices[i10] == solverVariable.id) {
                if (i10 == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i10];
                } else {
                    int[] iArr = this.mArrayNextIndices;
                    iArr[i12] = iArr[i10];
                }
                if (z6) {
                    solverVariable.d(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i10] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i10;
                }
                return this.mArrayValues[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.mArrayNextIndices[i10];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float i(ArrayRow arrayRow, boolean z6) {
        float fD = d(arrayRow.variable);
        h(arrayRow.variable, z6);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = arrayRowVariables.b(i10);
            f(solverVariableB, arrayRowVariables.d(solverVariableB) * fD, z6);
        }
        return fD;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float j(int i10) {
        int i11 = this.mHead;
        for (int i12 = 0; i11 != -1 && i12 < this.currentSize; i12++) {
            if (i12 == i10) {
                return this.mArrayValues[i11];
            }
            i11 = this.mArrayNextIndices[i11];
        }
        return 0.0f;
    }

    public String toString() {
        int i10 = this.mHead;
        String str = "";
        for (int i11 = 0; i10 != -1 && i11 < this.currentSize; i11++) {
            str = ((str + " -> ") + this.mArrayValues[i10] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[i10]];
            i10 = this.mArrayNextIndices[i10];
        }
        return str;
    }

    ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }
}

package androidx.constraintlayout.core;

import com.google.firebase.crashlytics.internal.common.b0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    public interface ArrayRowVariables {
        boolean a(SolverVariable solverVariable);

        SolverVariable b(int i10);

        void c(SolverVariable solverVariable, float f);

        void clear();

        float d(SolverVariable solverVariable);

        void e(float f);

        void f(SolverVariable solverVariable, float f, boolean z6);

        void g();

        int getCurrentSize();

        float h(SolverVariable solverVariable, boolean z6);

        float i(ArrayRow arrayRow, boolean z6);

        float j(int i10);
    }

    public ArrayRow() {
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable a(LinearSystem linearSystem, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    public ArrayRow l(float f, float f6, float f7, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f6 == 0.0f || f == f7) {
            this.variables.c(solverVariable, 1.0f);
            this.variables.c(solverVariable2, -1.0f);
            this.variables.c(solverVariable4, 1.0f);
            this.variables.c(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.c(solverVariable, 1.0f);
            this.variables.c(solverVariable2, -1.0f);
        } else if (f7 == 0.0f) {
            this.variables.c(solverVariable3, 1.0f);
            this.variables.c(solverVariable4, -1.0f);
        } else {
            float f10 = (f / f6) / (f7 / f6);
            this.variables.c(solverVariable, 1.0f);
            this.variables.c(solverVariable2, -1.0f);
            this.variables.c(solverVariable4, f10);
            this.variables.c(solverVariable3, -f10);
        }
        return this;
    }

    public SolverVariable v(SolverVariable solverVariable) {
        return w(null, solverVariable);
    }

    public void y() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    private boolean u(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable w(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float fJ = this.variables.j(i10);
            if (fJ < 0.0f) {
                SolverVariable solverVariableB = this.variables.b(i10);
                if ((zArr == null || !zArr[solverVariableB.id]) && solverVariableB != solverVariable && (((type = solverVariableB.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && fJ < f)) {
                    f = fJ;
                    solverVariable2 = solverVariableB;
                }
            }
        }
        return solverVariable2;
    }

    public void A(LinearSystem linearSystem, SolverVariable solverVariable, boolean z6) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        this.constantValue += solverVariable.computedValue * this.variables.d(solverVariable);
        this.variables.h(solverVariable, z6);
        if (z6) {
            solverVariable.d(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void B(LinearSystem linearSystem, ArrayRow arrayRow, boolean z6) {
        this.constantValue += arrayRow.constantValue * this.variables.i(arrayRow, z6);
        if (z6) {
            arrayRow.variable.d(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void C(LinearSystem linearSystem, SolverVariable solverVariable, boolean z6) {
        if (solverVariable == null || !solverVariable.isSynonym) {
            return;
        }
        float fD = this.variables.d(solverVariable);
        this.constantValue += solverVariable.synonymDelta * fD;
        this.variables.h(solverVariable, z6);
        if (z6) {
            solverVariable.d(this);
        }
        this.variables.f(linearSystem.mCache.mIndexedVariables[solverVariable.synonym], fD, z6);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void D(LinearSystem linearSystem) {
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z6 = false;
        while (!z6) {
            int currentSize = this.variables.getCurrentSize();
            for (int i10 = 0; i10 < currentSize; i10++) {
                SolverVariable solverVariableB = this.variables.b(i10);
                if (solverVariableB.definitionId != -1 || solverVariableB.isFinalValue || solverVariableB.isSynonym) {
                    this.variablesToUpdate.add(solverVariableB);
                }
            }
            int size = this.variablesToUpdate.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    SolverVariable solverVariable = this.variablesToUpdate.get(i11);
                    if (solverVariable.isFinalValue) {
                        A(linearSystem, solverVariable, true);
                    } else if (solverVariable.isSynonym) {
                        C(linearSystem, solverVariable, true);
                    } else {
                        B(linearSystem, linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
            } else {
                z6 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void b(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i10 = 0; i10 < arrayRow.variables.getCurrentSize(); i10++) {
                this.variables.f(arrayRow.variables.b(i10), arrayRow.variables.j(i10), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void c(SolverVariable solverVariable) {
        int i10 = solverVariable.strength;
        float f = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f = 1000.0f;
            } else if (i10 == 3) {
                f = 1000000.0f;
            } else if (i10 == 4) {
                f = 1.0E9f;
            } else if (i10 == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.c(solverVariable, f);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    public ArrayRow d(LinearSystem linearSystem, int i10) {
        this.variables.c(linearSystem.o(i10, "ep"), 1.0f);
        this.variables.c(linearSystem.o(i10, "em"), -1.0f);
        return this;
    }

    ArrayRow e(SolverVariable solverVariable, int i10) {
        this.variables.c(solverVariable, i10);
        return this;
    }

    SolverVariable g(LinearSystem linearSystem) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f = 0.0f;
        float f6 = 0.0f;
        boolean z6 = false;
        boolean z10 = false;
        SolverVariable solverVariable2 = null;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float fJ = this.variables.j(i10);
            SolverVariable solverVariableB = this.variables.b(i10);
            if (solverVariableB.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f > fJ) {
                    boolean zU = u(solverVariableB, linearSystem);
                    z6 = zU;
                    f = fJ;
                    solverVariable = solverVariableB;
                } else if (!z6 && u(solverVariableB, linearSystem)) {
                    f = fJ;
                    solverVariable = solverVariableB;
                    z6 = true;
                }
            } else if (solverVariable == null && fJ < 0.0f) {
                if (solverVariable2 == null || f6 > fJ) {
                    boolean zU2 = u(solverVariableB, linearSystem);
                    z10 = zU2;
                    f6 = fJ;
                    solverVariable2 = solverVariableB;
                } else if (!z10 && u(solverVariableB, linearSystem)) {
                    f6 = fJ;
                    solverVariable2 = solverVariableB;
                    z10 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    ArrayRow h(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11) {
        if (solverVariable2 == solverVariable3) {
            this.variables.c(solverVariable, 1.0f);
            this.variables.c(solverVariable4, 1.0f);
            this.variables.c(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.variables.c(solverVariable, 1.0f);
            this.variables.c(solverVariable2, -1.0f);
            this.variables.c(solverVariable3, -1.0f);
            this.variables.c(solverVariable4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.constantValue = (-i10) + i11;
            }
        } else if (f <= 0.0f) {
            this.variables.c(solverVariable, -1.0f);
            this.variables.c(solverVariable2, 1.0f);
            this.constantValue = i10;
        } else if (f >= 1.0f) {
            this.variables.c(solverVariable4, -1.0f);
            this.variables.c(solverVariable3, 1.0f);
            this.constantValue = -i11;
        } else {
            float f6 = 1.0f - f;
            this.variables.c(solverVariable, f6 * 1.0f);
            this.variables.c(solverVariable2, f6 * (-1.0f));
            this.variables.c(solverVariable3, (-1.0f) * f);
            this.variables.c(solverVariable4, 1.0f * f);
            if (i10 > 0 || i11 > 0) {
                this.constantValue = ((-i10) * f6) + (i11 * f);
            }
        }
        return this;
    }

    ArrayRow i(SolverVariable solverVariable, int i10) {
        this.variable = solverVariable;
        float f = i10;
        solverVariable.computedValue = f;
        this.constantValue = f;
        this.isSimpleDefinition = true;
        return this;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    ArrayRow j(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.c(solverVariable, -1.0f);
        this.variables.c(solverVariable2, f);
        return this;
    }

    public ArrayRow k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.c(solverVariable, -1.0f);
        this.variables.c(solverVariable2, 1.0f);
        this.variables.c(solverVariable3, f);
        this.variables.c(solverVariable4, -f);
        return this;
    }

    public ArrayRow m(SolverVariable solverVariable, int i10) {
        if (i10 < 0) {
            this.constantValue = i10 * (-1);
            this.variables.c(solverVariable, 1.0f);
        } else {
            this.constantValue = i10;
            this.variables.c(solverVariable, -1.0f);
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    public ArrayRow n(SolverVariable solverVariable, SolverVariable solverVariable2, int i10) {
        boolean z6;
        if (i10 == 0) {
            this.variables.c(solverVariable, -1.0f);
            this.variables.c(solverVariable2, 1.0f);
        } else {
            if (i10 < 0) {
                i10 *= -1;
                z6 = true;
            } else {
                z6 = false;
            }
            this.constantValue = i10;
            if (z6) {
                this.variables.c(solverVariable, 1.0f);
                this.variables.c(solverVariable2, -1.0f);
            } else {
                this.variables.c(solverVariable, -1.0f);
                this.variables.c(solverVariable2, 1.0f);
            }
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    public ArrayRow o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z6;
        if (i10 == 0) {
            this.variables.c(solverVariable, -1.0f);
            this.variables.c(solverVariable2, 1.0f);
            this.variables.c(solverVariable3, 1.0f);
        } else {
            if (i10 < 0) {
                i10 *= -1;
                z6 = true;
            } else {
                z6 = false;
            }
            this.constantValue = i10;
            if (z6) {
                this.variables.c(solverVariable, 1.0f);
                this.variables.c(solverVariable2, -1.0f);
                this.variables.c(solverVariable3, -1.0f);
            } else {
                this.variables.c(solverVariable, -1.0f);
                this.variables.c(solverVariable2, 1.0f);
                this.variables.c(solverVariable3, 1.0f);
            }
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    public ArrayRow p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z6;
        if (i10 == 0) {
            this.variables.c(solverVariable, -1.0f);
            this.variables.c(solverVariable2, 1.0f);
            this.variables.c(solverVariable3, -1.0f);
        } else {
            if (i10 < 0) {
                i10 *= -1;
                z6 = true;
            } else {
                z6 = false;
            }
            this.constantValue = i10;
            if (z6) {
                this.variables.c(solverVariable, 1.0f);
                this.variables.c(solverVariable2, -1.0f);
                this.variables.c(solverVariable3, 1.0f);
            } else {
                this.variables.c(solverVariable, -1.0f);
                this.variables.c(solverVariable2, 1.0f);
                this.variables.c(solverVariable3, -1.0f);
            }
        }
        return this;
    }

    public ArrayRow q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.c(solverVariable3, 0.5f);
        this.variables.c(solverVariable4, 0.5f);
        this.variables.c(solverVariable, -0.5f);
        this.variables.c(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    void r() {
        float f = this.constantValue;
        if (f < 0.0f) {
            this.constantValue = f * (-1.0f);
            this.variables.g();
        }
    }

    boolean s() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    boolean t(SolverVariable solverVariable) {
        return this.variables.a(solverVariable);
    }

    void x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.c(solverVariable2, -1.0f);
            this.variable.definitionId = -1;
            this.variable = null;
        }
        float fH = this.variables.h(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (fH == 1.0f) {
            return;
        }
        this.constantValue /= fH;
        this.variables.e(fH);
    }

    String z() {
        boolean z6;
        String str = (this.variable == null ? "0" : "" + this.variable) + " = ";
        if (this.constantValue != 0.0f) {
            str = str + this.constantValue;
            z6 = true;
        } else {
            z6 = false;
        }
        int currentSize = this.variables.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = this.variables.b(i10);
            if (solverVariableB != null) {
                float fJ = this.variables.j(i10);
                if (fJ != 0.0f) {
                    String string = solverVariableB.toString();
                    if (z6) {
                        if (fJ > 0.0f) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            fJ *= -1.0f;
                        }
                    } else if (fJ < 0.0f) {
                        str = str + "- ";
                        fJ *= -1.0f;
                    }
                    str = fJ == 1.0f ? str + string : str + fJ + " " + string;
                    z6 = true;
                }
            }
        }
        if (z6) {
            return str;
        }
        return str + b0.DEFAULT_VERSION_NAME;
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    boolean f(LinearSystem linearSystem) {
        boolean z6;
        SolverVariable solverVariableG = g(linearSystem);
        if (solverVariableG == null) {
            z6 = true;
        } else {
            x(solverVariableG);
            z6 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z6;
    }

    public String toString() {
        return z();
    }
}

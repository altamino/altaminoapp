package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes9.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    static final int NOT_FOUND = -1;
    private static final float epsilon = 1.0E-4f;
    private int TABLE_SIZE;
    GoalVariableAccessor accessor;
    private SolverVariable[] arrayGoals;
    Cache mCache;
    private int numGoals;
    private SolverVariable[] sortArray;

    class GoalVariableAccessor {
        PriorityGoalRow row;
        SolverVariable variable;

        public void b(SolverVariable solverVariable) {
            this.variable = solverVariable;
        }

        public GoalVariableAccessor(PriorityGoalRow priorityGoalRow) {
            this.row = priorityGoalRow;
        }

        public boolean a(SolverVariable solverVariable, float f) {
            boolean z6 = true;
            if (!this.variable.inGoal) {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f6 = solverVariable.goalStrengthVector[i10];
                    if (f6 != 0.0f) {
                        float f7 = f6 * f;
                        if (Math.abs(f7) < 1.0E-4f) {
                            f7 = 0.0f;
                        }
                        this.variable.goalStrengthVector[i10] = f7;
                    } else {
                        this.variable.goalStrengthVector[i10] = 0.0f;
                    }
                }
                return true;
            }
            for (int i11 = 0; i11 < 9; i11++) {
                float[] fArr = this.variable.goalStrengthVector;
                float f10 = fArr[i11] + (solverVariable.goalStrengthVector[i11] * f);
                fArr[i11] = f10;
                if (Math.abs(f10) < 1.0E-4f) {
                    this.variable.goalStrengthVector[i11] = 0.0f;
                } else {
                    z6 = false;
                }
            }
            if (z6) {
                PriorityGoalRow.this.G(this.variable);
            }
            return false;
        }

        public final boolean c() {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f = this.variable.goalStrengthVector[i10];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(SolverVariable solverVariable) {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f = solverVariable.goalStrengthVector[i10];
                float f6 = this.variable.goalStrengthVector[i10];
                if (f6 != f) {
                    if (f6 < f) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.variable.goalStrengthVector, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.variable != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    str = str + this.variable.goalStrengthVector[i10] + " ";
                }
            }
            return str + "] " + this.variable;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(SolverVariable solverVariable) {
        int i10 = 0;
        while (i10 < this.numGoals) {
            if (this.arrayGoals[i10] == solverVariable) {
                while (true) {
                    int i11 = this.numGoals;
                    if (i10 >= i11 - 1) {
                        this.numGoals = i11 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.arrayGoals;
                        int i12 = i10 + 1;
                        solverVariableArr[i10] = solverVariableArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable a(LinearSystem linearSystem, boolean[] zArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.numGoals; i11++) {
            SolverVariable solverVariable = this.arrayGoals[i11];
            if (!zArr[solverVariable.id]) {
                this.accessor.b(solverVariable);
                if (i10 == -1) {
                    if (this.accessor.c()) {
                        i10 = i11;
                    }
                } else if (this.accessor.d(this.arrayGoals[i10])) {
                    i10 = i11;
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        return this.arrayGoals[i10];
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.numGoals = 0;
        this.constantValue = 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.numGoals == 0;
    }

    private final void F(SolverVariable solverVariable) {
        int i10;
        int i11 = this.numGoals + 1;
        SolverVariable[] solverVariableArr = this.arrayGoals;
        if (i11 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.arrayGoals = solverVariableArr2;
            this.sortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.arrayGoals;
        int i12 = this.numGoals;
        solverVariableArr3[i12] = solverVariable;
        int i13 = i12 + 1;
        this.numGoals = i13;
        if (i13 > 1 && solverVariableArr3[i12].id > solverVariable.id) {
            int i14 = 0;
            while (true) {
                i10 = this.numGoals;
                if (i14 >= i10) {
                    break;
                }
                this.sortArray[i14] = this.arrayGoals[i14];
                i14++;
            }
            Arrays.sort(this.sortArray, 0, i10, new Comparator<SolverVariable>() { // from class: androidx.constraintlayout.core.PriorityGoalRow.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.id - solverVariable3.id;
                }
            });
            for (int i15 = 0; i15 < this.numGoals; i15++) {
                this.arrayGoals[i15] = this.sortArray[i15];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.a(this);
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public void B(LinearSystem linearSystem, ArrayRow arrayRow, boolean z6) {
        SolverVariable solverVariable = arrayRow.variable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = arrayRowVariables.b(i10);
            float fJ = arrayRowVariables.j(i10);
            this.accessor.b(solverVariableB);
            if (this.accessor.a(solverVariable, fJ)) {
                F(solverVariableB);
            }
            this.constantValue += arrayRow.constantValue * fJ;
        }
        G(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem.Row
    public void c(SolverVariable solverVariable) {
        this.accessor.b(solverVariable);
        this.accessor.e();
        solverVariable.goalStrengthVector[solverVariable.strength] = 1.0f;
        F(solverVariable);
    }

    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String str = " goal -> (" + this.constantValue + ") : ";
        for (int i10 = 0; i10 < this.numGoals; i10++) {
            this.accessor.b(this.arrayGoals[i10]);
            str = str + this.accessor + " ";
        }
        return str;
    }

    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.TABLE_SIZE = 128;
        this.arrayGoals = new SolverVariable[128];
        this.sortArray = new SolverVariable[128];
        this.numGoals = 0;
        this.accessor = new GoalVariableAccessor(this);
        this.mCache = cache;
    }
}

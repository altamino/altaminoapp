package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    private static int POOL_SIZE = 1000;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;
    public static Metrics sMetrics;
    final Cache mCache;
    private Row mGoal;
    ArrayRow[] mRows;
    private Row mTempGoal;
    public boolean hasSimpleDefinition = false;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;

    interface Row {
        SolverVariable a(LinearSystem linearSystem, boolean[] zArr);

        void b(Row row);

        void c(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    private void n() {
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow arrayRow = this.mRows[i10];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static Metrics x() {
        return sMetrics;
    }

    public void E() {
        Cache cache;
        int i10 = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (i10 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i10];
            if (solverVariable != null) {
                solverVariable.e();
            }
            i10++;
        }
        cache.solverVariablePool.c(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i11 = 0; i11 < this.mNumRows; i11++) {
            ArrayRow arrayRow = this.mRows[i11];
            if (arrayRow != null) {
                arrayRow.used = false;
            }
        }
        D();
        this.mNumRows = 0;
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(this.mCache);
        } else {
            this.mTempGoal = new ArrayRow(this.mCache);
        }
    }

    public void c(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11, int i12) {
        ArrayRow arrayRowR = r();
        arrayRowR.h(solverVariable, solverVariable2, i10, f, solverVariable3, solverVariable4, i11);
        if (i12 != 8) {
            arrayRowR.d(this, i12);
        }
        d(arrayRowR);
    }

    void m(ArrayRow arrayRow, int i10, int i11) {
        arrayRow.e(o(i11, null), i10);
    }

    public SolverVariable q(Object obj) {
        SolverVariable solverVariableI = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            z();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariableI = constraintAnchor.i();
            if (solverVariableI == null) {
                constraintAnchor.s(this.mCache);
                solverVariableI = constraintAnchor.i();
            }
            int i10 = solverVariableI.id;
            if (i10 == -1 || i10 > this.mVariablesID || this.mCache.mIndexedVariables[i10] == null) {
                if (i10 != -1) {
                    solverVariableI.e();
                }
                int i11 = this.mVariablesID + 1;
                this.mVariablesID = i11;
                this.mNumColumns++;
                solverVariableI.id = i11;
                solverVariableI.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[i11] = solverVariableI;
            }
        }
        return solverVariableI;
    }

    public void v(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache w() {
        return this.mCache;
    }

    private final int C(Row row, boolean z6) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i10 = 0; i10 < this.mNumColumns; i10++) {
            this.mAlreadyTestedCandidates[i10] = false;
        }
        boolean z10 = false;
        int i11 = 0;
        while (!z10) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i11++;
            if (i11 >= this.mNumColumns * 2) {
                return i11;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().id] = true;
            }
            SolverVariable solverVariableA = row.a(this, this.mAlreadyTestedCandidates);
            if (solverVariableA != null) {
                boolean[] zArr = this.mAlreadyTestedCandidates;
                int i12 = solverVariableA.id;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (solverVariableA != null) {
                float f = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.mNumRows; i14++) {
                    ArrayRow arrayRow = this.mRows[i14];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.t(solverVariableA)) {
                        float fD = arrayRow.variables.d(solverVariableA);
                        if (fD < 0.0f) {
                            float f6 = (-arrayRow.constantValue) / fD;
                            if (f6 < f) {
                                i13 = i14;
                                f = f6;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i13];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.x(solverVariableA);
                    SolverVariable solverVariable = arrayRow2.variable;
                    solverVariable.definitionId = i13;
                    solverVariable.i(this, arrayRow2);
                }
            } else {
                z10 = true;
            }
        }
        return i11;
    }

    private void D() {
        int i10 = 0;
        if (OPTIMIZED_ENGINE) {
            while (i10 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[i10];
                if (arrayRow != null) {
                    this.mCache.optimizedArrayRowPool.b(arrayRow);
                }
                this.mRows[i10] = null;
                i10++;
            }
            return;
        }
        while (i10 < this.mNumRows) {
            ArrayRow arrayRow2 = this.mRows[i10];
            if (arrayRow2 != null) {
                this.mCache.arrayRowPool.b(arrayRow2);
            }
            this.mRows[i10] = null;
            i10++;
        }
    }

    private SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable solverVariableA = this.mCache.solverVariablePool.a();
        if (solverVariableA == null) {
            solverVariableA = new SolverVariable(type, str);
            solverVariableA.h(type, str);
        } else {
            solverVariableA.e();
            solverVariableA.h(type, str);
        }
        int i10 = this.mPoolVariablesCount;
        int i11 = POOL_SIZE;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            POOL_SIZE = i12;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, i12);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i13 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i13 + 1;
        solverVariableArr[i13] = solverVariableA;
        return solverVariableA;
    }

    private final void l(ArrayRow arrayRow) {
        int i10;
        if (SIMPLIFY_SYNONYMS && arrayRow.isSimpleDefinition) {
            arrayRow.variable.f(this, arrayRow.constantValue);
        } else {
            ArrayRow[] arrayRowArr = this.mRows;
            int i11 = this.mNumRows;
            arrayRowArr[i11] = arrayRow;
            SolverVariable solverVariable = arrayRow.variable;
            solverVariable.definitionId = i11;
            this.mNumRows = i11 + 1;
            solverVariable.i(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i12 = 0;
            while (i12 < this.mNumRows) {
                if (this.mRows[i12] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.mRows[i12];
                if (arrayRow2 != null && arrayRow2.isSimpleDefinition) {
                    arrayRow2.variable.f(this, arrayRow2.constantValue);
                    if (OPTIMIZED_ENGINE) {
                        this.mCache.optimizedArrayRowPool.b(arrayRow2);
                    } else {
                        this.mCache.arrayRowPool.b(arrayRow2);
                    }
                    this.mRows[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.mNumRows;
                        if (i13 >= i10) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.mRows;
                        int i15 = i13 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[i13];
                        arrayRowArr2[i15] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.variable;
                        if (solverVariable2.definitionId == i13) {
                            solverVariable2.definitionId = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.mRows[i14] = null;
                    }
                    this.mNumRows = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    private int u(Row row) throws Exception {
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow arrayRow = this.mRows[i10];
            if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && arrayRow.constantValue < 0.0f) {
                boolean z6 = false;
                int i11 = 0;
                while (!z6) {
                    Metrics metrics = sMetrics;
                    if (metrics != null) {
                        metrics.bfs++;
                    }
                    i11++;
                    float f = Float.MAX_VALUE;
                    int i12 = 0;
                    int i13 = -1;
                    int i14 = -1;
                    int i15 = 0;
                    while (true) {
                        if (i12 >= this.mNumRows) {
                            break;
                        }
                        ArrayRow arrayRow2 = this.mRows[i12];
                        if (arrayRow2.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow2.isSimpleDefinition && arrayRow2.constantValue < 0.0f) {
                            int i16 = 9;
                            if (SKIP_COLUMNS) {
                                int currentSize = arrayRow2.variables.getCurrentSize();
                                int i17 = 0;
                                while (i17 < currentSize) {
                                    SolverVariable solverVariableB = arrayRow2.variables.b(i17);
                                    float fD = arrayRow2.variables.d(solverVariableB);
                                    if (fD > 0.0f) {
                                        int i18 = 0;
                                        while (i18 < i16) {
                                            float f6 = solverVariableB.strengthVector[i18] / fD;
                                            if ((f6 < f && i18 == i15) || i18 > i15) {
                                                i15 = i18;
                                                i14 = solverVariableB.id;
                                                i13 = i12;
                                                f = f6;
                                            }
                                            i18++;
                                            i16 = 9;
                                        }
                                    }
                                    i17++;
                                    i16 = 9;
                                }
                            } else {
                                for (int i19 = 1; i19 < this.mNumColumns; i19++) {
                                    SolverVariable solverVariable = this.mCache.mIndexedVariables[i19];
                                    float fD2 = arrayRow2.variables.d(solverVariable);
                                    if (fD2 > 0.0f) {
                                        for (int i20 = 0; i20 < 9; i20++) {
                                            float f7 = solverVariable.strengthVector[i20] / fD2;
                                            if ((f7 < f && i20 == i15) || i20 > i15) {
                                                i15 = i20;
                                                i13 = i12;
                                                i14 = i19;
                                                f = f7;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i12++;
                    }
                    if (i13 != -1) {
                        ArrayRow arrayRow3 = this.mRows[i13];
                        arrayRow3.variable.definitionId = -1;
                        Metrics metrics2 = sMetrics;
                        if (metrics2 != null) {
                            metrics2.pivots++;
                        }
                        arrayRow3.x(this.mCache.mIndexedVariables[i14]);
                        SolverVariable solverVariable2 = arrayRow3.variable;
                        solverVariable2.definitionId = i13;
                        solverVariable2.i(this, arrayRow3);
                    } else {
                        z6 = true;
                    }
                    if (i11 > this.mNumColumns / 2) {
                        z6 = true;
                    }
                }
                return i11;
            }
        }
        return 0;
    }

    private void z() {
        int i10 = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = i10;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, i10);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int i11 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[i11];
        this.mMaxColumns = i11;
        this.mMaxRows = i11;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i11);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    public void A() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.mGoal.isEmpty()) {
            n();
            return;
        }
        if (!this.graphOptimizer && !this.newgraphOptimizer) {
            B(this.mGoal);
            return;
        }
        Metrics metrics2 = sMetrics;
        if (metrics2 != null) {
            metrics2.graphOptimizer++;
        }
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            if (!this.mRows[i10].isSimpleDefinition) {
                B(this.mGoal);
                return;
            }
        }
        Metrics metrics3 = sMetrics;
        if (metrics3 != null) {
            metrics3.fullySolved++;
        }
        n();
    }

    void B(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        u(row);
        C(row, false);
        n();
    }

    public void b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i10) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableQ = q(constraintWidget.q(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableQ2 = q(constraintWidget.q(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableQ3 = q(constraintWidget.q(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableQ4 = q(constraintWidget.q(type4));
        SolverVariable solverVariableQ5 = q(constraintWidget2.q(type));
        SolverVariable solverVariableQ6 = q(constraintWidget2.q(type2));
        SolverVariable solverVariableQ7 = q(constraintWidget2.q(type3));
        SolverVariable solverVariableQ8 = q(constraintWidget2.q(type4));
        ArrayRow arrayRowR = r();
        double d = f;
        double d2 = i10;
        arrayRowR.q(solverVariableQ2, solverVariableQ4, solverVariableQ6, solverVariableQ8, (float) (Math.sin(d) * d2));
        d(arrayRowR);
        ArrayRow arrayRowR2 = r();
        arrayRowR2.q(solverVariableQ, solverVariableQ3, solverVariableQ5, solverVariableQ7, (float) (Math.cos(d) * d2));
        d(arrayRowR2);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0097  */
    public void d(ArrayRow arrayRow) {
        SolverVariable solverVariableV;
        if (arrayRow == null) {
            return;
        }
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.constraints++;
            if (arrayRow.isSimpleDefinition) {
                metrics.simpleconstraints++;
            }
        }
        boolean z6 = true;
        if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
            z();
        }
        if (!arrayRow.isSimpleDefinition) {
            arrayRow.D(this);
            if (arrayRow.isEmpty()) {
                return;
            }
            arrayRow.r();
            if (arrayRow.f(this)) {
                SolverVariable solverVariableP = p();
                arrayRow.variable = solverVariableP;
                int i10 = this.mNumRows;
                l(arrayRow);
                if (this.mNumRows == i10 + 1) {
                    this.mTempGoal.b(arrayRow);
                    C(this.mTempGoal, true);
                    if (solverVariableP.definitionId == -1) {
                        if (arrayRow.variable == solverVariableP && (solverVariableV = arrayRow.v(solverVariableP)) != null) {
                            Metrics metrics2 = sMetrics;
                            if (metrics2 != null) {
                                metrics2.pivots++;
                            }
                            arrayRow.x(solverVariableV);
                        }
                        if (!arrayRow.isSimpleDefinition) {
                            arrayRow.variable.i(this, arrayRow);
                        }
                        if (OPTIMIZED_ENGINE) {
                            this.mCache.optimizedArrayRowPool.b(arrayRow);
                        } else {
                            this.mCache.arrayRowPool.b(arrayRow);
                        }
                        this.mNumRows--;
                    }
                } else {
                    z6 = false;
                }
            } else {
                z6 = false;
            }
            if (!arrayRow.s() || z6) {
                return;
            }
        }
        l(arrayRow);
    }

    public ArrayRow e(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        if (USE_BASIC_SYNONYMS && i11 == 8 && solverVariable2.isFinalValue && solverVariable.definitionId == -1) {
            solverVariable.f(this, solverVariable2.computedValue + i10);
            return null;
        }
        ArrayRow arrayRowR = r();
        arrayRowR.n(solverVariable, solverVariable2, i10);
        if (i11 != 8) {
            arrayRowR.d(this, i11);
        }
        d(arrayRowR);
        return arrayRowR;
    }

    public void f(SolverVariable solverVariable, int i10) {
        if (USE_BASIC_SYNONYMS && solverVariable.definitionId == -1) {
            float f = i10;
            solverVariable.f(this, f);
            for (int i11 = 0; i11 < this.mVariablesID + 1; i11++) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[i11];
                if (solverVariable2 != null && solverVariable2.isSynonym && solverVariable2.synonym == solverVariable.id) {
                    solverVariable2.f(this, solverVariable2.synonymDelta + f);
                }
            }
            return;
        }
        int i12 = solverVariable.definitionId;
        if (i12 == -1) {
            ArrayRow arrayRowR = r();
            arrayRowR.i(solverVariable, i10);
            d(arrayRowR);
            return;
        }
        ArrayRow arrayRow = this.mRows[i12];
        if (arrayRow.isSimpleDefinition) {
            arrayRow.constantValue = i10;
            return;
        }
        if (arrayRow.variables.getCurrentSize() == 0) {
            arrayRow.isSimpleDefinition = true;
            arrayRow.constantValue = i10;
        } else {
            ArrayRow arrayRowR2 = r();
            arrayRowR2.m(solverVariable, i10);
            d(arrayRowR2);
        }
    }

    public SolverVariable o(int i10, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        int i11 = this.mVariablesID + 1;
        this.mVariablesID = i11;
        this.mNumColumns++;
        solverVariableA.id = i11;
        solverVariableA.strength = i10;
        this.mCache.mIndexedVariables[i11] = solverVariableA;
        this.mGoal.c(solverVariableA);
        return solverVariableA;
    }

    public SolverVariable p() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i10 = this.mVariablesID + 1;
        this.mVariablesID = i10;
        this.mNumColumns++;
        solverVariableA.id = i10;
        this.mCache.mIndexedVariables[i10] = solverVariableA;
        return solverVariableA;
    }

    public ArrayRow r() {
        ArrayRow arrayRowA;
        if (OPTIMIZED_ENGINE) {
            arrayRowA = this.mCache.optimizedArrayRowPool.a();
            if (arrayRowA == null) {
                arrayRowA = new ValuesRow(this.mCache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                arrayRowA.y();
            }
        } else {
            arrayRowA = this.mCache.arrayRowPool.a();
            if (arrayRowA == null) {
                arrayRowA = new ArrayRow(this.mCache);
                ARRAY_ROW_CREATION++;
            } else {
                arrayRowA.y();
            }
        }
        SolverVariable.c();
        return arrayRowA;
    }

    public SolverVariable t() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i10 = this.mVariablesID + 1;
        this.mVariablesID = i10;
        this.mNumColumns++;
        solverVariableA.id = i10;
        this.mCache.mIndexedVariables[i10] = solverVariableA;
        return solverVariableA;
    }

    public int y(Object obj) {
        SolverVariable solverVariableI = ((ConstraintAnchor) obj).i();
        if (solverVariableI != null) {
            return (int) (solverVariableI.computedValue + 0.5f);
        }
        return 0;
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        D();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(cache);
        } else {
            this.mTempGoal = new ArrayRow(cache);
        }
    }

    public static ArrayRow s(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        return linearSystem.r().j(solverVariable, solverVariable2, f);
    }

    public void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, boolean z6) {
        ArrayRow arrayRowR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.strength = 0;
        arrayRowR.o(solverVariable, solverVariable2, solverVariableT, i10);
        d(arrayRowR);
    }

    public void h(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        ArrayRow arrayRowR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.strength = 0;
        arrayRowR.o(solverVariable, solverVariable2, solverVariableT, i10);
        if (i11 != 8) {
            m(arrayRowR, (int) (arrayRowR.variables.d(solverVariableT) * (-1.0f)), i11);
        }
        d(arrayRowR);
    }

    public void i(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, boolean z6) {
        ArrayRow arrayRowR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.strength = 0;
        arrayRowR.p(solverVariable, solverVariable2, solverVariableT, i10);
        d(arrayRowR);
    }

    public void j(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        ArrayRow arrayRowR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.strength = 0;
        arrayRowR.p(solverVariable, solverVariable2, solverVariableT, i10);
        if (i11 != 8) {
            m(arrayRowR, (int) (arrayRowR.variables.d(solverVariableT) * (-1.0f)), i11);
        }
        d(arrayRowR);
    }

    public void k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i10) {
        ArrayRow arrayRowR = r();
        arrayRowR.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i10 != 8) {
            arrayRowR.d(this, i10);
        }
        d(arrayRowR);
    }
}
